.class public Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "CamcorderResolutionSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolutionSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mResolution:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "commandid"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 36
    packed-switch p2, :pswitch_data_0

    .line 76
    :goto_0
    :pswitch_0
    return-void

    .line 38
    :pswitch_1
    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 41
    :pswitch_2
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 44
    :pswitch_3
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 47
    :pswitch_4
    const/16 v0, 0x1f

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 50
    :pswitch_5
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 53
    :pswitch_6
    const/16 v0, 0x22

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 56
    :pswitch_7
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 59
    :pswitch_8
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 62
    :pswitch_9
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 65
    :pswitch_a
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 68
    :pswitch_b
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 71
    :pswitch_c
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x960
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string v1, "ResolutionSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const-string v1, "ResolutionSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    const-string v1, "ResolutionSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;->mResolution:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onCamcorderResolutionMenuSelect(I)V

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method
