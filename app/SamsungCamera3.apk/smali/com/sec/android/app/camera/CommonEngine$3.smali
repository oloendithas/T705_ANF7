.class Lcom/sec/android/app/camera/CommonEngine$3;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x400

    .line 1615
    const-string v3, "StartPreviewThread"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1616
    const-string v3, "StartPreviewThread"

    invoke-static {v9, v3}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 1617
    const-string v3, "StartPreviewThread"

    invoke-static {v3}, Lcom/arm/streamline/StreamlineAnnotate;->marker(Ljava/lang/String;)V

    .line 1619
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartPreview**StartU["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const-string v3, "CommonEngine"

    const-string v4, "starting preview..."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :try_start_0
    const-string v3, "CommonEngine"

    const-string v4, "mCameraDevice.startPreview()"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    const-wide/16 v3, 0x400

    const-string v5, "StartPreview"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1625
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V

    .line 1626
    const-wide/16 v3, 0x400

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1628
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1643
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v3

    if-ne v3, v10, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1644
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->startFaceDetection()V
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$1500(Lcom/sec/android/app/camera/CommonEngine;)V

    .line 1656
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1657
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManager()V

    .line 1660
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    int-to-float v2, v3

    .line 1661
    .local v2, "width":F
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    int-to-float v1, v3

    .line 1662
    .local v1, "height":F
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/SecCameraEffectLib;->setSize(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1676
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1679
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->setmDNIeUIMode(I)V

    .line 1681
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->updateOutdoorVisibility()V

    .line 1683
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/Camera;->mIsTransitionRestore:Z

    if-nez v3, :cond_3

    .line 1684
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->restoreTransitionAnimation()V

    .line 1690
    :cond_3
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartPreview**EndU["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total-CameraPreviewLoading**EndU["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total-Shot2Shot**EndU["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const-string v3, "VerificationLog"

    const-string v4, "Executed"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1697
    invoke-static {v9}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    .line 1698
    .end local v1    # "height":F
    .end local v2    # "width":F
    :goto_1
    return-void

    .line 1628
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 1632
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->startFaceDetectionSW()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "CommonEngine"

    const-string v4, "startFaceDetection failed. It seems to be started already."

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1668
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1672
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1673
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$3;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
