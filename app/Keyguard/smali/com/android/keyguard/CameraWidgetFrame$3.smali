.class Lcom/android/keyguard/CameraWidgetFrame$3;
.super Ljava/lang/Object;
.source "CameraWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CameraWidgetFrame;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/keyguard/CameraWidgetFrame$3;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame$3;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    # getter for: Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/CameraWidgetFrame;->access$200(Lcom/android/keyguard/CameraWidgetFrame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$3;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    # getter for: Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/keyguard/CameraWidgetFrame;->access$800(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method
