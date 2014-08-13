.class public Lcom/sec/android/app/camera/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1
    .param p0, "id"    # I
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "menuDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 33
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    return-object v0
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 8
    .param p0, "id"    # I
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "menuDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p4, "zOrder"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 66
    const/16 v1, 0x63

    if-ne p0, v1, :cond_1

    .line 67
    new-instance v6, Lcom/sec/android/app/camera/command/EmptyCommand;

    invoke-direct {v6}, Lcom/sec/android/app/camera/command/EmptyCommand;-><init>()V

    .line 790
    :cond_0
    :goto_0
    :sswitch_0
    return-object v6

    .line 69
    :cond_1
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v4

    .line 74
    .local v4, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v4, :cond_19

    .line 75
    const/4 v6, 0x0

    .line 77
    .local v6, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    sparse-switch p0, :sswitch_data_0

    .line 334
    :goto_1
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 335
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 79
    :sswitch_1
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 80
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 83
    :sswitch_2
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 84
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 87
    :sswitch_3
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 88
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 92
    :sswitch_4
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 93
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 96
    :sswitch_5
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 97
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 100
    :sswitch_6
    if-ne p4, v2, :cond_2

    .line 101
    new-instance v6, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto :goto_0

    .line 103
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 104
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 108
    :sswitch_7
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 109
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 112
    :sswitch_8
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 113
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 116
    :sswitch_9
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 117
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 121
    :sswitch_a
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 122
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 125
    :sswitch_b
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 126
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 129
    :sswitch_c
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 130
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 133
    :sswitch_d
    if-ne p4, v2, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_3

    .line 134
    new-instance v6, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 136
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_3
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 137
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 141
    :sswitch_e
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result p0

    .line 142
    new-instance v6, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    .line 143
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    goto/16 :goto_0

    .line 145
    :sswitch_f
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result p0

    .line 146
    new-instance v6, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    .line 147
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    goto/16 :goto_0

    .line 149
    :sswitch_10
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 150
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 155
    :sswitch_11
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchShareModeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchShareModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .line 156
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    goto/16 :goto_0

    .line 158
    :sswitch_12
    if-ne p4, v2, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_4

    .line 159
    new-instance v6, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 161
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_4
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 162
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 166
    :sswitch_13
    if-ne p4, v2, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_5

    .line 167
    new-instance v6, Lcom/sec/android/app/camera/command/DualCaptureModeSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/DualCaptureModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 169
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_5
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 170
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 174
    :sswitch_14
    if-ne p4, v2, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_6

    .line 175
    new-instance v6, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 177
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_6
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 178
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 182
    :sswitch_15
    if-ne p4, v2, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_7

    .line 183
    new-instance v6, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 185
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_7
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 186
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    .line 189
    :sswitch_16
    if-ne p4, v2, :cond_8

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_8

    .line 190
    new-instance v6, Lcom/sec/android/app/camera/command/SideTouchCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/SideTouchCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 192
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_8
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 193
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 197
    :sswitch_17
    if-ne p4, v2, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_9

    .line 198
    new-instance v6, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 200
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_9
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 201
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 205
    :sswitch_18
    if-ne p4, v2, :cond_a

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_a

    .line 206
    new-instance v6, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 208
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_a
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 209
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 213
    :sswitch_19
    if-ne p4, v2, :cond_b

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_b

    .line 214
    new-instance v6, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 216
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_b
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 217
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 221
    :sswitch_1a
    if-ne p4, v2, :cond_c

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_c

    .line 222
    new-instance v6, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 224
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_c
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 225
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 229
    :sswitch_1b
    if-ne p4, v2, :cond_d

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_d

    .line 230
    new-instance v6, Lcom/sec/android/app/camera/command/RemoteViewfinderModeSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/RemoteViewfinderModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 232
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_d
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 233
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 237
    :sswitch_1c
    if-ne p4, v2, :cond_e

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_e

    .line 238
    new-instance v6, Lcom/sec/android/app/camera/command/CameraHDRSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/CameraHDRSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 240
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_e
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 241
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 245
    :sswitch_1d
    if-ne p4, v2, :cond_f

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_f

    .line 246
    new-instance v6, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 248
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_f
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 249
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 253
    :sswitch_1e
    if-ne p4, v2, :cond_10

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_10

    .line 254
    new-instance v6, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 256
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_10
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 257
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 261
    :sswitch_1f
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchVolumeKeyAsMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchVolumeKeyAsMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 262
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 265
    :sswitch_20
    if-ne p4, v2, :cond_11

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_11

    .line 266
    new-instance v6, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 268
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_11
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 269
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 273
    :sswitch_21
    if-ne p4, v2, :cond_12

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_12

    .line 274
    new-instance v6, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 276
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_12
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 277
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 281
    :sswitch_22
    if-ne p4, v2, :cond_13

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_13

    .line 282
    new-instance v6, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 284
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_13
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 285
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 289
    :sswitch_23
    if-ne p4, v2, :cond_14

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_14

    .line 290
    new-instance v6, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 292
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_14
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 293
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 297
    :sswitch_24
    if-ne p4, v2, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_0

    .line 298
    new-instance v6, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 302
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_25
    if-ne p4, v2, :cond_15

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_15

    .line 303
    new-instance v6, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 305
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_15
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 306
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 310
    :sswitch_26
    if-ne p4, v2, :cond_16

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_16

    .line 311
    new-instance v6, Lcom/sec/android/app/camera/command/ShootingModeFocusSelect;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/ShootingModeFocusSelect;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 313
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_16
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 314
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 318
    :sswitch_27
    if-ne p4, v2, :cond_17

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_17

    .line 319
    new-instance v6, Lcom/sec/android/app/camera/command/CameraQuickAccessCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/CameraQuickAccessCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 321
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_17
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 322
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 326
    :sswitch_28
    if-ne p4, v2, :cond_18

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v5, :cond_18

    .line 327
    new-instance v6, Lcom/sec/android/app/camera/command/ViewModeSelectCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p0, v3}, Lcom/sec/android/app/camera/command/ViewModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 329
    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_18
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 330
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_1

    .line 341
    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_19
    sparse-switch p0, :sswitch_data_1

    .line 788
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    new-instance v6, Lcom/sec/android/app/camera/command/ExternalEffectMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/ExternalEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 345
    :sswitch_29
    new-instance v6, Lcom/sec/android/app/camera/command/CameraModeSelectCommand;

    invoke-direct {v6, p1}, Lcom/sec/android/app/camera/command/CameraModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 348
    :sswitch_2a
    new-instance v6, Lcom/sec/android/app/camera/command/CameraHelpSelectCommand;

    invoke-direct {v6, p1}, Lcom/sec/android/app/camera/command/CameraHelpSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 380
    :sswitch_2b
    new-instance v6, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 382
    :sswitch_2c
    new-instance v6, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;

    invoke-direct {v6, p1}, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 398
    :sswitch_2d
    new-instance v6, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 402
    :sswitch_2e
    new-instance v6, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 408
    :sswitch_2f
    new-instance v6, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 414
    :sswitch_30
    new-instance v6, Lcom/sec/android/app/camera/command/TimerSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/TimerSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 461
    :sswitch_31
    new-instance v6, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 475
    :sswitch_32
    new-instance v6, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 486
    :sswitch_33
    new-instance v6, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v6, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 495
    :sswitch_34
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v6

    .line 496
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 504
    .end local v6    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_35
    new-instance v6, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 514
    :sswitch_36
    new-instance v6, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 548
    :sswitch_37
    new-instance v6, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 562
    :sswitch_38
    new-instance v6, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 578
    :sswitch_39
    new-instance v6, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 584
    :sswitch_3a
    new-instance v6, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 589
    :sswitch_3b
    new-instance v6, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 595
    :sswitch_3c
    new-instance v6, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 600
    :sswitch_3d
    new-instance v6, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 606
    :sswitch_3e
    new-instance v6, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 612
    :sswitch_3f
    new-instance v6, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 617
    :sswitch_40
    new-instance v6, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 622
    :sswitch_41
    new-instance v6, Lcom/sec/android/app/camera/command/ViewModeSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/ViewModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 629
    :sswitch_42
    new-instance v6, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 635
    :sswitch_43
    new-instance v0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V

    .line 636
    .local v0, "snsCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {v0, p4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    move-object v6, v0

    .line 637
    goto/16 :goto_0

    .line 640
    .end local v0    # "snsCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_44
    new-instance v6, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v6, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_0

    .line 645
    :sswitch_45
    new-instance v6, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 650
    :sswitch_46
    new-instance v6, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 655
    :sswitch_47
    new-instance v6, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 659
    :sswitch_48
    new-instance v6, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 669
    :sswitch_49
    new-instance v6, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 677
    :sswitch_4a
    new-instance v6, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 682
    :sswitch_4b
    new-instance v6, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 687
    :sswitch_4c
    new-instance v6, Lcom/sec/android/app/camera/command/SideTouchCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/SideTouchCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 692
    :sswitch_4d
    new-instance v6, Lcom/sec/android/app/camera/command/CameraQuickAccessCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/CameraQuickAccessCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 697
    :sswitch_4e
    new-instance v6, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 704
    :sswitch_4f
    new-instance v6, Lcom/sec/android/app/camera/command/ShareModeSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/ShareModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 709
    :sswitch_50
    new-instance v6, Lcom/sec/android/app/camera/command/RemoteViewfinderModeSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/RemoteViewfinderModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 714
    :sswitch_51
    new-instance v6, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 720
    :sswitch_52
    new-instance v6, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 725
    :sswitch_53
    new-instance v6, Lcom/sec/android/app/camera/command/SoundShotMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/SoundShotMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 731
    :sswitch_54
    new-instance v6, Lcom/sec/android/app/camera/command/BeautyFaceModeMenuSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/BeautyFaceModeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 736
    :sswitch_55
    new-instance v6, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 741
    :sswitch_56
    new-instance v6, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 747
    :sswitch_57
    new-instance v6, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 753
    :sswitch_58
    new-instance v6, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;

    invoke-direct {v6, p1, p0}, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 758
    :sswitch_59
    new-instance v6, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 763
    :sswitch_5a
    new-instance v6, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 768
    :sswitch_5b
    new-instance v6, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 773
    :sswitch_5c
    new-instance v6, Lcom/sec/android/app/camera/command/DualCaptureModeSelectCommand;

    invoke-direct {v6, p1, p0, v7}, Lcom/sec/android/app/camera/command/DualCaptureModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 777
    :sswitch_5d
    new-instance v6, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;

    invoke-direct {v6, p1}, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 780
    :sswitch_5e
    new-instance v6, Lcom/sec/android/app/camera/command/EffectManageCommand;

    invoke-direct {v6, p1}, Lcom/sec/android/app/camera/command/EffectManageCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 783
    :sswitch_5f
    new-instance v6, Lcom/sec/android/app/camera/command/ShootingModeManageCommand;

    invoke-direct {v6, p1}, Lcom/sec/android/app/camera/command/ShootingModeManageCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x7 -> :sswitch_2
        0x8 -> :sswitch_a
        0xb -> :sswitch_20
        0xc -> :sswitch_1c
        0xd -> :sswitch_1d
        0x11 -> :sswitch_21
        0x12 -> :sswitch_4
        0x13 -> :sswitch_1a
        0x14 -> :sswitch_19
        0x15 -> :sswitch_25
        0x17 -> :sswitch_28
        0x1b -> :sswitch_1
        0x22 -> :sswitch_15
        0x27 -> :sswitch_5
        0x33 -> :sswitch_24
        0x35 -> :sswitch_11
        0x3f -> :sswitch_14
        0x47 -> :sswitch_d
        0x48 -> :sswitch_1f
        0x4d -> :sswitch_c
        0x55 -> :sswitch_10
        0x56 -> :sswitch_17
        0x5a -> :sswitch_a
        0x5c -> :sswitch_12
        0x5e -> :sswitch_13
        0x60 -> :sswitch_22
        0x61 -> :sswitch_18
        0x62 -> :sswitch_26
        0x6d -> :sswitch_3
        0x70 -> :sswitch_16
        0x72 -> :sswitch_1b
        0x78 -> :sswitch_27
        0xbb8 -> :sswitch_b
        0xbb9 -> :sswitch_8
        0xbbf -> :sswitch_1e
        0xbc3 -> :sswitch_e
        0xbc4 -> :sswitch_f
        0xbc5 -> :sswitch_4
        0xbc7 -> :sswitch_23
    .end sparse-switch

    .line 341
    :sswitch_data_1
    .sparse-switch
        0x16 -> :sswitch_0
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_33
        0x20 -> :sswitch_34
        0x21 -> :sswitch_34
        0x24 -> :sswitch_29
        0x25 -> :sswitch_34
        0x26 -> :sswitch_34
        0x37 -> :sswitch_43
        0x38 -> :sswitch_44
        0x39 -> :sswitch_44
        0x3a -> :sswitch_43
        0x51 -> :sswitch_54
        0x6f -> :sswitch_2a
        0xc8 -> :sswitch_29
        0xc9 -> :sswitch_29
        0x12c -> :sswitch_2b
        0x12d -> :sswitch_2b
        0x12e -> :sswitch_2b
        0x12f -> :sswitch_2b
        0x130 -> :sswitch_2b
        0x131 -> :sswitch_2b
        0x133 -> :sswitch_2b
        0x135 -> :sswitch_2b
        0x136 -> :sswitch_2b
        0x137 -> :sswitch_2b
        0x139 -> :sswitch_2b
        0x13a -> :sswitch_2b
        0x13c -> :sswitch_2b
        0x13e -> :sswitch_2b
        0x13f -> :sswitch_2b
        0x140 -> :sswitch_2b
        0x141 -> :sswitch_2b
        0x143 -> :sswitch_2b
        0x147 -> :sswitch_2b
        0x148 -> :sswitch_2b
        0x149 -> :sswitch_2b
        0x14b -> :sswitch_2b
        0x14c -> :sswitch_2b
        0x14d -> :sswitch_2b
        0x14e -> :sswitch_2b
        0x14f -> :sswitch_2b
        0x150 -> :sswitch_2b
        0x151 -> :sswitch_2b
        0x152 -> :sswitch_2b
        0x153 -> :sswitch_2b
        0x18f -> :sswitch_2c
        0x1f4 -> :sswitch_2d
        0x1f5 -> :sswitch_2d
        0x1f6 -> :sswitch_2d
        0x1f7 -> :sswitch_2d
        0x1f8 -> :sswitch_2d
        0x1f9 -> :sswitch_2d
        0x1fa -> :sswitch_2d
        0x1fb -> :sswitch_2d
        0x1fc -> :sswitch_2d
        0x1fd -> :sswitch_2d
        0x1fe -> :sswitch_2d
        0x1ff -> :sswitch_2d
        0x200 -> :sswitch_2d
        0x201 -> :sswitch_2d
        0x258 -> :sswitch_35
        0x259 -> :sswitch_35
        0x25a -> :sswitch_35
        0x25b -> :sswitch_35
        0x2bc -> :sswitch_2f
        0x2bd -> :sswitch_2f
        0x2be -> :sswitch_2f
        0x2bf -> :sswitch_2f
        0x320 -> :sswitch_30
        0x321 -> :sswitch_30
        0x322 -> :sswitch_30
        0x323 -> :sswitch_30
        0x384 -> :sswitch_36
        0x385 -> :sswitch_36
        0x386 -> :sswitch_36
        0x387 -> :sswitch_36
        0x388 -> :sswitch_36
        0x389 -> :sswitch_36
        0x38a -> :sswitch_36
        0x3e8 -> :sswitch_37
        0x3e9 -> :sswitch_37
        0x3ea -> :sswitch_37
        0x3eb -> :sswitch_37
        0x3f7 -> :sswitch_37
        0x3f8 -> :sswitch_37
        0x3f9 -> :sswitch_37
        0x3fa -> :sswitch_37
        0x3fb -> :sswitch_37
        0x3fc -> :sswitch_37
        0x3fd -> :sswitch_37
        0x3fe -> :sswitch_37
        0x3ff -> :sswitch_37
        0x404 -> :sswitch_37
        0x405 -> :sswitch_37
        0x406 -> :sswitch_37
        0x407 -> :sswitch_37
        0x408 -> :sswitch_37
        0x409 -> :sswitch_37
        0x40a -> :sswitch_37
        0x40b -> :sswitch_37
        0x40c -> :sswitch_37
        0x40d -> :sswitch_37
        0x40e -> :sswitch_37
        0x40f -> :sswitch_37
        0x410 -> :sswitch_37
        0x411 -> :sswitch_37
        0x412 -> :sswitch_37
        0x413 -> :sswitch_37
        0x414 -> :sswitch_37
        0x415 -> :sswitch_37
        0x41a -> :sswitch_38
        0x41b -> :sswitch_38
        0x41c -> :sswitch_38
        0x41d -> :sswitch_38
        0x41e -> :sswitch_38
        0x41f -> :sswitch_38
        0x420 -> :sswitch_38
        0x421 -> :sswitch_38
        0x422 -> :sswitch_38
        0x423 -> :sswitch_38
        0x424 -> :sswitch_38
        0x425 -> :sswitch_5d
        0x426 -> :sswitch_38
        0x44c -> :sswitch_39
        0x44d -> :sswitch_39
        0x44e -> :sswitch_39
        0x44f -> :sswitch_39
        0x450 -> :sswitch_39
        0x451 -> :sswitch_39
        0x452 -> :sswitch_39
        0x453 -> :sswitch_39
        0x454 -> :sswitch_39
        0x455 -> :sswitch_39
        0x456 -> :sswitch_39
        0x457 -> :sswitch_39
        0x458 -> :sswitch_39
        0x4b0 -> :sswitch_3a
        0x4b1 -> :sswitch_3a
        0x4b2 -> :sswitch_3a
        0x578 -> :sswitch_3b
        0x579 -> :sswitch_3b
        0x57a -> :sswitch_3c
        0x57b -> :sswitch_3c
        0x57c -> :sswitch_3c
        0x5dc -> :sswitch_3d
        0x5dd -> :sswitch_3d
        0x640 -> :sswitch_41
        0x641 -> :sswitch_41
        0x6a4 -> :sswitch_3e
        0x6a5 -> :sswitch_3e
        0x6a6 -> :sswitch_3e
        0x6a7 -> :sswitch_3f
        0x6a8 -> :sswitch_3f
        0x6a9 -> :sswitch_3f
        0x708 -> :sswitch_40
        0x709 -> :sswitch_40
        0x76c -> :sswitch_42
        0x76d -> :sswitch_42
        0x76e -> :sswitch_42
        0x76f -> :sswitch_42
        0x7d0 -> :sswitch_45
        0x7d1 -> :sswitch_45
        0x834 -> :sswitch_46
        0x835 -> :sswitch_46
        0x898 -> :sswitch_48
        0x899 -> :sswitch_48
        0x8fc -> :sswitch_31
        0x8fd -> :sswitch_31
        0x8fe -> :sswitch_31
        0x8ff -> :sswitch_31
        0x900 -> :sswitch_31
        0x901 -> :sswitch_31
        0x902 -> :sswitch_31
        0x903 -> :sswitch_31
        0x904 -> :sswitch_31
        0x905 -> :sswitch_31
        0x906 -> :sswitch_31
        0x907 -> :sswitch_31
        0x908 -> :sswitch_31
        0x909 -> :sswitch_31
        0x90a -> :sswitch_31
        0x90b -> :sswitch_31
        0x90c -> :sswitch_31
        0x90d -> :sswitch_31
        0x90e -> :sswitch_31
        0x90f -> :sswitch_31
        0x910 -> :sswitch_31
        0x911 -> :sswitch_31
        0x912 -> :sswitch_31
        0x913 -> :sswitch_31
        0x914 -> :sswitch_31
        0x915 -> :sswitch_31
        0x916 -> :sswitch_31
        0x917 -> :sswitch_31
        0x919 -> :sswitch_31
        0x91a -> :sswitch_31
        0x91b -> :sswitch_31
        0x91c -> :sswitch_31
        0x91d -> :sswitch_31
        0x91e -> :sswitch_31
        0x91f -> :sswitch_31
        0x920 -> :sswitch_31
        0x921 -> :sswitch_31
        0x922 -> :sswitch_31
        0x923 -> :sswitch_31
        0x924 -> :sswitch_31
        0x925 -> :sswitch_31
        0x926 -> :sswitch_31
        0x960 -> :sswitch_32
        0x961 -> :sswitch_32
        0x962 -> :sswitch_32
        0x963 -> :sswitch_32
        0x965 -> :sswitch_32
        0x966 -> :sswitch_32
        0x967 -> :sswitch_32
        0x968 -> :sswitch_32
        0x969 -> :sswitch_32
        0x96a -> :sswitch_32
        0x96b -> :sswitch_32
        0x96d -> :sswitch_32
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_0
        0xbbc -> :sswitch_0
        0xc1c -> :sswitch_49
        0xc1d -> :sswitch_49
        0xc20 -> :sswitch_49
        0xc21 -> :sswitch_49
        0xc22 -> :sswitch_49
        0xc80 -> :sswitch_4a
        0xc81 -> :sswitch_4a
        0xd48 -> :sswitch_2e
        0xd49 -> :sswitch_2e
        0xdac -> :sswitch_4a
        0xdad -> :sswitch_4a
        0xf3c -> :sswitch_47
        0xf3d -> :sswitch_47
        0xfa0 -> :sswitch_4f
        0xfa1 -> :sswitch_4f
        0xfa2 -> :sswitch_4f
        0xfa5 -> :sswitch_4f
        0x1194 -> :sswitch_4b
        0x1195 -> :sswitch_4b
        0x125c -> :sswitch_4e
        0x125d -> :sswitch_4e
        0x12c0 -> :sswitch_51
        0x12c1 -> :sswitch_51
        0x1388 -> :sswitch_52
        0x1389 -> :sswitch_52
        0x138a -> :sswitch_52
        0x1450 -> :sswitch_53
        0x1451 -> :sswitch_53
        0x1518 -> :sswitch_54
        0x1519 -> :sswitch_54
        0x15e0 -> :sswitch_59
        0x15e1 -> :sswitch_59
        0x16a8 -> :sswitch_55
        0x16a9 -> :sswitch_55
        0x170e -> :sswitch_49
        0x170f -> :sswitch_49
        0x1770 -> :sswitch_57
        0x1771 -> :sswitch_57
        0x1772 -> :sswitch_57
        0x1773 -> :sswitch_58
        0x1774 -> :sswitch_58
        0x1775 -> :sswitch_58
        0x17d6 -> :sswitch_5b
        0x17d7 -> :sswitch_5b
        0x1838 -> :sswitch_5a
        0x1839 -> :sswitch_5a
        0x189c -> :sswitch_56
        0x189d -> :sswitch_56
        0x1964 -> :sswitch_5c
        0x1965 -> :sswitch_5c
        0x1a2c -> :sswitch_4c
        0x1a2d -> :sswitch_4c
        0x1a90 -> :sswitch_50
        0x1a91 -> :sswitch_50
        0x1bbc -> :sswitch_4d
        0x1bbd -> :sswitch_4d
        0x232a -> :sswitch_5d
        0x232e -> :sswitch_5e
        0x232f -> :sswitch_5f
    .end sparse-switch
.end method

.method public static buildCommandWithSub(ILjava/lang/String;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 2
    .param p0, "commandId"    # I
    .param p1, "subCommandName"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p3, "view"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    const/16 v1, 0x155

    if-ne p0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p2, p0, p1}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;ILjava/lang/String;)V

    .line 61
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    return-object v0
.end method
