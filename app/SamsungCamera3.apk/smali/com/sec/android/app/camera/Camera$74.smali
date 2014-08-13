.class Lcom/sec/android/app/camera/Camera$74;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onOutFocusProcessProgress(II)V
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
    .line 8812
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$74;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 8815
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$74;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mOutFocusProgressingPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    .line 8816
    return-void
.end method
