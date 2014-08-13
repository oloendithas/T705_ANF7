.class public Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchEffectTypeMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchEffectTypeMenuCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mEngine:Lcom/sec/android/app/camera/CommonEngine;

.field private final mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private final mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "menuDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p4, "res"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    .line 52
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 53
    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 54
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 55
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mEngine:Lcom/sec/android/app/camera/CommonEngine;

    .line 57
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v2, 0x66

    const/16 v10, 0x5a

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const-string v1, "LaunchEffectTypeMenuCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 147
    :goto_0
    return v1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const-string v1, "LaunchEffectTypeMenuCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "LaunchEffectTypeMenuCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    const-string v1, "LaunchEffectTypeMenuCommand"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 87
    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/SecCameraEffectLib;->setFrontCamera(Z)V

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 96
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_4

    .line 98
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v3}, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 102
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 103
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_4
    :goto_1
    if-nez v0, :cond_7

    move v1, v8

    .line 129
    goto/16 :goto_0

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 107
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_4

    .line 109
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 113
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    move v2, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 114
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 122
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_4

    .line 123
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 124
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    move v2, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 125
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 132
    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 134
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mLaunchX:F

    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mLaunchY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuBase;->setLaunchPosition(FF)V

    .line 136
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_8

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mEngine:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 147
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 140
    :cond_8
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    if-le v1, v11, :cond_9

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/Camera;->popMenu(I)V

    .line 144
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mEngine:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManager()V

    .line 145
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto :goto_2
.end method

.method public setSliderDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    .line 66
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    .line 62
    return-void
.end method
