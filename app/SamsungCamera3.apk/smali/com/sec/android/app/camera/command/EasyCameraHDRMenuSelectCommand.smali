.class public Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "EasyCameraHDRMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyCameraHDRMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandId:I

.field private mHDR:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 0
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "commandid"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 36
    iput p2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mCommandId:I

    .line 37
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v1, "EasyCameraHDRMenuSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return v0

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const-string v1, "EasyCameraHDRMenuSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isChangingParameters()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const-string v1, "EasyCameraHDRMenuSelectCommand"

    const-string v2, "return isChangingParameters.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    const-string v1, "EasyCameraHDRMenuSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    const/16 v3, 0x79

    iget-object v4, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mCommandId:I

    .line 66
    iget v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mCommandId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mCommandId:I

    const/16 v3, 0x51f

    if-lt v2, v3, :cond_5

    .line 67
    const/16 v2, 0x51e

    iput v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mCommandId:I

    .line 70
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mCommandId:I

    packed-switch v2, :pswitch_data_0

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mHDR:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/Camera;->onCameraHDRSelect(IZ)V

    move v0, v1

    .line 83
    goto :goto_0

    .line 72
    :pswitch_0
    iput v1, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mHDR:I

    goto :goto_1

    .line 75
    :pswitch_1
    iput v0, p0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;->mHDR:I

    goto :goto_1

    .line 70
    :pswitch_data_0
    .packed-switch 0x51e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
