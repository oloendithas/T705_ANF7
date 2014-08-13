.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/LanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageDownloadTransaction"
.end annotation


# instance fields
.field private volatile canceled:Z

.field private downloadFilePath:Ljava/lang/String;

.field private final lang:Ljava/lang/String;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/connect/service/manager/LanguageManager;

.field private transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;)V
    .locals 8
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 227
    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    .line 228
    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LanguageDownloadTransaction(lang: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 229
    iput-object p2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    .line 231
    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Language is not available for download! ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 236
    iput-object v7, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    .line 237
    iput-object v7, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 284
    :goto_0
    return-void

    .line 243
    :cond_0
    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 245
    :try_start_0
    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    .line 246
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    .line 247
    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 248
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v5, "STEP"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v5, "INSTALL_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->requestLanguagePack()V

    .line 277
    :cond_1
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "DEFAULT_KEY"

    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    const-string v6, "PROP_DOWNLOAD_PERCENT"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 283
    const/4 v4, 0x1

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V
    invoke-static {p1, v4}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;Z)V

    goto :goto_0

    .line 254
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v5, "STEP"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 255
    .local v3, "step":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 258
    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    const-string v6, "FILE_LOCATION"

    invoke-virtual {v4, v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 261
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v5, "TRANSACTION_ID"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->transactionId:Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->ackLanguagePack()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 281
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "step":I
    :catchall_0
    move-exception v4

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v4

    .line 267
    .restart local v3    # "step":I
    :cond_3
    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 268
    :try_start_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->verifyWithHost()V

    goto :goto_1

    .line 271
    :cond_4
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v5, "STEP"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->requestLanguagePack()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method static synthetic access$1000(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->ackLanguagePack()V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->processAckLanguagePackResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->processGetLanguagePackResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    return-object v0
.end method

.method private ackLanguagePack()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ackLanguagePack() lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " trans="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 444
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ackLanguagePack canceled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 446
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    .line 460
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 450
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const-string v1, "ack"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    new-instance v3, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$3;

    invoke-direct {v3, p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$3;-><init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 456
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "10"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v3, "CHECKSUM"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "13"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private downloadLanguagePack()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 357
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ackLanguagePack canceled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    .line 431
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 366
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const-string v1, "downloadLangPack"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    new-instance v3, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;

    invoke-direct {v3, p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$2;-><init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 423
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "URL"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    .line 426
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    .line 427
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v5, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    .line 428
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v5, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 429
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "13"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "4"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private processAckLanguagePackResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v3, 0x0

    .line 463
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAckLanguagePackResponse()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 465
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "processAckLanguagePackResponse() -- SUCCESS sending language pack to cmk"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 467
    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->canceled:Z

    .line 468
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->verifyWithHost()V

    .line 474
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->notifyUserOfFailedInstall(Ljava/lang/String;I)V
    invoke-static {v0, v1, v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$700(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;I)V

    .line 471
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    .line 472
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$900(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private processGetLanguagePackResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processGetLanguagePackResponse() response.transactionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->transactionId:Ljava/lang/String;

    .line 328
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "TRANSACTION_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "URL"

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const/4 v1, 0x0

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;Z)V

    .line 334
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadLanguagePack()V

    .line 345
    :goto_0
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 339
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processGetLanguagePackResponse() server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifying user. giving up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    goto :goto_0
.end method

.method private requestLanguagePack()V
    .locals 4

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->canceled:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ackLanguagePack canceled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 289
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const-string v1, "get"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    new-instance v3, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;

    invoke-direct {v3, p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;-><init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 308
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "13"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "PROP_CORE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "PROP_CORE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v3, "PROP_CORE_VERSION"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private verifyWithHost()V
    .locals 4

    .prologue
    .line 477
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "STEP"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 480
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v2, "filePath"

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v3, "FILE_LOCATION"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 484
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 485
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const/4 v2, 0x0

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V
    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;Z)V

    .line 486
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 489
    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->canceled:Z

    .line 490
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 495
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V
    invoke-static {v0, v3}, Lcom/nuance/connect/service/manager/LanguageManager;->access$400(Lcom/nuance/connect/service/manager/LanguageManager;Z)V

    .line 496
    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 527
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 529
    :try_start_0
    const-string v1, "temp"

    const-string v2, ".download"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v3, v3, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    .line 531
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "FILE_LOCATION"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # getter for: Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextCommand="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0

    .line 500
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 541
    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public rollback()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 515
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 516
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->finishTransaction(Ljava/lang/String;)V

    .line 517
    return-void
.end method
