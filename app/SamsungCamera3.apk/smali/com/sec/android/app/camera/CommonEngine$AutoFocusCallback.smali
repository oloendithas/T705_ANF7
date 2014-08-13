.class final Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p2, "x1"    # Lcom/sec/android/app/camera/CommonEngine$1;

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 9
    .param p1, "afMsg"    # I
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 443
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoFocusCallback.onAutoFocus : msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] focusState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**EndU["

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

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput p1, v0, Lcom/sec/android/app/camera/CommonEngine;->mAfMsg:I

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->closeCamera()V

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v8, :cond_0

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideFocusIndicator()V

    .line 470
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-ne v0, v4, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 477
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v6, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopAFHideRectTimer()V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetPosIndicator()V

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->shrinkFocusRect()V

    goto/16 :goto_0

    .line 484
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v8, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 488
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v6, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetPosIndicator()V

    goto/16 :goto_0

    .line 502
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_a

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    if-eq v0, v7, :cond_a

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 507
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    .line 512
    :cond_b
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1a

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->access$1002(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 517
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_d

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_d

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 536
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1200(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 538
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 542
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    if-eq v0, v7, :cond_12

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v7, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v8, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 545
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-eqz v0, :cond_18

    .line 683
    :cond_12
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_13

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v8, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->startResetTouchFocusTimer()V

    .line 690
    :cond_13
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    if-eq p1, v6, :cond_0

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_14

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v8, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->startResetTouchFocusTimer()V

    .line 697
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 524
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_d

    .line 526
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_d

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_1

    .line 532
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->access$1102(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    goto/16 :goto_1

    .line 546
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_2

    .line 548
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_2

    .line 552
    :cond_1a
    if-ne p1, v6, :cond_25

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->access$1002(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 557
    :cond_1b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v7, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 576
    :cond_1c
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-ne v0, v4, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1200(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 578
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 582
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v8, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 585
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_12

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_2

    .line 564
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_1c

    .line 566
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v7, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_3

    .line 572
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->access$1102(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    goto/16 :goto_3

    .line 588
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_2

    .line 592
    :cond_25
    if-ne p1, v4, :cond_32

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1000(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 597
    :cond_26
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_27

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_27

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 616
    :cond_27
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-ne v0, v4, :cond_2a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1200(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 618
    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 622
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    if-eq v0, v7, :cond_2c

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput v7, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v8, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 625
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-eqz v0, :cond_30

    .line 634
    :cond_2c
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->access$1002(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    goto/16 :goto_2

    .line 604
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_27

    .line 606
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_27

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_4

    .line 612
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->access$1102(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    goto/16 :goto_4

    .line 626
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_5

    .line 628
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 629
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_5

    .line 635
    :cond_32
    if-ne p1, v7, :cond_33

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    goto/16 :goto_2

    .line 637
    :cond_33
    if-nez p1, :cond_12

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1000(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 642
    :cond_34
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_35

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v7, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_35

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 661
    :cond_35
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-ne v0, v4, :cond_38

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1200(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 663
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 667
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v8, :cond_39

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 670
    :cond_39
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 679
    :cond_3a
    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->access$1002(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    goto/16 :goto_2

    .line 649
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_35

    .line 651
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v7, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_35

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_6

    .line 657
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->access$1102(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    goto/16 :goto_6

    .line 671
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_7

    .line 673
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    goto/16 :goto_7
.end method
