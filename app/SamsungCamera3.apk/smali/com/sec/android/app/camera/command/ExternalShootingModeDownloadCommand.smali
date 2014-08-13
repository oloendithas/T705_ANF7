.class public Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ExternalShootingModeDownloadCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalShootingModeDownloadCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 36
    return-void
.end method

.method private startShootingModeDownload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "samsungapps://CategoryList/0000004068"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    const v1, 0x4000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    const-string v2, "ExternalShootingModeDownloadCommand"

    const-string v3, "return isStartPreview.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    const-string v2, "ExternalShootingModeDownloadCommand"

    const-string v3, "return getIsLaunchGallery.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    const-string v2, "ExternalShootingModeDownloadCommand"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->startShootingModeDownload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mZOrder:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 66
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ExternalShootingModeDownloadCommand"

    const-string v2, "download error"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
