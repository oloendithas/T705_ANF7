.class public Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;
.super Landroid/os/Handler;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StateMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 937
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got message..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    if-nez v0, :cond_0

    .line 945
    :goto_0
    return-void

    .line 941
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 942
    const-wide/16 v0, 0x400

    const-string v2, "Recording..."

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/AbstractCeState;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
