.class Lcom/sec/android/app/camera/Camera$167;
.super Landroid/os/Handler;
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
    .line 17616
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$167;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 17618
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$167;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 17629
    :goto_0
    return-void

    .line 17620
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 17622
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$167;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->handleCameraTemperatureCheck()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$8400(Lcom/sec/android/app/camera/Camera;)V

    .line 17623
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$167;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->handleFlashTemperatureCheck()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$8500(Lcom/sec/android/app/camera/Camera;)V

    .line 17624
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$167;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraTemperatureHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    # getter for: Lcom/sec/android/app/camera/Camera;->mThermistorDuration:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$8600()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 17620
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
