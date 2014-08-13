.class Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryListTransaction"
.end annotation


# instance fields
.field private currentCommand:Lcom/nuance/connect/service/comm/Command;

.field private final taskAcknowledgement:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "taskAcknowledgement"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->taskAcknowledgement:Ljava/lang/String;

    .line 415
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->getList()V

    .line 416
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->listResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method private getList()V
    .locals 5

    .prologue
    .line 419
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 420
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v3, "list"

    sget-object v4, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v2, v3, v4, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 421
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 423
    new-instance v2, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction$1;

    invoke-direct {v2, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;)V

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    .line 429
    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 430
    return-void
.end method

.method private listResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 433
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 435
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->processListResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 436
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->taskCompletedAcknowledgement(Ljava/lang/String;)V

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    const-string v0, "CategoryListCommand"

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 457
    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->finishTransaction(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method
