.class Lcom/sec/android/app/camera/Camera$12;
.super Landroid/os/ResultReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1824
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 1826
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1827
    const-string v0, "Camera3"

    const-string v1, "mShootingModesResultReceiver onReceiveResult - camera is destroying"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1832
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->refreshShootingModesList()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)V

    goto :goto_0
.end method
