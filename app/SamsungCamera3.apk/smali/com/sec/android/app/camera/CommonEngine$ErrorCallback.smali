.class public final Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# static fields
.field private static final CAMERA_ERROR_MSG_NO_ERROR:I = 0x0

.field private static final CAMERA_ERROR_WRONG_FW:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x6

    .line 759
    sget-boolean v0, Lcom/sec/android/app/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 760
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCallback.onError ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->closeCamera()V

    .line 821
    :cond_0
    :goto_1
    return-void

    .line 762
    :cond_1
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCallback.onError ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    sparse-switch p1, :sswitch_data_0

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    goto :goto_1

    .line 777
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    goto :goto_1

    .line 781
    :sswitch_1
    const-string v0, "CommonEngine"

    const-string v1, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 784
    :sswitch_2
    const-string v0, "CommonEngine"

    const-string v1, "!!!Camera retry!!! - start!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    sget-boolean v0, Lcom/sec/android/app/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, -0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v4, :cond_6

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 797
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 803
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopEngineSync()V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartEngineAsync()V

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->waitForEngineStartingThread()V

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doPostInitSync()V

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualPreviewSync()V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    .line 812
    const-string v0, "CommonEngine"

    const-string v1, "!!!Camera retry!!! before return"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 793
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_2

    .line 815
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    goto/16 :goto_1

    .line 775
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_3
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
    .end sparse-switch
.end method
