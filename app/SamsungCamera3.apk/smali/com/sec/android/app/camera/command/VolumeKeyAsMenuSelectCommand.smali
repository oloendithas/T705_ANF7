.class public Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "VolumeKeyAsMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeKeyAsSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandId:I

.field private mToggle:Z

.field private mVolumeKeyAs:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IZ)V
    .locals 0
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "commandid"    # I
    .param p3, "toggle"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 19
    iput p2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mCommandId:I

    .line 20
    iput-boolean p3, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mToggle:Z

    .line 21
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    iget-object v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    const-string v1, "VolumeKeyAsSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return v0

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    const-string v1, "VolumeKeyAsSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    const-string v1, "VolumeKeyAsSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mToggle:Z

    if-eqz v2, :cond_3

    .line 41
    iget-object v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    const/16 v3, 0x48

    iget-object v4, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKeyAs()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mCommandId:I

    .line 42
    iget v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mCommandId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mCommandId:I

    const/16 v3, 0x138a

    if-lt v2, v3, :cond_3

    .line 43
    const/16 v2, 0x1388

    iput v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mCommandId:I

    .line 47
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mCommandId:I

    packed-switch v2, :pswitch_data_0

    .line 59
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mVolumeKeyAs:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->onVolumeKeyAsMenuSelect(I)V

    move v0, v1

    .line 65
    goto :goto_0

    .line 49
    :pswitch_0
    iput v0, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mVolumeKeyAs:I

    goto :goto_1

    .line 52
    :pswitch_1
    iput v1, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mVolumeKeyAs:I

    goto :goto_1

    .line 55
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;->mVolumeKeyAs:I

    goto :goto_1

    .line 47
    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
