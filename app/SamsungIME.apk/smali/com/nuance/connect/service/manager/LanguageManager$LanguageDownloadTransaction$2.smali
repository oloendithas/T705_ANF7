.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;
.super Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadLanguagePack()V
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
    .line 367
    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 6
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "downloaded"    # I
    .param p3, "total"    # I

    .prologue
    .line 371
    if-ltz p2, :cond_0

    .line 372
    int-to-float v2, p3

    const/high16 v3, 0x3f800000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 373
    .local v0, "fTotal":F
    int-to-float v2, p2

    div-float/2addr v2, v0

    const/high16 v3, 0x42c80000

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 374
    .local v1, "percent":I
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v2, v3, v4, v1}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->sendLanguageDownloadProgress(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$800(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;I)V

    .line 385
    .end local v0    # "fTotal":F
    .end local v1    # "percent":I
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v5, "13"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed to install due to insufficient storage."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 382
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    .line 383
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$900(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 396
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/nuance/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "checksum":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1000(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "FILE_LOCATION"

    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1000(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CHECKSUM"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1000(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "STEP"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "language pack file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 403
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const/4 v2, 0x0

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V
    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;Z)V

    .line 404
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    const/4 v2, 0x0

    # setter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1102(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->ackLanguagePack()V
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1200(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)V

    .line 408
    return-void
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 4
    .param p1, "c"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    const/4 v3, 0x0

    .line 412
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1000(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "FILE_LOCATION"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1000(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "STEP"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 417
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->notifyUserOfFailedInstall(Ljava/lang/String;I)V
    invoke-static {v0, v1, v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$700(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;I)V

    .line 418
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->finishTransaction(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Error"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shouldn\'t get here!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
