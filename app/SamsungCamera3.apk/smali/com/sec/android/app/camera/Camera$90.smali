.class Lcom/sec/android/app/camera/Camera$90;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showRemoteViewFinderWifiDirectGuideDialog()V
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
    .line 14730
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$90;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v1, 0x0

    .line 14732
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$90;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$90;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    # setter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/Camera;->access$5802(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 14733
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$90;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5800(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 14734
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$90;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14735
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$90;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderWifiDirectGuideDialog(I)V

    .line 14736
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 14735
    goto :goto_0
.end method
