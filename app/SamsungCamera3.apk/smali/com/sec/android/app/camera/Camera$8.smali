.class Lcom/sec/android/app/camera/Camera$8;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1479
    .local v0, "action":Ljava/lang/String;
    const-string v9, "Camera3"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1481
    const-string v9, "Camera3"

    const-string v10, "onReceive - camera is destroying"

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    const-string v9, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1486
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v9, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_7

    const/4 v9, 0x1

    :goto_1
    # setter for: Lcom/sec/android/app/camera/Camera;->misConnectHeadSet:Z
    invoke-static {v10, v9}, Lcom/sec/android/app/camera/Camera;->access$2702(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1496
    :cond_2
    const-string v9, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1497
    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1498
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 1502
    :cond_4
    const-string v9, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1503
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->bRecordingFailByVideoController:Z
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/Camera;->access$2802(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1506
    :cond_5
    const-string v9, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1507
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1508
    .local v7, "myExtras":Landroid/os/Bundle;
    const-string v9, "camera_start_disable"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1509
    .local v1, "bLimitCamera":Z
    const-string v9, "flash_led_disable"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1510
    .local v2, "bLimitFlash":Z
    const-string v9, "camera_recording_disable"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1511
    .local v3, "bLimitRecording":Z
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v10, "camera_recording_low_fps_enable"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Lcom/sec/android/app/camera/Camera;->bLimitRecordingFps:Z

    .line 1513
    if-eqz v1, :cond_6

    .line 1514
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->handleDeviceOverheat()V

    .line 1517
    :cond_6
    if-eqz v2, :cond_8

    .line 1518
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToUseFlash(Z)V

    .line 1519
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setFlashOffInHighTemperature()V
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)V

    .line 1524
    :goto_2
    if-eqz v3, :cond_19

    .line 1525
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1526
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1527
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToRecord(Z)V

    goto/16 :goto_0

    .line 1486
    .end local v1    # "bLimitCamera":Z
    .end local v2    # "bLimitFlash":Z
    .end local v3    # "bLimitRecording":Z
    .end local v7    # "myExtras":Landroid/os/Bundle;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1521
    .restart local v1    # "bLimitCamera":Z
    .restart local v2    # "bLimitFlash":Z
    .restart local v3    # "bLimitRecording":Z
    .restart local v7    # "myExtras":Landroid/os/Bundle;
    :cond_8
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToUseFlash(Z)V

    goto :goto_2

    .line 1530
    :cond_9
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopVideoRecording()V

    .line 1531
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 1532
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->scheduleCamcorderRecordingStopSound()V

    .line 1534
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1535
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const v10, 0x7f0b0014

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1542
    :cond_a
    :goto_3
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToRecord(Z)V

    .line 1543
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x41

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1550
    .end local v1    # "bLimitCamera":Z
    .end local v2    # "bLimitFlash":Z
    .end local v3    # "bLimitRecording":Z
    .end local v7    # "myExtras":Landroid/os/Bundle;
    :cond_b
    :goto_4
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1551
    :cond_c
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1552
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 1553
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 1554
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 1555
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    .line 1556
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCameraPreviewSync()V

    .line 1561
    :cond_d
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 1562
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 1563
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$2900(Lcom/sec/android/app/camera/Camera;)Landroid/media/MediaMetadataRetriever;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 1564
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$2900(Lcom/sec/android/app/camera/Camera;)Landroid/media/MediaMetadataRetriever;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1566
    :cond_e
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v10, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v10}, Landroid/media/MediaMetadataRetriever;-><init>()V

    # setter for: Lcom/sec/android/app/camera/Camera;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/Camera;->access$2902(Lcom/sec/android/app/camera/Camera;Landroid/media/MediaMetadataRetriever;)Landroid/media/MediaMetadataRetriever;

    .line 1569
    :cond_f
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->resetStorageMedia()V

    .line 1570
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x16

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1571
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 1572
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    .line 1574
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v10

    const/16 v11, 0x16

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/MenuBase;

    .line 1575
    .local v5, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1576
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1688
    .end local v5    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_10
    :goto_5
    const-string v9, "com.samsung.action.SHOWING_GLOBAL_ACTIONS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1689
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1690
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1694
    :cond_11
    const-string v9, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1695
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_12

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    .line 1696
    :cond_12
    const-string v9, "Camera3"

    const-string v10, "android.intent.action.WIFI_DISPLAY intent on SHARE_REMOTE_VIEWFINDER"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1699
    .restart local v7    # "myExtras":Landroid/os/Bundle;
    const-string v9, "Camera3"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "state"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const-string v9, "state"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_30

    .line 1701
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplay:Z
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$3400(Lcom/sec/android/app/camera/Camera;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1702
    const-string v9, "Camera3"

    const-string v10, "showDlg WIFI_DISPLAY_DISCONNECT_DLG"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    .line 1705
    :cond_13
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplay:Z
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/Camera;->access$3402(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1706
    const-string v9, "Camera3"

    const-string v10, "mCheckWifiDisplay set false"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    .end local v7    # "myExtras":Landroid/os/Bundle;
    :cond_14
    :goto_6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1714
    .restart local v7    # "myExtras":Landroid/os/Bundle;
    const-string v9, "mode"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_15

    .line 1715
    const-string v9, "Camera3"

    const-string v10, "WfdManager.MODE_SIDESYNC"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->showSideSyncToast()V

    .line 1717
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1722
    .end local v7    # "myExtras":Landroid/os/Bundle;
    :cond_15
    const-string v9, "com.sec.android.sidesync.source.SIDESYNC_CHANGE_SINK_WORK"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1723
    const-string v9, "Camera3"

    const-string v10, "intent is comming from com.sec.android.sidesync.source.SIDESYNC_CHANGE_SINK_WORK"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->showSideSyncToast()V

    .line 1725
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1728
    :cond_16
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1729
    const/4 v6, 0x0

    .line 1731
    .local v6, "messageDisplayData":Ljava/lang/String;
    const-string v9, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 1732
    const-string v9, "DisplayName"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1734
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v6}, Lcom/sec/android/app/camera/Camera;->makeToast(ILjava/lang/String;)V

    .line 1746
    .end local v6    # "messageDisplayData":Ljava/lang/String;
    :cond_17
    :goto_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1747
    const-string v9, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "CAMERA_ON"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_0

    .line 1748
    const-string v9, "Camera3"

    const-string v10, "INTENT_MSG_DCMO"

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 1538
    .restart local v1    # "bLimitCamera":Z
    .restart local v2    # "bLimitFlash":Z
    .restart local v3    # "bLimitRecording":Z
    .restart local v7    # "myExtras":Landroid/os/Bundle;
    :cond_18
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1539
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const v10, 0x7f0b0016

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 1545
    :cond_19
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToRecord(Z)V

    .line 1546
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x41

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_4

    .line 1578
    .end local v1    # "bLimitCamera":Z
    .end local v2    # "bLimitFlash":Z
    .end local v3    # "bLimitRecording":Z
    .end local v7    # "myExtras":Landroid/os/Bundle;
    :cond_1a
    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 1579
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 1580
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    goto/16 :goto_5

    .line 1582
    :cond_1b
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x16

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_5

    .line 1584
    :cond_1c
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1585
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 1586
    const-string v9, "Camera3"

    const-string v10, "do not update Thumbnail by BR"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1588
    :cond_1d
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v9, :cond_10

    .line 1589
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->updateThumbnailButton()V

    goto/16 :goto_5

    .line 1592
    :cond_1e
    const-string v9, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 1593
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    goto/16 :goto_5

    .line 1594
    :cond_1f
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 1595
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v9, p2}, Lcom/sec/android/app/camera/Camera;->access$3000(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 1596
    :cond_20
    const-string v9, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 1597
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_21

    .line 1598
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1599
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_5

    .line 1602
    :cond_21
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v9, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v9, :cond_10

    .line 1603
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1604
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1605
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x0

    # invokes: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/Camera;->access$3200(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_5

    .line 1610
    :cond_22
    const-string v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 1611
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget v10, v10, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-gt v9, v10, :cond_26

    .line 1612
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_24

    .line 1613
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1614
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v9, :cond_23

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1615
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 1617
    :cond_23
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_5

    .line 1620
    :cond_24
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1621
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v9, :cond_25

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 1622
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 1624
    :cond_25
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1625
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1626
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x0

    # invokes: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/Camera;->access$3200(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_5

    .line 1631
    :cond_26
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v9, :cond_27

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 1632
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v9, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 1634
    :cond_27
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 1636
    :cond_28
    const-string v9, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 1637
    const-string v9, "Camera3"

    const-string v10, "INTENT_MSG_SECURITY"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1646
    :cond_29
    const-string v9, "com.android.shoot.userchanged"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 1647
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShareShot:Lcom/sec/android/app/camera/ShareShot;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$3300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ShareShot;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/ShareShot;->refreshDeviceList()V

    goto/16 :goto_5

    .line 1648
    :cond_2a
    const-string v9, "com.android.shootshare.recvfile"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 1649
    const-string v9, "filepath"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1651
    .local v4, "filePath":Ljava/lang/String;
    if-eqz v4, :cond_10

    .line 1652
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    .line 1653
    .local v8, "timer":Ljava/util/Timer;
    new-instance v9, Lcom/sec/android/app/camera/Camera$8$1;

    invoke-direct {v9, p0, v4}, Lcom/sec/android/app/camera/Camera$8$1;-><init>(Lcom/sec/android/app/camera/Camera$8;Ljava/lang/String;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_5

    .line 1663
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v8    # "timer":Ljava/util/Timer;
    :cond_2b
    const-string v9, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 1664
    const-string v9, "Camera3"

    const-string v10, "onReceive shutdown"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1667
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->doCancelShutterTimer()V

    .line 1671
    :cond_2c
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_10

    .line 1672
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->getVideoRecordingTimeInSecond()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_2d

    .line 1673
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 1678
    :goto_8
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 1679
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    goto/16 :goto_5

    .line 1675
    :cond_2d
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sec/android/app/camera/Camera;->mIsReocrdingStoppedForcely:Z

    .line 1676
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_8

    .line 1681
    :cond_2e
    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 1682
    const-string v9, "Camera3"

    const-string v10, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->requestGroupInfo()V

    goto/16 :goto_5

    .line 1684
    :cond_2f
    const-string v9, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1685
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setTorchLightStatus(I)V

    goto/16 :goto_5

    .line 1707
    .restart local v7    # "myExtras":Landroid/os/Bundle;
    :cond_30
    const-string v9, "state"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    .line 1708
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplay:Z
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/Camera;->access$3402(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1709
    const-string v9, "Camera3"

    const-string v10, "mCheckWifiDisplay set true"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1735
    .end local v7    # "myExtras":Landroid/os/Bundle;
    .restart local v6    # "messageDisplayData":Ljava/lang/String;
    :cond_31
    const-string v9, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 1736
    const-string v9, "DisplayName"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1738
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v6}, Lcom/sec/android/app/camera/Camera;->makeToast(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 1739
    :cond_32
    const-string v9, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1740
    const-string v9, "DisplayName"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1742
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v6}, Lcom/sec/android/app/camera/Camera;->makeToast(ILjava/lang/String;)V

    goto/16 :goto_7
.end method
