.class Lcom/nuance/connect/service/comm/CommandQueue$6;
.super Ljava/lang/Object;
.source "CommandQueue.java"

# interfaces
.implements Lcom/nuance/connect/service/comm/ConnectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDelay()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->defaultDelaySeconds:I
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$100(Lcom/nuance/connect/service/comm/CommandQueue;)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$2100(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->requestKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$2200(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$2000(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAccountInvalidated()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->invalidAccount()V

    .line 536
    return-void
.end method

.method public onCancel(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1
    .param p1, "cmd"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onCancel(Lcom/nuance/connect/service/comm/Command;)V

    .line 467
    :cond_0
    return-void
.end method

.method public onDeviceInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # setter for: Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$2102(Lcom/nuance/connect/service/comm/CommandQueue;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # setter for: Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$2002(Lcom/nuance/connect/service/comm/CommandQueue;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DEREGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 530
    return-void
.end method

.method public onDownloadStatus(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 1
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "downloaded"    # I
    .param p3, "total"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/service/comm/ResponseCallback;->onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V

    .line 518
    :cond_0
    return-void
.end method

.method public onFailure(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "statusCode"    # I
    .param p3, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->active:Z
    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v1, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onFailure(Lcom/nuance/connect/service/comm/Command;)V

    .line 423
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method public onIOException(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V

    .line 475
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 8
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/16 v7, 0x2e

    .line 480
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->active:Z
    invoke-static {v5}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    .line 485
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v3, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    .line 486
    .local v3, "responder":Lcom/nuance/connect/service/comm/ResponseCallback;
    if-eqz v3, :cond_2

    .line 488
    iget-object v5, p1, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 489
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v4, "tempfile":Ljava/io/File;
    iput-object v4, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    .line 491
    invoke-interface {v3, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onFileResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 508
    .end local v4    # "tempfile":Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    iget-object v5, v5, Lcom/nuance/connect/service/comm/CommandQueue;->responseListener:Lcom/nuance/connect/service/ConnectClient$ResponseListener;

    if-eqz v5, :cond_0

    .line 509
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    iget-object v5, v5, Lcom/nuance/connect/service/comm/CommandQueue;->responseListener:Lcom/nuance/connect/service/ConnectClient$ResponseListener;

    invoke-interface {v5, p1}, Lcom/nuance/connect/service/ConnectClient$ResponseListener;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 493
    :cond_3
    invoke-interface {v3, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 494
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->broadcastResponseEnabled:Z
    invoke-static {v5}, Lcom/nuance/connect/service/comm/CommandQueue;->access$600(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v2, "intentContent":Ljava/lang/StringBuilder;
    const-string v5, "com.nuance.connect.service.ConnectClient"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v6, v6, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v6, v6, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v5}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v5}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcast: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "delaySeconds"    # I
    .param p3, "statusCode"    # I
    .param p4, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;
    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 433
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "delay"

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .end local p2    # "delaySeconds":I
    :cond_0
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    const-string v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    const-string v2, "message"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 438
    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;
    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2, v3, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 440
    return-void
.end method

.method public onSessionInvalidated()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$2002(Lcom/nuance/connect/service/comm/CommandQueue;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    return-void
.end method

.method public onSuccess(Lcom/nuance/connect/service/comm/Command;)V
    .locals 5
    .param p1, "cmd"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 445
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;
    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->resume()V

    .line 447
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z
    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1700(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 453
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # setter for: Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z
    invoke-static {v1, v4}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1702(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z

    .line 457
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # setter for: Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I
    invoke-static {v1, v3}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1802(Lcom/nuance/connect/service/comm/CommandQueue;I)I

    .line 458
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # setter for: Lcom/nuance/connect/service/comm/CommandQueue;->backdownDelay:I
    invoke-static {v1, v3}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1902(Lcom/nuance/connect/service/comm/CommandQueue;I)I

    .line 459
    return-void
.end method

.method public onValidateDeviceProperties(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 540
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->active:Z
    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1300(Lcom/nuance/connect/service/comm/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_VALIDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 546
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 547
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1300(Lcom/nuance/connect/service/comm/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
