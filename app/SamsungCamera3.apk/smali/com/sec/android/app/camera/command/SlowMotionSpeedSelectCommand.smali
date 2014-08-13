.class public Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SlowMotionSpeedSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlowMotionSpeedSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mSlowMotionSpeed:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "commandid"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 38
    packed-switch p2, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 40
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mSlowMotionSpeed:I

    goto :goto_0

    .line 43
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mSlowMotionSpeed:I

    goto :goto_0

    .line 46
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mSlowMotionSpeed:I

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1770
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v3, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    const-string v3, "SlowMotionSpeedSelectCommand"

    const-string v4, "return isStartPreview.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return v2

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const-string v3, "SlowMotionSpeedSelectCommand"

    const-string v4, "return getIsLaunchGallery.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onRecordingModeMenuSelect(I)V

    .line 66
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mSlowMotionSpeed:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onSlowMotionSpeedSelect(I)V

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "menu":Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    .line 79
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_3

    .line 83
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    goto :goto_1
.end method
