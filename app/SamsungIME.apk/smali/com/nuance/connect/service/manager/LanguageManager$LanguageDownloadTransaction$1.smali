.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;
.super Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->requestLanguagePack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/nuance/connect/service/comm/Command;)V
    .locals 4
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to install."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    .line 303
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V
    invoke-static {v0, v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;Z)V

    .line 304
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->notifyUserOfFailedInstall(Ljava/lang/String;I)V
    invoke-static {v0, v1, v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$700(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;I)V

    .line 305
    return-void
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->processGetLanguagePackResponse(Lcom/nuance/connect/service/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$500(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Lcom/nuance/connect/service/comm/Response;)V

    .line 297
    return-void
.end method
