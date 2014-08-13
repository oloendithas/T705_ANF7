.class public Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "CameraResolutionSelectCommand.java"


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
    iput-object p1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 36
    packed-switch p2, :pswitch_data_0

    .line 176
    :goto_0
    :pswitch_0
    return-void

    .line 38
    :pswitch_1
    const/16 v0, 0x2c

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 43
    :pswitch_2
    const/16 v0, 0x31

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 47
    :pswitch_3
    const/16 v0, 0x20

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 50
    :pswitch_4
    const/16 v0, 0x21

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 53
    :pswitch_5
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 56
    :pswitch_6
    const/16 v0, 0x24

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 59
    :pswitch_7
    const/16 v0, 0x2d

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 63
    :pswitch_8
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 68
    :pswitch_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 71
    :pswitch_a
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 74
    :pswitch_b
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 77
    :pswitch_c
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 80
    :pswitch_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 83
    :pswitch_e
    const/16 v0, 0x2e

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 88
    :pswitch_f
    const/16 v0, 0x33

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 93
    :pswitch_10
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 96
    :pswitch_11
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 99
    :pswitch_12
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 102
    :pswitch_13
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 105
    :pswitch_14
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 108
    :pswitch_15
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 111
    :pswitch_16
    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 114
    :pswitch_17
    const/16 v0, 0x1a

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 117
    :pswitch_18
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 120
    :pswitch_19
    const/16 v0, 0x1b

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 123
    :pswitch_1a
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 126
    :pswitch_1b
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 129
    :pswitch_1c
    const/16 v0, 0x1c

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 132
    :pswitch_1d
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 135
    :pswitch_1e
    const/16 v0, 0x1f

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 138
    :pswitch_1f
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 141
    :pswitch_20
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 144
    :pswitch_21
    const/16 v0, 0x1d

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 147
    :pswitch_22
    const/16 v0, 0x2f

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 150
    :pswitch_23
    const/16 v0, 0x26

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 153
    :pswitch_24
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 156
    :pswitch_25
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 159
    :pswitch_26
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 162
    :pswitch_27
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 165
    :pswitch_28
    const/16 v0, 0x25

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 168
    :pswitch_29
    const/16 v0, 0x27

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 171
    :pswitch_2a
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x8fc
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_19
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_24
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_28
        :pswitch_23
        :pswitch_29
        :pswitch_27
        :pswitch_1
        :pswitch_7
        :pswitch_e
        :pswitch_22
        :pswitch_2a
        :pswitch_2
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string v1, "ResolutionSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const-string v1, "ResolutionSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    const-string v1, "ResolutionSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onCameraResolutionMenuSelect(I)V

    .line 201
    const/4 v0, 0x1

    goto :goto_0
.end method
