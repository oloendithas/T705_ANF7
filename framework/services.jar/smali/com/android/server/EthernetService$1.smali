.class Lcom/android/server/EthernetService$1;
.super Landroid/content/BroadcastReceiver;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EthernetService;-><init>(Landroid/content/Context;Landroid/net/ethernet/EthernetStateTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EthernetService;


# direct methods
.method constructor <init>(Lcom/android/server/EthernetService;)V
    .locals 0

    .prologue
    .line 243
    .local p0, "this":Lcom/android/server/EthernetService$1;, "Lcom/android/server/EthernetService.1;"
    iput-object p1, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .local p0, "this":Lcom/android/server/EthernetService$1;, "Lcom/android/server/EthernetService.1;"
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 248
    iget-object v6, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v6}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "EthernetService"

    const-string v7, "receive Boot completed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget-object v6, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # setter for: Lcom/android/server/EthernetService;->mBootCompleted:Z
    invoke-static {v6, v4}, Lcom/android/server/EthernetService;->access$602(Lcom/android/server/EthernetService;Z)Z

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 252
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v6, "eth_device_conn"

    iget-object v7, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mConnectorConnected:Z
    invoke-static {v7}, Lcom/android/server/EthernetService;->access$700(Lcom/android/server/EthernetService;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_0
    invoke-static {v1, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "EthernetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ETH_DEVICE_CONNECTED is : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "eth_device_conn"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mConnectorConnected:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$700(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 256
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "EthernetService"

    const-string v4, "Boot completed and mConnectorConnected is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$800(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ethernet/EthernetStateTracker;->StartPolling()V

    .line 258
    # getter for: Lcom/android/server/EthernetService;->mResetEthernet:Z
    invoke-static {}, Lcom/android/server/EthernetService;->access$900()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 259
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "EthernetService"

    const-string v4, "ResetEthernet is required"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_3
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    invoke-virtual {v3, v8}, Lcom/android/server/EthernetService;->setEthState(I)V

    .line 261
    # setter for: Lcom/android/server/EthernetService;->mResetEthernet:Z
    invoke-static {v5}, Lcom/android/server/EthernetService;->access$902(Z)Z

    .line 263
    :cond_4
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    iget-object v4, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->isEthEnabled:I
    invoke-static {v4}, Lcom/android/server/EthernetService;->access$1000(Lcom/android/server/EthernetService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/EthernetService;->setEthState(I)V

    .line 330
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_5
    :goto_1
    return-void

    .restart local v1    # "cr":Landroid/content/ContentResolver;
    :cond_6
    move v3, v4

    .line 252
    goto :goto_0

    .line 265
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_7
    const-string v6, "android.net.ethernet.STATE_CONNECTOR_ADD"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 266
    iget-object v6, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v6}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "EthernetService"

    const-string v7, "receive ETH_STATE_CONNECTOR_ADD_ACTION"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_8
    iget-object v6, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # setter for: Lcom/android/server/EthernetService;->mConnectorConnected:Z
    invoke-static {v6, v4}, Lcom/android/server/EthernetService;->access$702(Lcom/android/server/EthernetService;Z)Z

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 270
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    const-string v4, "eth_device_conn"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "EthernetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ETH_DEVICE_CONNECTED is : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "eth_device_conn"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_9
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    new-instance v4, Landroid/os/HandlerThread;

    const-string v6, "EthernetService"

    invoke-direct {v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/EthernetService;->mEthernetThread:Landroid/os/HandlerThread;
    invoke-static {v3, v4}, Lcom/android/server/EthernetService;->access$1102(Lcom/android/server/EthernetService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 273
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mEthernetThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$1100(Lcom/android/server/EthernetService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 274
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    new-instance v4, Lcom/android/server/EthernetService$AsyncServiceHandler;

    iget-object v6, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    iget-object v7, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mEthernetThread:Landroid/os/HandlerThread;
    invoke-static {v7}, Lcom/android/server/EthernetService;->access$1100(Lcom/android/server/EthernetService;)Landroid/os/HandlerThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/server/EthernetService$AsyncServiceHandler;-><init>(Lcom/android/server/EthernetService;Landroid/os/Looper;)V

    # setter for: Lcom/android/server/EthernetService;->mAsyncServiceHandler:Lcom/android/server/EthernetService$AsyncServiceHandler;
    invoke-static {v3, v4}, Lcom/android/server/EthernetService;->access$1202(Lcom/android/server/EthernetService;Lcom/android/server/EthernetService$AsyncServiceHandler;)Lcom/android/server/EthernetService$AsyncServiceHandler;

    .line 275
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # invokes: Lcom/android/server/EthernetService;->startEthernetService()V
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$1300(Lcom/android/server/EthernetService;)V

    .line 277
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$600(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 278
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "EthernetService"

    const-string v4, "Boot completed and run start polling"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_a
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$800(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ethernet/EthernetStateTracker;->StartPolling()V

    .line 280
    # getter for: Lcom/android/server/EthernetService;->mResetEthernet:Z
    invoke-static {}, Lcom/android/server/EthernetService;->access$900()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 281
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "EthernetService"

    const-string v4, " ResetEthernet is required"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_b
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    invoke-virtual {v3, v8}, Lcom/android/server/EthernetService;->setEthState(I)V

    .line 283
    # setter for: Lcom/android/server/EthernetService;->mResetEthernet:Z
    invoke-static {v5}, Lcom/android/server/EthernetService;->access$902(Z)Z

    .line 285
    :cond_c
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    iget-object v4, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->isEthEnabled:I
    invoke-static {v4}, Lcom/android/server/EthernetService;->access$1000(Lcom/android/server/EthernetService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/EthernetService;->setEthState(I)V

    goto/16 :goto_1

    .line 287
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_d
    const-string v6, "android.net.ethernet.STATE_CONNECTOR_REMOVE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 288
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "EthernetService"

    const-string v6, "receive ETH_STATE_CONNECTOR_REMOVE_ACTION"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_e
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # setter for: Lcom/android/server/EthernetService;->mConnectorConnected:Z
    invoke-static {v3, v5}, Lcom/android/server/EthernetService;->access$702(Lcom/android/server/EthernetService;Z)Z

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 292
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    const-string v3, "eth_device_conn"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "EthernetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ETH_DEVICE_CONNECTED is : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "eth_device_conn"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_f
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mEthernetThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$1100(Lcom/android/server/EthernetService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 295
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # setter for: Lcom/android/server/EthernetService;->mEthernetThread:Landroid/os/HandlerThread;
    invoke-static {v3, v7}, Lcom/android/server/EthernetService;->access$1102(Lcom/android/server/EthernetService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 296
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # setter for: Lcom/android/server/EthernetService;->mAsyncServiceHandler:Lcom/android/server/EthernetService$AsyncServiceHandler;
    invoke-static {v3, v7}, Lcom/android/server/EthernetService;->access$1202(Lcom/android/server/EthernetService;Lcom/android/server/EthernetService$AsyncServiceHandler;)Lcom/android/server/EthernetService$AsyncServiceHandler;

    goto/16 :goto_1

    .line 297
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_10
    const-string v6, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 298
    const-string v6, "previous_eth_state"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 299
    .local v2, "ethernetState":I
    iget-object v6, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    if-ne v2, v3, :cond_13

    move v3, v4

    :goto_2
    # setter for: Lcom/android/server/EthernetService;->mEthernetEnabled:Z
    invoke-static {v6, v3}, Lcom/android/server/EthernetService;->access$1402(Lcom/android/server/EthernetService;Z)Z

    .line 300
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "EthernetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive ETH_STATE_CHANGED_ACTION : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mEthernetEnabled:Z
    invoke-static {v7}, Lcom/android/server/EthernetService;->access$1400(Lcom/android/server/EthernetService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_11
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mEthernetEnabled:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$1400(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-ne v3, v4, :cond_12

    .line 304
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    invoke-virtual {v3, v5}, Lcom/android/server/EthernetService;->setUserDisabled(Z)V

    .line 306
    :cond_12
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # invokes: Lcom/android/server/EthernetService;->evaluateTrafficStatsPolling()V
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$1500(Lcom/android/server/EthernetService;)V

    goto/16 :goto_1

    :cond_13
    move v3, v5

    .line 299
    goto :goto_2

    .line 310
    .end local v2    # "ethernetState":I
    :cond_14
    const-string v3, "android.net.ethernet.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 311
    iget-object v4, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, v4, Lcom/android/server/EthernetService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 312
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "EthernetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive NETWORK_STATE_CHANGED_ACTION networkInfo State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    iget-object v5, v5, Lcom/android/server/EthernetService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_15
    sget-object v3, Lcom/android/server/EthernetService$3;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v4, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    iget-object v4, v4, Lcom/android/server/EthernetService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 326
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "EthernetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNKNOWN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    iget-object v5, v5, Lcom/android/server/EthernetService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 317
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "EthernetService"

    const-string v4, "CONNECTED : Start TrafficStats Polling "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_16
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # invokes: Lcom/android/server/EthernetService;->evaluateTrafficStatsPolling()V
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$1500(Lcom/android/server/EthernetService;)V

    goto/16 :goto_1

    .line 321
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "EthernetService"

    const-string v4, "DISCONNECTED : Stop TrafficStats Polling "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_17
    iget-object v3, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    # invokes: Lcom/android/server/EthernetService;->evaluateTrafficStatsPolling()V
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$1500(Lcom/android/server/EthernetService;)V

    goto/16 :goto_1

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
