.class public Lcom/nuance/connect/service/manager/DlmSyncManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "DlmSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/DlmSyncManager$5;,
        Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x3e8

.field private static final CATEGORY_STATE:Ljava/lang/String; = "CATEGORY_STATE"

.field public static final COMMAND_BACKUP:Ljava/lang/String; = "backup"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_IMMEDIATE_EVENTS_GET:Ljava/lang/String; = "addEventsGet"

.field public static final COMMAND_IMMEDIATE_EVENTS_SEND:Ljava/lang/String; = "addEvents"

.field public static final COMMAND_PULL:Ljava/lang/String; = "pull"

.field public static final COMMAND_PULL_ACK:Ljava/lang/String; = "pullAck"

.field public static final COMMAND_PUSH:Ljava/lang/String; = "push"

.field public static final COMMAND_RESTORE_GET:Ljava/lang/String; = "restoreGet"

.field public static final COMMAND_RESTORE_REQUEST:Ljava/lang/String; = "restoreRequest"

.field public static final COMMAND_VERSION:I = 0x5

.field private static final DLM_EVENTS_LAST_SENT:Ljava/lang/String; = "DLM_EVENTS_LAST_SENT"

.field public static final DLM_EVENTS_SEND:Ljava/lang/String; = "DLM_EVENTS_SEND"

.field public static final DLM_SYNC_ENABLED:Ljava/lang/String; = "DLM_SYNC_ENABLED"

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final REALTIME_MESSAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final supportedCategories:[Ljava/lang/Integer;


# instance fields
.field private accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

.field private backupCategory:I

.field private backupEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesInUse:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private categoryState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;",
            ">;"
        }
    .end annotation
.end field

.field dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

.field private dlmEnabled:Z

.field protected immediateEventsDelay:I

.field private immediateEventsRunnable:Ljava/lang/Runnable;

.field private intListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field protected sendDlmEventsInterval:I

.field private userDlmEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 50
    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->SYNC:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 52
    sget-object v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->MANAGER_NAME:Ljava/lang/String;

    .line 77
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    .line 328
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PULL_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v1, v5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DLM_BACKUP_REQUIRED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v1, v3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_RESTORE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_BACKUP_BEGIN:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_BACKUP_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_BACKUP_END:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_DLM_EVENT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_HIGH_PRIORITY_EVENT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_DLM_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_DLM_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_SYNC_NOW:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    sput-object v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->REALTIME_MESSAGES:Ljava/util/List;

    .line 348
    new-instance v1, Landroid/util/Pair;

    const-string v2, "d"

    const-string v3, "3"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 4
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v3, 0x1

    .line 358
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 68
    const v1, 0x15180

    iput v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendDlmEventsInterval:I

    .line 69
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->immediateEventsDelay:I

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    .line 86
    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Z

    .line 88
    new-instance v1, Lcom/nuance/connect/service/manager/DlmSyncManager$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$1;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 108
    new-instance v1, Lcom/nuance/connect/service/manager/DlmSyncManager$2;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$2;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->immediateEventsRunnable:Ljava/lang/Runnable;

    .line 276
    new-instance v1, Lcom/nuance/connect/service/manager/DlmSyncManager$3;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$3;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    .line 295
    new-instance v1, Lcom/nuance/connect/service/manager/DlmSyncManager$4;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$4;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    .line 342
    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 359
    const/4 v1, 0x5

    iput v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 360
    sget-object v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 361
    sget-object v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 364
    new-array v0, v3, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 367
    .local v0, "acceptableResponses":[I
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "backup"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 368
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "restoreRequest"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 369
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "restoreGet"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 370
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "push"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 371
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "addEvents"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 372
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "addEventsGet"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 373
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "pullAck"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 374
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "pull"

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 379
    return-void

    .line 374
    :array_0
    .array-data 4
        0x19
        0x1a
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DlmSyncManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DlmSyncManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setDlmEventsTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DlmSyncManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DlmSyncManager;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->immediateEvents(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DlmSyncManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->disableDlmSync()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DlmSyncManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/DlmSyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DlmSyncManager;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DlmSyncManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->enableDlmSync()V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DlmSyncManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    return-void
.end method

.method private backup(Ljava/util/List;I)V
    .locals 8
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 734
    .local p1, "rawEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DLMManager.backup() # of raw events: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 735
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 736
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "    Backup already for unsupported category!  (Initialization failure?)"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 761
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupHappening()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 740
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "    Backup already in progress. Ignoring request."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 744
    :cond_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->startBackup()V

    .line 746
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 747
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 748
    .local v1, "events":Lorg/json/JSONArray;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 749
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 750
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 751
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 755
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 756
    .local v3, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "78"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string v5, "87"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v5, "backup"

    sget-object v6, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v5, v6, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 759
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 760
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method private checkBackupRequired()V
    .locals 4

    .prologue
    .line 1302
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v2}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1303
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "checkBackupRequired(): backup is required"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1304
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1305
    .local v1, "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired()V

    goto :goto_0

    .line 1307
    .end local v1    # "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;>;"
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->savePreferences()V

    .line 1309
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private checkDlmSync()V
    .locals 7

    .prologue
    .line 921
    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v4, :cond_1

    .line 922
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "checkDlmSync(): dlmEnabled not enabled"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 926
    .local v1, "currentCategory":I
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLMManager.checkDlmSync() currentCategory="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 927
    if-eqz v1, :cond_0

    .line 930
    sget-object v4, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 931
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "category not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 935
    :cond_3
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    .line 936
    .local v3, "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupRequired()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 937
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 938
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 939
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v5, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_BACKUP_REQUEST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v4, v5, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_1

    .line 940
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isRestoreRequested()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 941
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->restoreRequest(I)V

    goto :goto_1

    .line 942
    :cond_5
    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isPullRequested()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 943
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->pull(I)V

    goto/16 :goto_1
.end method

.method private disableDlmSync()V
    .locals 3

    .prologue
    .line 1312
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setEnabled(Z)V

    .line 1313
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1314
    .local v1, "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired()V

    .line 1315
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    goto :goto_0

    .line 1317
    .end local v1    # "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;>;"
    :cond_0
    return-void
.end method

.method private enableDlmSync()V
    .locals 3

    .prologue
    .line 1320
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1321
    .local v1, "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired()V

    .line 1322
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    goto :goto_0

    .line 1324
    .end local v1    # "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;>;"
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setEnabled(Z)V

    .line 1325
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    .line 1326
    return-void
.end method

.method private immediateEvents(I)V
    .locals 8
    .param p1, "category"    # I

    .prologue
    .line 825
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DLMManager.immediateEvents() cat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 826
    sget-object v5, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 827
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "category ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 847
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 832
    .local v1, "currentTime":J
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v5, p1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getHighPriorityEvents(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 833
    .local v3, "events":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 834
    .local v4, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "1"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string v5, "78"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string v5, "87"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   DLMManager.immediateEvents() category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " events count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 840
    const-string v5, "addEvents"

    sget-object v6, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v5, v6, v4}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 841
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/nuance/connect/service/comm/Command;->realTimeEnabled:Z

    .line 842
    const-string v5, "s"

    iput-object v5, v0, Lcom/nuance/connect/service/comm/Command;->realTimeTopic:Ljava/lang/String;

    .line 843
    const-string v5, "1"

    iput-object v5, v0, Lcom/nuance/connect/service/comm/Command;->realTimeSubTopic:Ljava/lang/String;

    .line 844
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 846
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v5, p1, v1, v2}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearHighPriorityEvents(IJ)V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v7

    .line 1275
    .local v7, "store":Lcom/nuance/connect/store/PersistentDataStore;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    .line 1276
    sget-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v8, v0, v2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1277
    .local v1, "category":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CATEGORY_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1278
    .local v6, "stateString":Ljava/lang/String;
    new-instance v5, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-direct {v5, v6}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v5, "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    iget-object v8, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1285
    .end local v1    # "category":I
    .end local v5    # "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    .end local v6    # "stateString":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/connect/service/ConnectClient;->isAccountLinked()Z

    move-result v4

    .line 1286
    .local v4, "linked":Z
    if-eqz v4, :cond_1

    const-string v8, "DLM_SYNC_ENABLED"

    invoke-interface {v7, v8, v4}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v8

    :goto_1
    iput-boolean v8, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    .line 1287
    return-void

    .line 1286
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private openDlmDB()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    .line 653
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->verifyDatabase()V

    .line 657
    :cond_0
    return-void
.end method

.method private processBackupResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 1072
    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1073
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, v2, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 1074
    .local v1, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "78"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1076
    .local v0, "category":I
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processBackupResponse cat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1078
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupComplete()V

    .line 1080
    .end local v0    # "category":I
    .end local v1    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private processGetImmediateEventsResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 10
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 1234
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "processGetImmediateEventsResponse"

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1235
    iget-boolean v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v7, :cond_1

    .line 1236
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "    DLM Sync Disabled. Ignoring request."

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget v7, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1240
    iget-object v5, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    .line 1241
    .local v5, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_2

    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1242
    :cond_2
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No category in response message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/nuance/connect/service/comm/Response;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 1248
    :cond_3
    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1249
    .local v1, "category":I
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v8, "87"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 1252
    .local v6, "records":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1253
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 1255
    :try_start_0
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 1256
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1257
    :catch_0
    move-exception v3

    .line 1258
    .local v3, "ex":Lorg/json/JSONException;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processGetImmediateEventsResponse() Issue loading object: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 1263
    .end local v3    # "ex":Lorg/json/JSONException;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1264
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "DLM_EVENT_DATA"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1265
    const-string v7, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1266
    const-string v7, "DLM_EVENT_ACK"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1267
    iget-object v7, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v8, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7, v8, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private processPullAckResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 1038
    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1039
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, v2, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 1040
    .local v1, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "78"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1041
    .local v0, "category":I
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPullAckResponse cat="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "78"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1042
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullComplete()V

    .line 1044
    .end local v0    # "category":I
    .end local v1    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private processPullResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 10
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 988
    iget v7, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 989
    iget-object v7, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v5, v7, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 990
    .local v5, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 992
    .local v1, "category":I
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 993
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v8, "87"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 995
    .local v6, "records":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processPullResponse cat="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " numEvents="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 997
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 998
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 1000
    :try_start_0
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v3

    .line 1002
    .local v3, "ex":Lorg/json/JSONException;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processPullResponse() Issue loading object: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 1006
    .end local v3    # "ex":Lorg/json/JSONException;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1007
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "DLM_EVENT_DATA"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1008
    const-string v7, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1009
    iget-object v7, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v8, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7, v8, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1011
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    iget-object v8, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->setPullTransactionId(Ljava/lang/String;)V

    .line 1030
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "category":I
    .end local v2    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "index":I
    .end local v5    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "records":Lorg/json/JSONArray;
    :cond_1
    :goto_2
    return-void

    .line 1013
    .restart local v1    # "category":I
    .restart local v5    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "Ignoring pull response because the category has not been used..."

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1014
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v7}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullComplete()V

    goto :goto_2

    .line 1016
    .end local v1    # "category":I
    .end local v5    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget v7, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/16 v8, 0x19

    if-ne v7, v8, :cond_4

    .line 1017
    iget-object v7, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v5, v7, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 1018
    .restart local v5    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1019
    .restart local v1    # "category":I
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restore required for category="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1021
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v7}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    .line 1022
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->restoreRequest(I)V

    .line 1023
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v7}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullComplete()V

    goto :goto_2

    .line 1024
    .end local v1    # "category":I
    .end local v5    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget v7, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_1

    .line 1025
    iget-object v7, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v5, v7, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 1026
    .restart local v5    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1027
    .restart local v1    # "category":I
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v7}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullComplete()V

    .line 1028
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected request. Clearing pull for cat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private processPushResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 6
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 1052
    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1053
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 1055
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPushResponse clearing cat="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "78"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " time="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1058
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    const-string v1, "78"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    .line 1062
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->push()V

    .line 1064
    .end local v0    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private processRestoreGetResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 17
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 1124
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v14, :cond_1

    .line 1125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v15, "    DLM Sync Disabled. Ignoring request."

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    const/4 v11, 0x0

    .line 1130
    .local v11, "reset":Z
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 1131
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v9, v14, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 1132
    .local v9, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "78"

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1133
    .local v3, "category":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processRestoreGetResponse cat="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v14, "78"

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v15, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1136
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v15, "87"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONArray;

    .line 1137
    .local v10, "records":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processRestoreGetResponse numEvents="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1139
    :try_start_0
    const-string v14, "temp"

    const-string v15, ".batch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 1140
    .local v13, "tempfile":Ljava/io/File;
    const/4 v7, 0x0

    .line 1141
    .local v7, "out":Ljava/io/OutputStreamWriter;
    const/4 v1, 0x0

    .line 1143
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v15, "UTF-8"

    invoke-direct {v8, v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1144
    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .local v8, "out":Ljava/io/OutputStreamWriter;
    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1146
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .local v2, "bw":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    if-ge v6, v14, :cond_5

    .line 1148
    :try_start_4
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1146
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1151
    :catch_0
    move-exception v5

    .line 1152
    .local v5, "ex":Lorg/json/JSONException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v15, "processRestoreGetResponse() Issue loading object: "

    invoke-interface {v14, v15, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1158
    .end local v5    # "ex":Lorg/json/JSONException;
    :catchall_0
    move-exception v14

    move-object v1, v2

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    move-object v7, v8

    .end local v6    # "index":I
    .end local v8    # "out":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/OutputStreamWriter;
    :goto_3
    if-eqz v1, :cond_2

    .line 1159
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1161
    :cond_2
    if-eqz v7, :cond_3

    .line 1162
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    :cond_3
    throw v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1165
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .end local v13    # "tempfile":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 1166
    .local v4, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v15, "processRestoreGetResponse() error creating temp file"

    invoke-interface {v14, v15, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1169
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    const-string v14, "78"

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v14}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreComplete()V

    .line 1180
    .end local v3    # "category":I
    .end local v9    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "records":Lorg/json/JSONArray;
    :goto_5
    if-eqz v11, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v14, v14, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    if-eqz v14, :cond_0

    .line 1181
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v9, v14, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 1182
    .restart local v9    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "78"

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1187
    .restart local v3    # "category":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    .line 1188
    .local v12, "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    if-eqz v12, :cond_0

    .line 1189
    invoke-virtual {v12}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreComplete()V

    .line 1190
    invoke-virtual {v12}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    goto/16 :goto_0

    .line 1155
    .end local v12    # "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "index":I
    .restart local v8    # "out":Ljava/io/OutputStreamWriter;
    .restart local v10    # "records":Lorg/json/JSONArray;
    .restart local v13    # "tempfile":Ljava/io/File;
    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1156
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendRestoreEvents(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1158
    if-eqz v2, :cond_6

    .line 1159
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1161
    :cond_6
    if-eqz v8, :cond_4

    .line 1162
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 1171
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "index":I
    .end local v8    # "out":Ljava/io/OutputStreamWriter;
    .end local v10    # "records":Lorg/json/JSONArray;
    .end local v13    # "tempfile":Ljava/io/File;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignoring restore response because the current category has not been used. cat="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1173
    const/4 v11, 0x1

    goto :goto_5

    .line 1177
    .end local v3    # "category":I
    .end local v9    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    const/4 v11, 0x1

    goto :goto_5

    .line 1158
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "category":I
    .restart local v7    # "out":Ljava/io/OutputStreamWriter;
    .restart local v9    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v10    # "records":Lorg/json/JSONArray;
    .restart local v13    # "tempfile":Ljava/io/File;
    :catchall_1
    move-exception v14

    goto/16 :goto_3

    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .restart local v8    # "out":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v14

    move-object v7, v8

    .end local v8    # "out":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/OutputStreamWriter;
    goto/16 :goto_3
.end method

.method private processRestoreRequestResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 6
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 1088
    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v3, :cond_1

    .line 1089
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "    DLM Sync Disabled. Ignoring request."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    iget v3, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1094
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, v3, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 1095
    .local v1, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "78"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1096
    .local v0, "category":I
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processRestoreRequestResponse cat="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v3, "78"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1098
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1099
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->setRestoreTransactionId(Ljava/lang/String;)V

    .line 1100
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->restoreGet(I)V

    goto :goto_0

    .line 1102
    :cond_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring restore because the current category has not been used. cat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1108
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    .line 1109
    .local v2, "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    if-eqz v2, :cond_0

    .line 1110
    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreComplete()V

    .line 1111
    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    goto/16 :goto_0
.end method

.method private processSendImmediateEventsResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processSendImmediateEventsResponse"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1209
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "    DLM Sync Disabled. Ignoring request."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1224
    :cond_0
    return-void
.end method

.method private pull(I)V
    .locals 5
    .param p1, "category"    # I

    .prologue
    .line 898
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLMManager.pull() category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 899
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isPullHappening()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "    Pull already in progress. Ignoring."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 910
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->startPull()V

    .line 905
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 906
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "78"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string v2, "pull"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 908
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 909
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method private pullAck(I)V
    .locals 6
    .param p1, "category"    # I

    .prologue
    .line 956
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLMManager.pullAck() category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 957
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->getPullTransactionId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 959
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Something\'s wrong, trying to ack a pull without having a transaction ID"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 960
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    .line 975
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isPullHappening()Z

    move-result v3

    if-nez v3, :cond_2

    .line 963
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error in state:  Expected pull to be in progress."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 967
    :cond_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    .line 968
    .local v2, "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 969
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "78"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v3, "4"

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->getPullTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v3, "pullAck"

    sget-object v4, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v3, v4, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 972
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 973
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 974
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullComplete()V

    goto :goto_0
.end method

.method private push()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 857
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "DLMManager.push()"

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 858
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->resetDlmEventsTimer()V

    .line 863
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v7}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getEventCategories()[I

    move-result-object v0

    .line 864
    .local v0, "categories":[I
    if-eqz v0, :cond_0

    array-length v7, v0

    if-nez v7, :cond_1

    .line 865
    :cond_0
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "DLMManager.push() found no categories; exitting push"

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 891
    :goto_0
    return-void

    .line 869
    :cond_1
    aget v1, v0, v10

    .line 870
    .local v1, "category":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 872
    .local v3, "currentTime":J
    sget-object v7, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 874
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "category not supported: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 875
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v3, v4}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    .line 876
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->push()V

    goto :goto_0

    .line 880
    :cond_2
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v7, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getEvents(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 881
    .local v5, "events":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 882
    .local v6, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "1"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v7, "78"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string v7, "88"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v7, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   DLMManager.push() category="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " events count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 888
    const-string v7, "push"

    sget-object v8, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v7, v8, v6}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v2

    .line 889
    .local v2, "command":Lcom/nuance/connect/service/comm/Command;
    iput-boolean v10, v2, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 890
    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto/16 :goto_0
.end method

.method private resetDlmEventsTimer()V
    .locals 4

    .prologue
    .line 691
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DLM_EVENTS_LAST_SENT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 692
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setDlmEventsTimer()V

    .line 693
    return-void
.end method

.method private restoreGet(I)V
    .locals 6
    .param p1, "category"    # I

    .prologue
    .line 796
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLMManager.restoreGet() category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 797
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 798
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The current category not in use.  Exitting... requestedCat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 816
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isRestoreRequested()Z

    move-result v3

    if-nez v3, :cond_1

    .line 802
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The category ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") does not have a pending restore request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 803
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreComplete()V

    goto :goto_0

    .line 808
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    .line 809
    .local v2, "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 810
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "78"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v3, "4"

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->getRestoreTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v3, "restoreGet"

    sget-object v4, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v3, v4, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 814
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 815
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method private restoreRequest(I)V
    .locals 5
    .param p1, "category"    # I

    .prologue
    .line 767
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLMManager.restoreRequest() cat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 768
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 769
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLMManager.restoreRequest() unknown category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 785
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isRestoreHappening()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 773
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "    Restore already in progress. Ignoring request."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 777
    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->startRestore()V

    .line 779
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 780
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "78"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v2, "restoreRequest"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 783
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 784
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 5

    .prologue
    .line 1290
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    .line 1291
    .local v2, "store":Lcom/nuance/connect/store/PersistentDataStore;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1292
    .local v1, "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CATEGORY_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1294
    .end local v1    # "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;>;"
    :cond_0
    const-string v3, "DLM_SYNC_ENABLED"

    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 1295
    return-void
.end method

.method private sendRestoreEvents(ILjava/lang/String;)V
    .locals 3
    .param p1, "category"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1197
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "DLM_EVENT_FILE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v1, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1199
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_RESTORE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1200
    return-void
.end method

.method private setDlmEventsTimer()V
    .locals 9

    .prologue
    .line 672
    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v5, :cond_0

    .line 673
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "    DLM Sync Disabled. Ignoring request to set timer."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 685
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v5

    const-string v6, "DLM_EVENTS_LAST_SENT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v5, v6, v7, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 679
    .local v1, "lastRun":J
    iget v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->sendDlmEventsInterval:I

    int-to-long v5, v5

    invoke-static {v5, v6, v1, v2}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v3

    .line 681
    .local v3, "nextRun":J
    new-instance v5, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v7, Lcom/nuance/connect/service/manager/DlmSyncManager;

    const-string v8, "DLM_EVENTS_SEND"

    invoke-direct {v5, v6, v7, v8}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Lcom/nuance/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    .line 683
    .local v0, "alarm":Lcom/nuance/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    .line 684
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDlmEventsTimer() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private timerDlmEvents()V
    .locals 7

    .prologue
    .line 699
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerDlmEvents() isFull="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v6}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 700
    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v4, :cond_0

    .line 701
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "    DLM Sync Disabled. Ignoring request."

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 723
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 706
    .local v1, "currentCategory":I
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    .line 707
    .local v3, "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v4}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupRequired()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupHappening()Z

    move-result v4

    if-nez v4, :cond_4

    .line 709
    :cond_2
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v4}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->reset()V

    .line 710
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v4}, Lcom/nuance/connect/sqlite/SQLDataSource;->openSafe()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 711
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v4}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->verifyDatabase()V

    .line 714
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 715
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v5, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_BACKUP_REQUEST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v4, v5, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_1

    .line 717
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_4
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupRequired()Z

    move-result v4

    if-nez v4, :cond_1

    .line 718
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->push()V

    goto :goto_1

    .line 722
    .end local v1    # "currentCategory":I
    .end local v3    # "state":Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
    :cond_5
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->resetDlmEventsTimer()V

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 631
    if-eqz p1, :cond_0

    .line 632
    const-string v0, "DLM_EVENTS_SEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->timerDlmEvents()V

    .line 636
    :cond_0
    return-void
.end method

.method protected createEvent(Landroid/os/Bundle;Z)V
    .locals 12
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "highPriority"    # Z

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "    Dlm disabled.  Ignoring event."

    invoke-interface {v0, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 584
    :goto_0
    return-void

    .line 561
    :cond_0
    const-string v0, "DLM_EVENT_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "event":Ljava/lang/String;
    const-string v0, "DLM_EVENT_APPNAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "appname":Ljava/lang/String;
    const-string v0, "DLM_EVENT_CATEGORY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 564
    .local v2, "category":I
    const-string v0, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 565
    .local v3, "timestamp":J
    const-string v0, "DLM_EVENT_LOCATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 566
    .local v6, "location":Ljava/lang/String;
    const-string v0, "DLM_EVENT_LOCALE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 567
    .local v7, "locale":Ljava/lang/String;
    const-string v0, "DLM_EVENT_INPUT_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 569
    .local v8, "inputType":I
    sget-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "category not supported: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual/range {v0 .. v8}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 576
    if-eqz p2, :cond_2

    .line 577
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->insertHighPriorityEvent(Ljava/lang/String;IJ)Z

    .line 578
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v9, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->immediateEventsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v9, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->immediateEventsRunnable:Ljava/lang/Runnable;

    iget v10, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->immediateEventsDelay:I

    int-to-long v10, v10

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkBackupRequired()V

    goto :goto_0
.end method

.method public deregister()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->close()V

    .line 665
    :cond_0
    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    .line 666
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->SYNC:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/connect/internal/common/ManagerService;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 401
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v4    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getRealTimeSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 354
    sget-object v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->REALTIME_MESSAGES:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->loadPreferences()V

    .line 641
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->openDlmDB()V

    .line 642
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->accountListener:Lcom/nuance/connect/service/manager/interfaces/AccountListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/manager/interfaces/AccountListener;)V

    .line 644
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V

    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DlmSyncManager needs to be modified for changes to service-lifecycle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFailure(Lcom/nuance/connect/service/comm/Command;)V
    .locals 4
    .param p1, "c"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 618
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DlmManager.onFailure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 619
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    const-string v2, "backup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    const-string v2, "pull"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    const-string v2, "pullAck"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    const-string v2, "restoreRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    const-string v2, "restoreGet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    :cond_0
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "78"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 623
    .local v0, "category":I
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pause()V

    .line 627
    .end local v0    # "category":I
    :cond_1
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 435
    const/4 v3, 0x0

    .line 436
    .local v3, "handled":Z
    sget-object v5, Lcom/nuance/connect/service/manager/DlmSyncManager$5;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 546
    :goto_0
    return v3

    .line 438
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 439
    .local v1, "data":Landroid/os/Bundle;
    const-string v5, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 440
    .local v0, "category":I
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_COMMAND_PULL_DLM_EVENTS category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 441
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 442
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested()V

    .line 443
    iget-object v6, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    pullRequested = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isPullRequested()Z

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    .line 446
    const/4 v3, 0x1

    .line 447
    goto :goto_0

    .line 450
    .end local v0    # "category":I
    .end local v1    # "data":Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 451
    .restart local v1    # "data":Landroid/os/Bundle;
    const-string v5, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 452
    .restart local v0    # "category":I
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_COMMAND_DLM_BACKUP_REQUIRED category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 453
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 454
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired()V

    .line 455
    iget-object v6, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    backupRequired = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupRequired()Z

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    .line 458
    const/4 v3, 0x1

    .line 459
    goto/16 :goto_0

    .line 462
    .end local v0    # "category":I
    .end local v1    # "data":Landroid/os/Bundle;
    :pswitch_2
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "MESSAGE_CLIENT_PROCESS_DLM_EVENTS_ACK"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 463
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DLM_EVENT_CATEGORY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 464
    .restart local v0    # "category":I
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->pullAck(I)V

    .line 465
    const/4 v3, 0x1

    .line 466
    goto/16 :goto_0

    .line 469
    .end local v0    # "category":I
    :pswitch_3
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "MESSAGE_CLIENT_DLM_RESTORE"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 470
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DLM_EVENT_CATEGORY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 471
    .restart local v0    # "category":I
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 472
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    .line 474
    :cond_2
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->restoreRequest(I)V

    .line 475
    const/4 v3, 0x1

    .line 476
    goto/16 :goto_0

    .line 479
    .end local v0    # "category":I
    :pswitch_4
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "MESSAGE_CLIENT_DLM_BACKUP_BEGIN"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 480
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 481
    .restart local v1    # "data":Landroid/os/Bundle;
    const-string v5, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->backupCategory:I

    .line 482
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->backupEvents:Ljava/util/List;

    .line 483
    const/4 v3, 0x1

    .line 484
    goto/16 :goto_0

    .line 487
    .end local v1    # "data":Landroid/os/Bundle;
    :pswitch_5
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "MESSAGE_CLIENT_DLM_BACKUP_EVENTS"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 489
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DLM_EVENT_DATA"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 491
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->backupEvents:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 492
    const/4 v3, 0x1

    .line 493
    goto/16 :goto_0

    .line 496
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "MESSAGE_CLIENT_DLM_BACKUP_END"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 497
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->backupEvents:Ljava/util/List;

    iget v6, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->backupCategory:I

    invoke-direct {p0, v5, v6}, Lcom/nuance/connect/service/manager/DlmSyncManager;->backup(Ljava/util/List;I)V

    .line 498
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->backupEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 499
    const/4 v3, 0x1

    .line 500
    goto/16 :goto_0

    .line 503
    :pswitch_7
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "MESSAGE_CLIENT_DLM_SYNC_NOW"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 504
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->push()V

    .line 505
    const/4 v3, 0x1

    .line 506
    goto/16 :goto_0

    .line 510
    :pswitch_8
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "MESSAGE_CLIENT_SEND_DLM_EVENT"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 512
    .restart local v1    # "data":Landroid/os/Bundle;
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/nuance/connect/service/manager/DlmSyncManager;->createEvent(Landroid/os/Bundle;Z)V

    .line 513
    const/4 v3, 0x1

    .line 514
    goto/16 :goto_0

    .line 518
    .end local v1    # "data":Landroid/os/Bundle;
    :pswitch_9
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "MESSAGE_CLIENT_SEND_HIGH_PRIORITY_EVENT"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 519
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 520
    .restart local v1    # "data":Landroid/os/Bundle;
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/nuance/connect/service/manager/DlmSyncManager;->createEvent(Landroid/os/Bundle;Z)V

    .line 521
    const/4 v3, 0x1

    .line 522
    goto/16 :goto_0

    .line 525
    .end local v1    # "data":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 526
    .restart local v1    # "data":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 527
    .local v4, "statusChanged":Z
    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Z

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eq v5, v6, :cond_5

    .line 528
    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Z

    .line 529
    const/4 v4, 0x1

    .line 534
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 535
    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Z

    if-eqz v5, :cond_6

    .line 536
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->enableDlmSync()V

    .line 542
    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 543
    goto/16 :goto_0

    .line 530
    :cond_5
    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    iget-boolean v6, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Z

    if-eq v5, v6, :cond_3

    .line 531
    const/4 v4, 0x1

    goto :goto_1

    .line 538
    :cond_6
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->disableDlmSync()V

    goto :goto_2

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 588
    const/4 v0, 0x0

    .line 589
    .local v0, "check":Z
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "pull"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 590
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->processPullResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 609
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->savePreferences()V

    .line 611
    if-eqz v0, :cond_1

    .line 612
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V

    .line 614
    :cond_1
    return-void

    .line 591
    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "pullAck"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 592
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->processPullAckResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 593
    const/4 v0, 0x1

    goto :goto_0

    .line 594
    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "push"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->processPushResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 596
    :cond_4
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "backup"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 597
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->processBackupResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 598
    const/4 v0, 0x1

    goto :goto_0

    .line 599
    :cond_5
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "restoreRequest"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 600
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->processRestoreRequestResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 601
    :cond_6
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "restoreGet"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 602
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->processRestoreGetResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 603
    const/4 v0, 0x1

    goto :goto_0

    .line 604
    :cond_7
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "addEvents"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 605
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->processSendImmediateEventsResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 606
    :cond_8
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "addEventsGet"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->processGetImmediateEventsResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0
.end method

.method public prepareForUpgrade()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->push()V

    .line 396
    return-void
.end method

.method protected sendCommand(Lcom/nuance/connect/service/comm/Command;)V
    .locals 3
    .param p1, "c"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-eqz v0, :cond_0

    .line 1336
    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 1341
    :goto_0
    return-void

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCommand(): dropping command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1339
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->onFailure(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 411
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLMManager.setEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 412
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-ne p1, v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->isAccountLinked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    .line 417
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z

    if-eqz v0, :cond_3

    .line 419
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->resetDlmEventsTimer()V

    goto :goto_0

    .line 415
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 422
    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->reset()V

    .line 423
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->verifyDatabase()V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 382
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 383
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->setDlmEventsTimer()V

    .line 384
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_DLM_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 386
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DLM_ADD_WORD_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 387
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DLM_SYNC_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 389
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 390
    return-void
.end method
