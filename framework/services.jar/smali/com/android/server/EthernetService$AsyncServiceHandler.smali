.class Lcom/android/server/EthernetService$AsyncServiceHandler;
.super Landroid/os/Handler;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EthernetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EthernetService;


# direct methods
.method constructor <init>(Lcom/android/server/EthernetService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 105
    .local p0, "this":Lcom/android/server/EthernetService$AsyncServiceHandler;, "Lcom/android/server/EthernetService<Tsyncronized;>.AsyncServiceHandler;"
    iput-object p1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    .line 106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/server/EthernetService$AsyncServiceHandler;, "Lcom/android/server/EthernetService<Tsyncronized;>.AsyncServiceHandler;"
    const-wide/16 v7, 0x1388

    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 161
    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EthernetServicehandler.handleMessage ignoring msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 113
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EthernetService"

    const-string v2, "New client listening to asynchronous messages"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mClients:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$100(Lcom/android/server/EthernetService;)Ljava/util/List;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client connection failure, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 123
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "EthernetService"

    const-string v2, "Send failed, client connection lost"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mClients:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$100(Lcom/android/server/EthernetService;)Ljava/util/List;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client connection lost with reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 131
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 132
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$200(Lcom/android/server/EthernetService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 137
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "EthernetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ETH_ENABLE_TRAFFIC_STATS_POLL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_5
    iget-object v3, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_6

    :goto_2
    # setter for: Lcom/android/server/EthernetService;->mEnableTrafficStatsPoll:Z
    invoke-static {v3, v1}, Lcom/android/server/EthernetService;->access$302(Lcom/android/server/EthernetService;Z)Z

    .line 140
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # operator++ for: Lcom/android/server/EthernetService;->mTrafficStatsPollToken:I
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$408(Lcom/android/server/EthernetService;)I

    .line 141
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mEnableTrafficStatsPoll:Z
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$300(Lcom/android/server/EthernetService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # invokes: Lcom/android/server/EthernetService;->notifyOnDataActivity()V
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$500(Lcom/android/server/EthernetService;)V

    .line 143
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mTrafficStatsPollToken:I
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$400(Lcom/android/server/EthernetService;)I

    move-result v1

    invoke-static {p0, v6, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 139
    goto :goto_2

    .line 150
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->LOCAL_LOG:Z
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "EthernetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ETH_TRAFFIC_STATS_POLL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mTrafficStatsPollToken:I
    invoke-static {v3}, Lcom/android/server/EthernetService;->access$400(Lcom/android/server/EthernetService;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # invokes: Lcom/android/server/EthernetService;->notifyOnDataActivity()V
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$500(Lcom/android/server/EthernetService;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/EthernetService$AsyncServiceHandler;->this$0:Lcom/android/server/EthernetService;

    # getter for: Lcom/android/server/EthernetService;->mTrafficStatsPollToken:I
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$400(Lcom/android/server/EthernetService;)I

    move-result v1

    invoke-static {p0, v6, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
    .end sparse-switch
.end method
