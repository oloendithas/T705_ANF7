.class Landroid/webkitsec/ZoomManager$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field private mAccumulatedSpan:F

.field final synthetic this$0:Landroid/webkitsec/ZoomManager;


# direct methods
.method private constructor <init>(Landroid/webkitsec/ZoomManager;)V
    .registers 2

    .prologue
    .line 1210
    iput-object p1, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/ZoomManager;Landroid/webkitsec/ZoomManager$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p2, "x1"    # Landroid/webkitsec/ZoomManager$1;

    .prologue
    .line 1210
    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkitsec/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 11
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1302
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    iget-object v4, v4, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    if-eqz v4, :cond_39

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1303
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    iget-object v4, v4, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    invoke-interface {v4, p1, v5}, Landroid/webkitsec/PinchZoomListener;->handleScale(Landroid/view/ScaleGestureDetector;F)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1304
    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_38

    .line 1305
    const-string v2, "ZoomManager"

    const-string v4, "handleScale mWebView.mPinchZoomListener.handleScale FALSE"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_38
    :goto_38
    return v3

    .line 1312
    :cond_39
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v4

    if-eqz v4, :cond_188

    .line 1313
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/TiltListener;->getCurrTilt()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x430c0000

    div-float/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    add-float v1, v4, v5

    .line 1314
    .local v1, "scale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    const/high16 v5, 0x3f800000

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f7cac083126e979L

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_82

    .line 1316
    const-string/jumbo v4, "tilt"

    const-string/jumbo v5, "setTiltUse(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkitsec/TiltListener;->setTiltUse(Z)V

    .line 1323
    :cond_82
    :goto_82
    const-string/jumbo v4, "tilt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detector.getTiltUse() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mActualScale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const-string/jumbo v4, "tilt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  detector.getCurrTilt() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/TiltListener;->getCurrTilt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  detector.getScaleFactor() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/MouseWheelListener;->getCurrDockZoom()F

    move-result v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_111

    .line 1328
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/MouseWheelListener;->getCurrDockZoom()F

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    mul-float v1, v4, v5

    .line 1332
    :cond_111
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkitsec/ZoomManager;->isScaleOverLimits(F)Z

    move-result v4

    if-nez v4, :cond_123

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_196

    :cond_123
    move v0, v3

    .line 1336
    .local v0, "isScaleLimited":Z
    :goto_124
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v5}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1338
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1600(Landroid/webkitsec/ZoomManager;)Z

    move-result v4

    if-nez v4, :cond_144

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkitsec/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v4

    if-eqz v4, :cond_253

    .line 1339
    :cond_144
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # setter for: Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v4, v3}, Landroid/webkitsec/ZoomManager;->access$1602(Landroid/webkitsec/ZoomManager;Z)Z

    .line 1341
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_198

    .line 1342
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    const/high16 v5, 0x3fa00000

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1346
    :goto_160
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result v1

    .line 1357
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    # getter for: Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F
    invoke-static {}, Landroid/webkitsec/ZoomManager;->access$1700()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1a7

    .line 1358
    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_185

    .line 1359
    const-string v2, "ZoomManager"

    const-string v3, "handleScale return isScaleLimited !! Changed scale is too small"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_185
    move v3, v0

    .line 1360
    goto/16 :goto_38

    .line 1321
    .end local v0    # "isScaleLimited":Z
    .end local v1    # "scale":F
    :cond_188
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    mul-float v1, v4, v5

    .restart local v1    # "scale":F
    goto/16 :goto_82

    :cond_196
    move v0, v2

    .line 1332
    goto :goto_124

    .line 1344
    .restart local v0    # "isScaleLimited":Z
    :cond_198
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_160

    .line 1362
    :cond_1a7
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/MouseWheelListener;->getCurrDockZoom()F

    move-result v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_23d

    .line 1363
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/webkitsec/ZoomManager;->setZoomCenter(FF)V

    .line 1364
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/MouseWheelListener;->initCurrDockZoom()V

    .line 1369
    :goto_1dd
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v1, v2}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    .line 1370
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkitsec/WebViewClassic;->setZoomScaleBegin(Z)V

    .line 1372
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4}, Landroid/webkitsec/ZoomManager;->getHandleMoveEvForZooming()Z

    move-result v4

    if-nez v4, :cond_1ff

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v4

    if-eqz v4, :cond_24b

    .line 1373
    :cond_1ff
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 1374
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4, v2}, Landroid/webkitsec/ZoomManager;->setHandleMoveEvForZooming(Z)V

    .line 1379
    :goto_20d
    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_38

    .line 1380
    const-string v2, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleScale return TRUE!! mFocusX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocusY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 1367
    :cond_23d
    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/webkitsec/ZoomManager;->setZoomCenter(FF)V

    goto :goto_1dd

    .line 1377
    :cond_24b
    const-string v2, "ZoomManager"

    const-string v4, "Invalidate is not called because previous invalidate is not handled"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20d

    .line 1383
    :cond_253
    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_26f

    .line 1384
    const-string v2, "ZoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScale return isScaleLimited = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26f
    move v3, v0

    .line 1385
    goto/16 :goto_38
.end method

.method public isPanningOnly(Landroid/view/ScaleGestureDetector;)Z
    .registers 14
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1262
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1000(Landroid/webkitsec/ZoomManager;)F

    move-result v4

    .line 1263
    .local v4, "prevFocusX":F
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1100(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    .line 1264
    .local v5, "prevFocusY":F
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v9

    # setter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v8, v9}, Landroid/webkitsec/ZoomManager;->access$1002(Landroid/webkitsec/ZoomManager;F)F

    .line 1265
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v9

    # setter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v8, v9}, Landroid/webkitsec/ZoomManager;->access$1102(Landroid/webkitsec/ZoomManager;F)F

    .line 1266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1270
    .local v0, "currentTime":J
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1200(Landroid/webkitsec/ZoomManager;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_39

    .line 1271
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    # setter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v8, v9, v10}, Landroid/webkitsec/ZoomManager;->access$1202(Landroid/webkitsec/ZoomManager;J)J

    .line 1273
    :cond_39
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1200(Landroid/webkitsec/ZoomManager;)J

    move-result-wide v8

    const-wide/16 v10, 0x32

    add-long/2addr v8, v10

    cmp-long v8, v0, v8

    if-ltz v8, :cond_52

    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v8

    if-eqz v8, :cond_79

    .line 1275
    :cond_52
    sget-boolean v7, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v7, :cond_78

    .line 1276
    const-string v7, "ZoomManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPanningOnly just return because of PANNING_BLOCKING_TIME / Tilt Use = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v9}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_78
    :goto_78
    return v6

    .line 1282
    :cond_79
    cmpl-float v8, v4, v7

    if-nez v8, :cond_cf

    cmpl-float v8, v5, v7

    if-nez v8, :cond_cf

    move v3, v7

    .line 1285
    .local v3, "focusDelta":F
    :goto_82
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    move-result-object v8

    # invokes: Landroid/webkitsec/ZoomManager$FocusMovementQueue;->add(F)V
    invoke-static {v8, v3}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->access$1300(Landroid/webkitsec/ZoomManager$FocusMovementQueue;F)V

    .line 1286
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float v2, v8, v9

    .line 1288
    .local v2, "deltaSpan":F
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    move-result-object v8

    # invokes: Landroid/webkitsec/ZoomManager$FocusMovementQueue;->getSum()F
    invoke-static {v8}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->access$1400(Landroid/webkitsec/ZoomManager$FocusMovementQueue;)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_ab

    const/4 v6, 0x1

    .line 1289
    .local v6, "result":Z
    :cond_ab
    if-eqz v6, :cond_f3

    .line 1290
    iget v7, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float/2addr v7, v2

    iput v7, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 1294
    :goto_b2
    sget-boolean v7, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v7, :cond_78

    .line 1295
    const-string v7, "ZoomManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPanningOnly result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 1282
    .end local v2    # "deltaSpan":F
    .end local v3    # "focusDelta":F
    .end local v6    # "result":Z
    :cond_cf
    iget-object v8, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v8}, Landroid/webkitsec/ZoomManager;->access$1000(Landroid/webkitsec/ZoomManager;)F

    move-result v8

    sub-float/2addr v8, v4

    iget-object v9, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v9}, Landroid/webkitsec/ZoomManager;->access$1000(Landroid/webkitsec/ZoomManager;)F

    move-result v9

    sub-float/2addr v9, v4

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v9}, Landroid/webkitsec/ZoomManager;->access$1100(Landroid/webkitsec/ZoomManager;)F

    move-result v9

    sub-float/2addr v9, v5

    iget-object v10, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v10}, Landroid/webkitsec/ZoomManager;->access$1100(Landroid/webkitsec/ZoomManager;)F

    move-result v10

    sub-float/2addr v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    goto :goto_82

    .line 1292
    .restart local v2    # "deltaSpan":F
    .restart local v3    # "focusDelta":F
    .restart local v6    # "result":Z
    :cond_f3
    iput v7, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    goto :goto_b2
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1389
    invoke-virtual {p0, p1}, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->isPanningOnly(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->handleScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1390
    :cond_c
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    move-result-object v0

    # invokes: Landroid/webkitsec/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->access$900(Landroid/webkitsec/ZoomManager$FocusMovementQueue;)V

    .line 1391
    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_21

    .line 1392
    const-string v0, "ZoomManager"

    const-string/jumbo v1, "onScale return TRUE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_21
    const/4 v0, 0x1

    .line 1398
    :goto_22
    return v0

    .line 1396
    :cond_23
    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_2f

    .line 1397
    const-string v0, "ZoomManager"

    const-string/jumbo v1, "onScale return FALSE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_2f
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v4, 0x1

    .line 1216
    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_d

    .line 1217
    const-string v0, "ZoomManager"

    const-string/jumbo v1, "onScaleBegin enter!! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_d
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1220
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMinZoomScale:F
    invoke-static {v1}, Landroid/webkitsec/ZoomManager;->access$300(Landroid/webkitsec/ZoomManager;)F

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$400(Landroid/webkitsec/ZoomManager;)F

    move-result v2

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/webkitsec/PinchZoomListener;->onScaleBegin(FFF)Z

    .line 1234
    :cond_40
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    const/4 v1, 0x0

    # setter for: Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z
    invoke-static {v0, v1}, Landroid/webkitsec/ZoomManager;->access$602(Landroid/webkitsec/ZoomManager;Z)Z

    .line 1235
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # setter for: Landroid/webkitsec/ZoomManager;->mIsZooming:Z
    invoke-static {v0, v4}, Landroid/webkitsec/ZoomManager;->access$702(Landroid/webkitsec/ZoomManager;Z)Z

    .line 1236
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->dismissZoomPicker()V

    .line 1237
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    move-result-object v0

    # invokes: Landroid/webkitsec/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->access$900(Landroid/webkitsec/ZoomManager$FocusMovementQueue;)V

    .line 1238
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    # setter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v0, v1}, Landroid/webkitsec/ZoomManager;->access$1002(Landroid/webkitsec/ZoomManager;F)F

    .line 1239
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    # setter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v0, v1}, Landroid/webkitsec/ZoomManager;->access$1102(Landroid/webkitsec/ZoomManager;F)F

    .line 1240
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkitsec/WebViewClassic;->setZoomScaleBegin(Z)V

    .line 1241
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v0}, Landroid/webkitsec/ViewManager;->startZoom()V

    .line 1242
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->onPinchToZoomAnimationStart()V

    .line 1243
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 1247
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    const-wide/16 v1, 0x0

    # setter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v0, v1, v2}, Landroid/webkitsec/ZoomManager;->access$1202(Landroid/webkitsec/ZoomManager;J)J

    .line 1254
    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_d3

    .line 1255
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScaleBegin end!! mFocusX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusX:F
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$1000(Landroid/webkitsec/ZoomManager;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFocusY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mFocusY:F
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$1100(Landroid/webkitsec/ZoomManager;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ScaleFactor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_d3
    return v4
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 11
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1404
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v3

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    if-eqz v3, :cond_23

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v3

    if-nez v3, :cond_23

    .line 1405
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v3

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    invoke-interface {v3, p1}, Landroid/webkitsec/PinchZoomListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 1408
    :cond_23
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$1600(Landroid/webkitsec/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 1409
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # setter for: Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3, v1}, Landroid/webkitsec/ZoomManager;->access$1602(Landroid/webkitsec/ZoomManager;Z)Z

    .line 1410
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mZoomCenterX:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$1900(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v4

    # setter for: Landroid/webkitsec/ZoomManager;->mAnchorX:I
    invoke-static {v3, v4}, Landroid/webkitsec/ZoomManager;->access$1802(Landroid/webkitsec/ZoomManager;I)I

    .line 1411
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mZoomCenterY:F
    invoke-static {v5}, Landroid/webkitsec/ZoomManager;->access$2100(Landroid/webkitsec/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v6}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v4

    # setter for: Landroid/webkitsec/ZoomManager;->mAnchorY:I
    invoke-static {v3, v4}, Landroid/webkitsec/ZoomManager;->access$2002(Landroid/webkitsec/ZoomManager;I)I

    .line 1414
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    iget-object v7, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTextWrapScale:F
    invoke-static {v7}, Landroid/webkitsec/ZoomManager;->access$2200(Landroid/webkitsec/ZoomManager;)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_a0

    :cond_92
    move v0, v2

    .line 1418
    .local v0, "reflowNow":Z
    :goto_93
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v3}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-nez v3, :cond_a2

    .line 1437
    .end local v0    # "reflowNow":Z
    :cond_9f
    :goto_9f
    return-void

    :cond_a0
    move v0, v1

    .line 1414
    goto :goto_93

    .line 1420
    .restart local v0    # "reflowNow":Z
    :cond_a2
    iget-object v3, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    if-eqz v0, :cond_f8

    iget-object v4, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v4}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_f8

    :goto_b6
    invoke-virtual {v3, v2}, Landroid/webkitsec/ZoomManager;->refreshZoomScale(Z)V

    .line 1424
    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 1427
    .end local v0    # "reflowNow":Z
    :cond_c2
    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v2}, Landroid/webkitsec/ViewManager;->endZoom()V

    .line 1428
    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkitsec/WebViewClassic;->onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V

    .line 1430
    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->unregisterTiltListener()V

    .line 1431
    iget-object v2, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;
    invoke-static {v2}, Landroid/webkitsec/ZoomManager;->access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkitsec/TiltListener;->setTiltUse(Z)V

    .line 1433
    iget-object v1, p0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkitsec/ZoomManager;

    const-wide/16 v2, 0x0

    # setter for: Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v1, v2, v3}, Landroid/webkitsec/ZoomManager;->access$1202(Landroid/webkitsec/ZoomManager;J)J

    .line 1435
    sget-boolean v1, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_9f

    .line 1436
    const-string v1, "ZoomManager"

    const-string/jumbo v2, "onScaleEnd !!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .restart local v0    # "reflowNow":Z
    :cond_f8
    move v2, v1

    .line 1420
    goto :goto_b6
.end method
