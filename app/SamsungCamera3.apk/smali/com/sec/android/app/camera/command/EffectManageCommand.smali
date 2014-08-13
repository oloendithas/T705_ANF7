.class public Lcom/sec/android/app/camera/command/EffectManageCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "EffectManageCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectManageCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sec/android/app/camera/command/EffectManageCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 33
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectManageCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v1, "EffectManageCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return v0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectManageCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    const-string v1, "EffectManageCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectManageCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    const-string v1, "EffectManageCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/EffectManageCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onManageEffectMenuCommand()V

    .line 54
    iget v0, p0, Lcom/sec/android/app/camera/command/EffectManageCommand;->mZOrder:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/command/EffectManageCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/command/EffectManageCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideEffectMenu()V

    .line 58
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
