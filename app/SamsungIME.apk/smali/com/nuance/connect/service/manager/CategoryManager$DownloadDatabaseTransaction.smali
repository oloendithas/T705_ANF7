.class Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadDatabaseTransaction"
.end annotation


# instance fields
.field private volatile canceled:Z

.field private final catDb:Ljava/lang/String;

.field private currentCommand:Lcom/nuance/connect/service/comm/Command;

.field private downloadFilePath:Ljava/lang/String;

.field private isForcedForeground:Z

.field private volatile performInstall:Z

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

.field private subscribeOnly:Z

.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;

.field private final type:I


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;Z)V
    .locals 5
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subscribeOnly"    # Z

    .prologue
    .line 831
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->isForcedForeground:Z

    .line 832
    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    .line 833
    iput-boolean p3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->subscribeOnly:Z

    .line 834
    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    .line 835
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    .line 837
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    .line 838
    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p1, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    iget-object v2, p1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v3, "13"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 841
    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get() - can\'t fetch no known core ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; langId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v2

    const-string v3, "13"

    invoke-virtual {v2, p2, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; core: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v3

    const-string v4, "13"

    invoke-virtual {v3, p2, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; cores: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 860
    :cond_1
    :goto_0
    return-void

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "SUBSCRIBED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 856
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->subscribe()V

    goto :goto_0

    .line 857
    :cond_3
    if-nez p3, :cond_1

    .line 858
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->get()V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->ackResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->subscribeResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->sendFailMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    return-object v0
.end method

.method private ackResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v3, 0x1

    .line 1029
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ackResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1030
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->canceled:Z

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ackResponse canceled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1032
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    .line 1045
    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1037
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v3, v0, :cond_1

    .line 1038
    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->performInstall:Z

    .line 1043
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 1044
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$100(Lcom/nuance/connect/service/manager/CategoryManager;)V

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1100(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    .line 1041
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->sendFailMessage()V

    goto :goto_1
.end method

.method private downloadResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 6
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 991
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "downloadResponse()"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 992
    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->canceled:Z

    if-eqz v3, :cond_0

    .line 993
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "downloadResponse canceled"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 994
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    .line 1026
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/nuance/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "checksum":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v4, "10"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v4, "FILE_LOCATION"

    iget-object v5, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v4, "STEP"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1007
    .local v2, "transactionId":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1009
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v4, "ack"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 1010
    .local v0, "ack":Lcom/nuance/connect/service/comm/Command;
    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    .line 1011
    iget-object v3, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "10"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iput-object v3, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 1013
    new-instance v3, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$4;

    invoke-direct {v3, p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$4;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V

    iput-object v3, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    .line 1019
    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0

    .line 1022
    .end local v0    # "ack":Lcom/nuance/connect/service/comm/Command;
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "Attempting to acknowledge a category without needed data."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 1023
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    .line 1024
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1100(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private get()V
    .locals 4

    .prologue
    .line 904
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    const/4 v3, 0x0

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->sendDictionaryDownloadProgress(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$500(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;I)V

    .line 905
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v2, "get"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 906
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$2;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$2;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    .line 912
    iget-object v1, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "15"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 914
    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 915
    return-void
.end method

.method private getResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 9
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 918
    iget-boolean v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->canceled:Z

    if-eqz v6, :cond_0

    .line 919
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v4}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v4

    const-string v5, "getResponse canceled"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 920
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    .line 988
    :goto_0
    return-void

    .line 924
    :cond_0
    iget v6, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v5, v6, :cond_2

    .line 925
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    .line 926
    .local v0, "category":Ljava/lang/String;
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    .line 927
    .local v2, "transactionId":Ljava/lang/String;
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    .line 929
    .local v3, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v7, "51"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v7, "4"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v7, "STEP"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v7, "download"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    .line 936
    .local v1, "download":Lcom/nuance/connect/service/comm/Command;
    iput-object v3, v1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    .line 937
    const-string v6, "GET"

    iput-object v6, v1, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    .line 938
    iput-boolean v4, v1, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    .line 939
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v6

    sget-object v7, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v1, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    .line 940
    iput-boolean v5, v1, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    .line 941
    iput-boolean v5, v1, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 942
    iput-object v0, v1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 943
    new-instance v4, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;

    invoke-direct {v4, p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V

    iput-object v4, v1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    .line 983
    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0

    .line 985
    .end local v0    # "category":Ljava/lang/String;
    .end local v1    # "download":Lcom/nuance/connect/service/comm/Command;
    .end local v2    # "transactionId":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    .line 986
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->sendFailMessage()V

    goto :goto_0
.end method

.method private sendFailMessage()V
    .locals 3

    .prologue
    .line 1155
    iget v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1157
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1158
    const-string v1, "PROP_CATEGORY_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1161
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private subscribe()V
    .locals 4

    .prologue
    .line 863
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v2, "subscribe"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 865
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v1, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "15"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 867
    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    .line 873
    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 874
    return-void
.end method

.method private subscribeResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v4, 0x1

    .line 877
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSubscribeResponse(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 879
    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v4, v1, :cond_2

    .line 880
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    .line 881
    .local v0, "category":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "SUBSCRIBED"

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "subscribeResponse() - Initiating unsubscribe."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 884
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    .line 901
    .end local v0    # "category":Ljava/lang/String;
    :goto_0
    return-void

    .line 888
    .restart local v0    # "category":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->subscribeOnly:Z

    if-nez v1, :cond_1

    .line 889
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->get()V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "STEP"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 894
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0

    .line 897
    .end local v0    # "category":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->sendFailMessage()V

    .line 898
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1059
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->canceled:Z

    .line 1060
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "UNSUBSCRIBE_PENDING"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1066
    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1098
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1100
    :try_start_0
    const-string v1, "temp"

    const-string v2, ".download"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v3, v3, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    .line 1102
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "FILE_LOCATION"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v1

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public forceForeground()V
    .locals 1

    .prologue
    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->isForcedForeground:Z

    .line 1112
    return-void
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 1075
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 2

    .prologue
    .line 1118
    iget v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    packed-switch v1, :pswitch_data_0

    .line 1132
    :pswitch_0
    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->isForcedForeground:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    .line 1137
    .local v0, "returnType":Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    :goto_0
    return-object v0

    .line 1120
    .end local v0    # "returnType":Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    :pswitch_1
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    .line 1121
    .restart local v0    # "returnType":Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    goto :goto_0

    .line 1125
    .end local v0    # "returnType":Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    :pswitch_2
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    .line 1126
    .restart local v0    # "returnType":Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    goto :goto_0

    .line 1132
    .end local v0    # "returnType":Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    :cond_0
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    goto :goto_0

    .line 1118
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getType()I
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    return v0
.end method

.method public onEndProcessing()V
    .locals 5

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->finishTransaction(Ljava/lang/String;)V

    .line 1143
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->canceled:Z

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1146
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->performInstall:Z

    if-eqz v0, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/connect/service/manager/CategoryManager;->updateLastProcessed(Ljava/lang/String;JI)V

    .line 1148
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1400(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->install(Ljava/lang/String;)Z

    .line 1149
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1500(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->install(Ljava/lang/String;)Z

    .line 1150
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1600(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->install(Ljava/lang/String;)Z

    .line 1152
    :cond_1
    return-void
.end method

.method public rollback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1080
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1300(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    .line 1081
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1082
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error removing temporary file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 1086
    :cond_1
    iput-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    .line 1088
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    iput-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 1089
    return-void
.end method
