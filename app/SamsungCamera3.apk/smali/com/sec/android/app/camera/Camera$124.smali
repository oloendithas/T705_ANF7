.class Lcom/sec/android/app/camera/Camera$124;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 15249
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$124;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 15251
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$124;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$124;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    # setter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$5802(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 15252
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$124;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5800(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 15253
    return-void
.end method
