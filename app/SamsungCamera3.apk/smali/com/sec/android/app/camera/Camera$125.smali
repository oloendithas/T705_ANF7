.class Lcom/sec/android/app/camera/Camera$125;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showVideoAudiozoomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 15255
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$125;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$125;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x1

    .line 15257
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$125;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15258
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$125;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setVideoAudiozoomDialog(I)V

    .line 15260
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$125;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isConnectHeadSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15261
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$125;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioZoom(I)V

    .line 15263
    :cond_1
    return-void
.end method
