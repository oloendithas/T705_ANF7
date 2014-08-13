.class public Lcom/nuance/connect/service/manager/SessionManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/SessionManager$2;
    }
.end annotation


# static fields
.field public static final COMMAND_CREATE:Ljava/lang/String; = "create"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_INVALIDATE:Ljava/lang/String; = "invalidate"

.field public static final COMMAND_POLL:Ljava/lang/String; = "poll"

.field public static final COMMAND_VALIDATE:Ljava/lang/String; = "validate"

.field public static final COMMAND_VERSION:I = 0x2

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final MINIMUM_POLLING_INVERVAL:I = 0x1

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

.field private static final SESSION_ID_KEY:Ljava/lang/String; = "SESSION_ID"

.field private static final SESSION_LAST_POLL:Ljava/lang/String; = "SESSION_LAST_POLL"

.field private static final SESSION_POLL_INTERVAL:Ljava/lang/String; = "SESSION_POLL_INTERVAL"

.field private static final SESSION_TRANSID_KEY:Ljava/lang/String; = "SESSION_TRANSID"


# instance fields
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

.field private lastPollTime:J

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field protected pollingInterval:I

.field private volatile sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 34
    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v1, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    .line 71
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RESET_SESSION:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    sput-object v1, Lcom/nuance/connect/service/manager/SessionManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/nuance/connect/service/manager/SessionManager;->REALTIME_MESSAGES:Ljava/util/List;

    .line 83
    new-instance v1, Landroid/util/Pair;

    const-string v2, "d"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Landroid/util/Pair;

    const-string v2, "b"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 4
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v3, 0x2

    .line 93
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    .line 53
    new-instance v0, Lcom/nuance/connect/service/manager/SessionManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/SessionManager$1;-><init>(Lcom/nuance/connect/service/manager/SessionManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 77
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 94
    iput v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 95
    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 99
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "create"

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 103
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 107
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "invalidate"

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 111
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "poll"

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 115
    return-void

    .line 99
    :array_0
    .array-data 4
        0x1
        0x11
    .end array-data

    .line 103
    :array_1
    .array-data 4
        0x1
        0x0
    .end array-data

    .line 107
    :array_2
    .array-data 4
        0x1
        0x0
    .end array-data

    .line 111
    :array_3
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/SessionManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/SessionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/SessionManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->determineNextPoll()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/SessionManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/SessionManager;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager;->poll(Z)V

    return-void
.end method

.method private createSession()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    const-string v1, "create"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 229
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    .line 231
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 233
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 234
    return-void
.end method

.method private determineNextPoll()V
    .locals 7

    .prologue
    .line 330
    iget v3, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v3, v4, v5, v6}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v1

    .line 331
    .local v1, "triggerTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 333
    :goto_0
    new-instance v3, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v5, Lcom/nuance/connect/service/manager/SessionManager;

    const-string v6, "poll"

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lcom/nuance/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    .line 334
    .local v0, "alarm":Lcom/nuance/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->cancel()V

    .line 335
    iget v3, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    if-lez v3, :cond_1

    .line 336
    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    .line 337
    iget-object v3, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "determineNextPoll "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 341
    :goto_1
    return-void

    .line 331
    .end local v0    # "alarm":Lcom/nuance/connect/util/Alarm;
    :cond_0
    iget v3, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(J)J

    move-result-wide v1

    goto :goto_0

    .line 339
    .restart local v0    # "alarm":Lcom/nuance/connect/util/Alarm;
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "polling manually; not scheduling next poll"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private invalidateSession()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 260
    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 271
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "3"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v2, "invalidate"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 267
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    .line 268
    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    .line 270
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    .line 345
    .local v0, "prefs":Lcom/nuance/connect/store/PersistentDataStore;
    const-string v1, "SESSION_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 346
    const-string v1, "SESSION_TRANSID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 347
    const-string v1, "SESSION_LAST_POLL"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    .line 348
    return-void
.end method

.method private poll(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-static {v3, v4, v5, v6}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    if-eqz p1, :cond_1

    .line 288
    :cond_0
    const-string v1, "poll"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 289
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 293
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    .line 295
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    .line 296
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_REQUESTED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 299
    .end local v0    # "command":Lcom/nuance/connect/service/comm/Command;
    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->determineNextPoll()V

    .line 300
    return-void
.end method

.method private processCreateSessionResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 238
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 242
    :cond_0
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->poll(Z)V

    goto :goto_1

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processInvalidateSessionResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 274
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->resetSession()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->invalidateSession()V

    goto :goto_0
.end method

.method private processPollResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 303
    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SYSTEM_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 309
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v3, "29"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v3, "29"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    .line 313
    :try_start_0
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v3, "29"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 314
    .local v1, "tasks":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2, v1}, Lcom/nuance/connect/service/ConnectClient;->performTasks(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v1    # "tasks":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Exception processing poll responses"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    goto :goto_0
.end method

.method private resetSession()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 363
    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    .line 365
    return-void
.end method

.method private savePreferences()V
    .locals 4

    .prologue
    .line 351
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    .line 352
    .local v0, "prefs":Lcom/nuance/connect/store/PersistentDataStore;
    const-string v1, "SESSION_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    const-string v1, "SESSION_TRANSID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    const-string v1, "SESSION_LAST_POLL"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->lastPollTime:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 355
    const-string v1, "SESSION_POLL_INTERVAL"

    iget v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    .line 356
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const-string v0, "poll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->poll(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public deregister()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    .line 171
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    .line 164
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 156
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
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
    .line 89
    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager;->REALTIME_MESSAGES:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->loadPreferences()V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->loadPreferences()V

    .line 135
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 136
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "handled":Z
    sget-object v2, Lcom/nuance/connect/service/manager/SessionManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 202
    :goto_0
    return v1

    .line 183
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Message: Command Session Create"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 184
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->createSession()V

    .line 185
    const/4 v1, 0x1

    .line 186
    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Message: Command Session Poll"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 191
    .local v0, "force":Z
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->poll(Z)V

    .line 192
    const/4 v1, 0x1

    .line 193
    goto :goto_0

    .line 196
    .end local v0    # "force":Z
    :pswitch_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Message: MESSAGE_RESET_SESSION"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->resetSession()V

    .line 198
    const/4 v1, 0x1

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 207
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "create"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager;->processCreateSessionResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 217
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->savePreferences()V

    .line 218
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "invalidate"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager;->processInvalidateSessionResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "poll"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/SessionManager;->processPollResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 142
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/SessionManager;->createSession()V

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    iget v0, p0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    if-eqz v0, :cond_1

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/SessionManager;->poll(Z)V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    goto :goto_0
.end method
