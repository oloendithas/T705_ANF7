.class Lcom/sec/android/app/camera/CommonEngine$7;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine;->doPrepareVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 6607
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$7;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x400

    .line 6610
    const-string v1, "Recording Prepare Thread"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6612
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$7;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->initializeRecorder()V
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$3700(Lcom/sec/android/app/camera/CommonEngine;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6617
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$7;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6618
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 6619
    :goto_0
    return-void

    .line 6613
    :catch_0
    move-exception v0

    .line 6614
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
