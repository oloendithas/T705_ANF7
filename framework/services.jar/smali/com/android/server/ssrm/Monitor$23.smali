.class Lcom/android/server/ssrm/Monitor$23;
.super Landroid/content/BroadcastReceiver;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1290
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1292
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1293
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1294
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1296
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
