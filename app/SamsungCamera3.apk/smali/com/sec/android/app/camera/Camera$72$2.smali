.class Lcom/sec/android/app/camera/Camera$72$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$72;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$72;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$72;)V
    .locals 0

    .prologue
    .line 8587
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$72$2;->this$1:Lcom/sec/android/app/camera/Camera$72;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8589
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72$2;->this$1:Lcom/sec/android/app/camera/Camera$72;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72$2;->this$1:Lcom/sec/android/app/camera/Camera$72;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8590
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72$2;->this$1:Lcom/sec/android/app/camera/Camera$72;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8591
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$72$2;->this$1:Lcom/sec/android/app/camera/Camera$72;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$72;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetSingleEffect()V

    .line 8594
    :cond_0
    return-void
.end method
