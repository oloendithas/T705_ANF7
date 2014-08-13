.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/LanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LanguageListTransaction"
.end annotation


# instance fields
.field private currentCommand:Lcom/nuance/connect/service/comm/Command;

.field private final taskAcknowledgement:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/LanguageManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "taskAcknowledgement"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->taskAcknowledgement:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->getList()V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->listResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method private getList()V
    .locals 5

    .prologue
    .line 155
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "12"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    const-string v3, "list"

    sget-object v4, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v2, v3, v4, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 159
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    new-instance v2, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;

    invoke-direct {v2, p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;-><init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;)V

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    .line 166
    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 167
    return-void
.end method

.method private listResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 170
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    .line 172
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager;->processRequestLanguagesListResponse(Lcom/nuance/connect/service/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$100(Lcom/nuance/connect/service/manager/LanguageManager;Lcom/nuance/connect/service/comm/Response;)V

    .line 173
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->finishTransaction(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->taskCompletedAcknowledgement(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "LanguageListTransaction"

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 195
    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method
