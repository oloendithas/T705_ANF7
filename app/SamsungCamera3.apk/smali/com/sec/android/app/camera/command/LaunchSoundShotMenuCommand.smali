.class public Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchSoundShotMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchStoryShotMenuCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

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
    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mSlideDirection:I

    .line 43
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 44
    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 45
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 46
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 47
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v2, 0x4d

    const/4 v1, 0x0

    .line 60
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    const-string v2, "LaunchStoryShotMenuCommand"

    const-string v3, "return isStartPreview.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v1

    .line 96
    :goto_0
    return v8

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string v2, "LaunchStoryShotMenuCommand"

    const-string v3, "return getIsLaunchGallery.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v1

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const-string v2, "LaunchStoryShotMenuCommand"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v1

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    const-string v2, "LaunchStoryShotMenuCommand"

    const-string v3, "return isRecording.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v1

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    const/4 v0, 0x0

    .line 81
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 82
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_4

    .line 83
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/SoundShotModeResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v3}, Lcom/sec/android/app/camera/resourcedata/SoundShotModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 84
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIZ)V

    .line 85
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 89
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mLaunchX:F

    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mLaunchY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuBase;->setLaunchPosition(FF)V

    .line 91
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 92
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_0

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto/16 :goto_0
.end method

.method public setSliderDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mSlideDirection:I

    .line 56
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->mZOrder:I

    .line 52
    return-void
.end method
