.class Lcom/nuance/connect/internal/ClientBinderInternal;
.super Ljava/lang/Object;
.source "ClientBinderInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ClientBinder;


# static fields
.field private static final MINIMUM_DELAY:I = 0x2710


# instance fields
.field private connectBound:Z

.field private context:Landroid/content/Context;

.field private lastMessageSent:J

.field private lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private mConnectConnection:Landroid/content/ServiceConnection;

.field private final mInboundHandler:Landroid/os/Handler;

.field private final mInboundMessenger:Landroid/os/Messenger;

.field private mOutboundMessenger:Landroid/os/Messenger;

.field private final messageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private restart:Z

.field private final rwLock:[I

.field private service:Landroid/content/Intent;

.field private serviceReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "lifecycleCallback"    # Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 47
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lastMessageSent:J

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->rwLock:[I

    .line 72
    new-instance v0, Lcom/nuance/connect/internal/ClientBinderInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ClientBinderInternal$1;-><init>(Lcom/nuance/connect/internal/ClientBinderInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mConnectConnection:Landroid/content/ServiceConnection;

    .line 61
    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.nuance.connect.service.ConnectClient"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    .line 64
    iput-object p2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundMessenger:Landroid/os/Messenger;

    .line 66
    iput-object p3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ClientBinderInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ClientBinderInternal;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ClientBinderInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ClientBinderInternal;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ClientBinderInternal;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/internal/ClientBinderInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ClientBinderInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z

    return p1
.end method

.method private bind()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 121
    iget-boolean v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-nez v1, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mConnectConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-direct {p0, v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    goto :goto_0
.end method

.method private sendUnregisterClient()V
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UNREGISTER_CLIENT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 292
    :cond_0
    return-void
.end method

.method private setConnectBoundState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Z

    .line 115
    return-void
.end method

.method private unbind()V
    .locals 4

    .prologue
    .line 135
    iget-boolean v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mConnectConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 141
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    .line 142
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 143
    .local v0, "stopped":Z
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbind() stopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 145
    .end local v0    # "stopped":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastMessageSent()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lastMessageSent:J

    return-wide v0
.end method

.method public getLock()[I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->rwLock:[I

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z

    .line 310
    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendUnregisterClient()V

    .line 311
    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->unbind()V

    .line 312
    return-void
.end method

.method protected processQueuedMessages()V
    .locals 4

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "drained":Ljava/util/List;, "Ljava/util/List<Landroid/os/Message;>;"
    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 155
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 157
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-nez v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->bind()V

    .line 318
    :cond_0
    return-void
.end method

.method public sendConnectMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    .locals 6
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;

    .prologue
    const/high16 v3, -0x80000000

    .line 248
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/high16 v3, -0x80000000

    .line 253
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z
    .locals 6
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 258
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    .locals 6
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;

    .prologue
    const/high16 v3, -0x80000000

    .line 268
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/high16 v3, -0x80000000

    .line 273
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z
    .locals 6
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 278
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method protected sendMessage(Landroid/os/Message;Z)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "priority"    # Z

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->getLock()[I

    move-result-object v5

    monitor-enter v5

    .line 165
    const/4 v3, 0x0

    .line 167
    .local v3, "returnValue":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lastMessageSent:J

    .line 169
    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " priority:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 170
    iget-boolean v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;

    if-nez v4, :cond_1

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "rebind!"

    invoke-interface {v4, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->bind()V

    .line 175
    :cond_1
    iget-boolean v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Z

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 177
    :try_start_1
    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundMessenger:Landroid/os/Messenger;

    iput-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 178
    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    const/4 v3, 0x1

    .line 192
    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 193
    :try_start_2
    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_4
    monitor-exit v5

    return v3

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException re="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 182
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    goto :goto_0

    .line 196
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 183
    :catch_1
    move-exception v1

    .line 185
    .local v1, "npe":Ljava/lang/NullPointerException;
    :try_start_3
    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException npe="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    .line 188
    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z
    .locals 4
    .param p1, "what"    # Lcom/nuance/connect/internal/common/InternalMessages;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "priority"    # Z

    .prologue
    .line 200
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 203
    .local v1, "msg":Landroid/os/Message;
    :try_start_0
    instance-of v2, p2, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 232
    iput p4, v1, Landroid/os/Message;->arg2:I

    .line 234
    invoke-virtual {p0, v1, p5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Landroid/os/Message;Z)Z

    move-result v2

    return v2

    .line 207
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v2, p2, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/io/Serializable;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 210
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 226
    .end local v0    # "data":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 211
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 215
    .end local v0    # "data":Landroid/os/Bundle;
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 219
    .end local v0    # "data":Landroid/os/Bundle;
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 223
    .end local v0    # "data":Landroid/os/Bundle;
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v2, p2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 224
    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setClientComplete()V
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Z

    .line 306
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->bind()V

    .line 285
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_START_IMMEDIDATELY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 286
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z

    .line 297
    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendUnregisterClient()V

    .line 298
    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->unbind()V

    .line 299
    return-void
.end method
