.class Lcom/sec/android/app/camera/Camera$15;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1880
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1881
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.intent.action.switchgallery"

    if-ne v0, v1, :cond_2

    .line 1882
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isThumbnailButtonDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1883
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showNoImagePopup()V

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1885
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v2, "quickview"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1887
    :cond_2
    const-string v1, "android.intent.action.switchcamera"

    if-ne v0, v1, :cond_0

    .line 1888
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_0

    .line 1890
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onCameraModeChangeSelected()V

    goto :goto_0
.end method
