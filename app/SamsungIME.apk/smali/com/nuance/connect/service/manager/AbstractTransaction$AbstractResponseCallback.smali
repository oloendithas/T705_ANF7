.class public abstract Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;
.super Ljava/lang/Object;
.source "AbstractTransaction.java"

# interfaces
.implements Lcom/nuance/connect/service/comm/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/AbstractTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbstractResponseCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/nuance/connect/service/comm/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    # getter for: Lcom/nuance/connect/service/manager/AbstractTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AbstractTransaction;->access$000(Lcom/nuance/connect/service/manager/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancel transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/AbstractTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/AbstractTransaction;->rollback()V

    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 49
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 2
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "downloaded"    # I
    .param p3, "total"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    # getter for: Lcom/nuance/connect/service/manager/AbstractTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AbstractTransaction;->access$000(Lcom/nuance/connect/service/manager/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onDownloadStatusResponse "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public onFailure(Lcom/nuance/connect/service/comm/Command;)V
    .locals 2
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 20
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/AbstractTransaction;->rollback()V

    .line 21
    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    # getter for: Lcom/nuance/connect/service/manager/AbstractTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AbstractTransaction;->access$000(Lcom/nuance/connect/service/manager/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onFileResponse"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onFileResponse not overloaded (If called, this needs to be overridden)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 2
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 38
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/service/manager/AbstractTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/AbstractTransaction;->rollback()V

    .line 39
    return-void
.end method
