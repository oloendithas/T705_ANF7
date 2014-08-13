.class Lcom/sec/android/app/camera/Camera$14;
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
    .line 1857
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1861
    const-string v0, "Camera3"

    const-string v1, "do not invisible surfaceView because activity is resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsSurfaceInvisible:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3700(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mGLInitialized:Z

    if-nez v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1867
    const-string v0, "Camera3"

    const-string v1, "mGalleryOnLockscreenReceiver : invisible surfaceView when transparent gallery completed image loading."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 1873
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsSurfaceInvisible:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$3702(Lcom/sec/android/app/camera/Camera;Z)Z

    goto :goto_0
.end method
