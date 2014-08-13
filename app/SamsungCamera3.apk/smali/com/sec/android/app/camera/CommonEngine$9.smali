.class Lcom/sec/android/app/camera/CommonEngine$9;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSyncThread()V
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
    .line 6804
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x2f

    const/16 v9, 0x1a

    const/4 v8, 0x3

    const-wide/16 v6, 0x400

    const/4 v5, 0x0

    .line 6806
    const-string v2, "Recording Stop Thread"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6807
    const-string v2, "CommonEngine"

    const-string v3, "Stopping VideoRecording..."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6809
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$4100(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 6810
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 6811
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onUhdSavingProgress(I)V

    .line 6813
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6814
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6815
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6818
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_3

    .line 6819
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6820
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 6821
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6822
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->stopAnimatedPhoto()V

    .line 6825
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onUhdSavingProgress(I)V

    .line 6828
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/Camera;->switchAudioChannelDirection(I)V

    .line 6833
    :cond_3
    const-wide/16 v2, 0x400

    :try_start_0
    const-string v4, "Recording Stop"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6834
    const-string v2, "CommonEngine"

    const-string v3, "before  mMediaRecorder.stop..."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6835
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 6836
    const-string v2, "CommonEngine"

    const-string v3, "after  mMediaRecorder.stop..."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6837
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 6839
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_4

    .line 6840
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6866
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6867
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->makeVideoFileSlow()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$4400(Lcom/sec/android/app/camera/CommonEngine;)V

    .line 6870
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$4500(Lcom/sec/android/app/camera/CommonEngine;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_6

    .line 6871
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->renameTempFile()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$4600(Lcom/sec/android/app/camera/CommonEngine;)V

    .line 6873
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_7

    .line 6874
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onUhdSavingProgress(I)V

    .line 6875
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 6878
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$4000(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->access$4702(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 6880
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/CommonEngine;->access$4102(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 6881
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 6884
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6885
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>VIDEO_RECORDED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/camera/CommonEngine;->access$4700(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " </GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6887
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 6888
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onUhdSavingProgress(I)V

    .line 6890
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->registerVideo()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$4800(Lcom/sec/android/app/camera/CommonEngine;)V

    .line 6894
    :cond_a
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 6895
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onUhdSavingProgress(I)V

    .line 6896
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->access$4002(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 6898
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->removeHideFocusRectMessage()V

    .line 6900
    # getter for: Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z
    invoke-static {}, Lcom/sec/android/app/camera/CommonEngine;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6901
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_c

    .line 6902
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 6909
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_d

    .line 6910
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 6911
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    .line 6914
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v10, :cond_18

    .line 6915
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "Camera_recordingDual"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 6921
    :cond_d
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6923
    .local v1, "ioBusyUnVoteIntent":Landroid/content/Intent;
    const-string v2, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6924
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_e

    .line 6925
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6927
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6928
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6930
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getSystemSoundEffect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6931
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->enableSystemSoundEffect()V

    .line 6934
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_12

    .line 6935
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v2, v2, Lcom/sec/android/app/camera/Camera;->mIsReocrdingStoppedForcely:Z

    if-nez v2, :cond_10

    .line 6936
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleCamcorderRecordingStopSound()V

    .line 6937
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSwitchToCameraPreview()V

    .line 6939
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 6940
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 6942
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v10, :cond_10

    .line 6943
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->startDualRecordingMode()V

    .line 6945
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_11

    .line 6946
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onUhdSavingProgress(I)V

    .line 6948
    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v9, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6949
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v8, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6951
    :cond_12
    # setter for: Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/CommonEngine;->access$4302(Z)Z

    .line 6952
    sput-boolean v5, Lcom/sec/android/app/camera/CommonEngine;->m_bRecordingHDR:Z

    .line 6953
    const-string v2, "CommonEngine"

    const-string v3, "Stopping VideoRecording is completed!"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6955
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_13

    .line 6956
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->setPreviewTransparent(Z)V

    .line 6959
    :cond_13
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 6960
    .end local v1    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 6841
    :catch_0
    move-exception v0

    .line 6842
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6843
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/CommonEngine;->access$4102(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 6844
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 6845
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_14

    .line 6846
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onUhdSavingProgress(I)V

    .line 6848
    :cond_14
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->cleanupTempFile()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$4200(Lcom/sec/android/app/camera/CommonEngine;)V

    .line 6849
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->access$4002(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 6850
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->closeVideoFileDescriptor()V

    .line 6852
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_16

    .line 6853
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 6854
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6855
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isRecordingMenuTop()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 6856
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 6859
    :cond_15
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v9, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6860
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v8, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6862
    :cond_16
    # setter for: Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/CommonEngine;->access$4302(Z)Z

    goto/16 :goto_2

    .line 6891
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_17
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$4100(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6892
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/CommonEngine;->access$4102(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    goto/16 :goto_0

    .line 6917
    :cond_18
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "Camera_recording"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method
