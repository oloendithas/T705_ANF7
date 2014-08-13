.class public Lcom/sec/android/app/camera/BootCamera;
.super Landroid/content/BroadcastReceiver;
.source "BootCamera.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v2, "CameraBoot"

    const-string v3, "Start Camera application"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v2, "CameraBoot"

    const-string v3, "Start Camera application - getcamerainfo"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v1}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 38
    .local v1, "mTempInfo":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 39
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 42
    .end local v1    # "mTempInfo":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_0
    return-void
.end method
