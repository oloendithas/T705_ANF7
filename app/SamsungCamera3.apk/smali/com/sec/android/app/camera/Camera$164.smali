.class Lcom/sec/android/app/camera/Camera$164;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->initNfcState()V
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
    .line 17257
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 17259
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mIsNfcRestore:Z

    .line 17260
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getNfcState()I

    move-result v1

    # setter for: Lcom/sec/android/app/camera/Camera;->mNfcState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$8102(Lcom/sec/android/app/camera/Camera;I)I

    .line 17261
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isAndroidBeamEnabled()Z

    move-result v1

    # setter for: Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$8202(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 17263
    const-string v0, "Camera3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNfcState : mNfcState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mNfcState:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$8100(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAndroidBeamState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$8200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17265
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 17266
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setEnableDirectConnect(Z)V

    .line 17267
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mNfcState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$8100(Lcom/sec/android/app/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/CameraSettings;->androidBeamController(ZI)V

    .line 17271
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mNfcInitThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$8302(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 17272
    return-void

    .line 17269
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$164;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setEnableDirectConnect(Z)V

    goto :goto_0
.end method
