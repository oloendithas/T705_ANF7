.class Lcom/sec/android/app/camera/Camera$76;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onPanoramaProgressStitching(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$finalPanoramaView:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

.field final synthetic val$finalProgressingPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)V
    .locals 0

    .prologue
    .line 10799
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$76;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$76;->val$finalProgressingPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$76;->val$finalPanoramaView:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10802
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$76;->val$finalProgressingPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    .line 10803
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$76;->val$finalPanoramaView:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showCaptureLayout()V

    .line 10804
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$76;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 10806
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$76;->val$finalPanoramaView:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPostCaptureProgress(I)V

    .line 10807
    return-void
.end method
