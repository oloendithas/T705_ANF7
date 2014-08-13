.class Lcom/sec/android/app/camera/Camera$3;
.super Landroid/telephony/PhoneStateListener;
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
    .line 1206
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1209
    const-string v0, "Camera3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    packed-switch p1, :pswitch_data_0

    .line 1225
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCallStateOffHook:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$2002(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1226
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCallStatus(I)V

    .line 1231
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 1219
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCallStateOffHook:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Camera;->access$2002(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1220
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCallStatus(I)V

    goto :goto_0

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
