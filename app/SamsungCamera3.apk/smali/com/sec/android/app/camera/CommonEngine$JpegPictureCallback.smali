.class final Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field private mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 4486
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4487
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 6
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4494
    const-wide/16 v0, 0x1000

    const-string v2, "TakePicture Wait Callback"

    invoke-static {v0, v1, v2, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 4495
    const-string v0, "CommonEngine"

    const-string v1, "JpegPictureCallback.onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-TakePicture**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4502
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2000(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    # invokes: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    invoke-static {v0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$2100(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 4526
    :cond_0
    :goto_0
    return-void

    .line 4506
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 4507
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoShotLowLight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4508
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 4509
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setAutoShotNight(Z)V

    .line 4510
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 4513
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isDualCaptureModeAsyncFirstCapturing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4514
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 4515
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onDualCaptureModeAsyncInit()V

    .line 4518
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getTouchtoCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4519
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Camera;->setTouchtoCaptureStarted(Z)V

    .line 4522
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2000(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setLocation(Landroid/location/Location;)V

    .line 4523
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2000(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    .line 4524
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 4525
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 4490
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 4491
    return-void
.end method
