.class public abstract Lcom/nuance/connect/service/manager/AbstractCommandManager;
.super Ljava/lang/Object;
.source "AbstractCommandManager.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/CommandManager;
.implements Lcom/nuance/connect/service/manager/interfaces/Manager;
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;,
        Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;,
        Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;
    }
.end annotation


# static fields
.field public static final ANTI_SPAM_DELAY:I = 0x5

.field public static final COMMAND_ACK:Ljava/lang/String; = "ack"

.field public static final COMMAND_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final COMMAND_GET:Ljava/lang/String; = "get"

.field public static final COMMAND_LIST:Ljava/lang/String; = "list"

.field static final COMMAND_RESPONSE_SUCCESS:[I

.field public static final COMMAND_STATUS:Ljava/lang/String; = "status"

.field public static final MAX_RETRIES_BEFORE_FAILURE:I = 0x3


# instance fields
.field protected activeTransactions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/service/comm/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field protected client:Lcom/nuance/connect/service/ConnectClient;

.field protected commandFamily:Ljava/lang/String;

.field protected dependentCount:I

.field private idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

.field protected lastCommand:Ljava/lang/String;

.field protected lastCommandRetryCount:I

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field protected managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

.field protected managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

.field protected messages:[I

.field protected transactionId:Ljava/lang/String;

.field protected validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

.field protected version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 179
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->COMMAND_RESPONSE_SUCCESS:[I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 3
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 159
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    .line 183
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 524
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    .line 531
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->activeTransactions:Ljava/util/Map;

    .line 320
    iput-object p1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 321
    new-instance v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    invoke-direct {v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    .line 322
    return-void
.end method


# virtual methods
.method public abstract alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected calcDefaultMilliDelay()J
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calcMessageSendDelay()J
    .locals 6

    .prologue
    .line 355
    const-wide/high16 v2, 0x4000000000000000L

    iget v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommandRetryCount:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v0, v2, v4

    .line 356
    .local v0, "d":D
    double-to-long v2, v0

    return-wide v2
.end method

.method protected createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    .prologue
    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    return-object v1
.end method

.method protected createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .param p3, "callback"    # Lcom/nuance/connect/service/comm/ResponseCallback;

    .prologue
    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    return-object v1
.end method

.method protected createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nuance/connect/service/comm/Command;"
        }
    .end annotation

    .prologue
    .line 232
    .local p3, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3, p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    return-object v0
.end method

.method protected createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .param p4, "callback"    # Lcom/nuance/connect/service/comm/ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nuance/connect/service/comm/ResponseCallback;",
            ")",
            "Lcom/nuance/connect/service/comm/Command;"
        }
    .end annotation

    .prologue
    .line 242
    .local p3, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_0

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    new-instance v0, Lcom/nuance/connect/service/comm/Command;

    invoke-direct {v0}, Lcom/nuance/connect/service/comm/Command;-><init>()V

    .line 249
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    goto :goto_0

    .line 254
    .end local v0    # "command":Lcom/nuance/connect/service/comm/Command;
    :cond_1
    new-instance v0, Lcom/nuance/connect/service/comm/Command;

    invoke-direct {v0}, Lcom/nuance/connect/service/comm/Command;-><init>()V

    .line 255
    .restart local v0    # "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    .line 256
    iget v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    iput v1, v0, Lcom/nuance/connect/service/comm/Command;->version:I

    .line 257
    iput-object p1, v0, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    .line 258
    iput-object p3, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    .line 259
    iput-object p4, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    .line 260
    iput-object p2, v0, Lcom/nuance/connect/service/comm/Command;->requestType:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    goto :goto_0
.end method

.method public delayFirstStart()J
    .locals 2

    .prologue
    .line 481
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deregister()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 204
    return-void
.end method

.method protected finishTransaction(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    .line 537
    :cond_0
    return-void
.end method

.method protected getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 573
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 574
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/comm/Transaction;

    .line 579
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    :goto_0
    return-object v2

    .line 578
    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction not found for ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 579
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCommandFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getDependentCount()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->dependentCount:I

    return v0
.end method

.method public getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->messages:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
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
    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    return v0
.end method

.method public incrementDependentCount()V
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->dependentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->dependentCount:I

    .line 506
    return-void
.end method

.method public abstract init()V
.end method

.method protected isTransactionActive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 564
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 565
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    const/4 v2, 0x1

    .line 569
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected managerStartComplete()V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "managerStartComplete()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 475
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 476
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->getManagerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    .line 478
    return-void
.end method

.method public onCancel(Lcom/nuance/connect/service/comm/Command;)V
    .locals 0
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 296
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 0
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "downloaded"    # I
    .param p3, "total"    # I

    .prologue
    .line 300
    return-void
.end method

.method public onFailure(Lcom/nuance/connect/service/comm/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abstract.onFailure("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 288
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 0
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 292
    return-void
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 311
    return-void
.end method

.method public postInit()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public postStart()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public postUpgrade()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method protected preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;
    .param p2, "messageId"    # I

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "handledInternally":Z
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-virtual {p0, v1, v2, p2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Ljava/lang/String;II)Z

    .line 460
    return v0
.end method

.method protected preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z
    .locals 10
    .param p2, "responseStatus"    # Ljava/lang/String;
    .param p3, "messageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, "genericValidCommandsEnum":Ljava/lang/Enum;, "Ljava/lang/Enum<+Ljava/lang/Enum<*>;>;"
    const/4 v2, 0x0

    .line 396
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preProcessResponse() command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, "expectedResponse":Z
    const-string v4, "NONE"

    .line 401
    .local v4, "processedCommand":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "isExpectedResponse"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 405
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 408
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preProcessResponse() isExpectedResponse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, "handled":Z
    if-nez v1, :cond_0

    .line 416
    const/4 v2, 0x1

    .line 417
    iget v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommandRetryCount:I

    const/4 v6, 0x3

    if-gt v5, v6, :cond_0

    .line 418
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->calcMessageSendDelay()J

    move-result-wide v6

    invoke-virtual {v5, p3, v6, v7}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(IJ)V

    .line 419
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preProcessResponse() -- Response from server is not an expected response.  Command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Response Status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 423
    .end local v2    # "handled":Z
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v2

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preProcessResponse() exception invoking isExpectedResponse !!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected preProcessResponse(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "responseStatus"    # I
    .param p3, "messageId"    # I

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 443
    .local v0, "handledInternally":Z
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isExpectedResponse(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    iget v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommandRetryCount:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 446
    const/4 v0, 0x1

    .line 447
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v1, p3, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(IJ)V

    .line 448
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response from server is not an expected response. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Response Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 454
    :cond_0
    return v0
.end method

.method public prepareForUpgrade()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public rebind()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 331
    return-void
.end method

.method protected removePreferences([Ljava/lang/String;)V
    .locals 5
    .param p1, "preferences"    # [Ljava/lang/String;

    .prologue
    .line 340
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 341
    .local v3, "preference":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v3    # "preference":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method protected sendCommand(Lcom/nuance/connect/service/comm/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sendCommand() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/connect/service/comm/Command;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setLastCommand(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/ConnectClient;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCommand() attempting to send command when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not completed starting. Attempted command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/connect/service/comm/Command;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setLastCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommandRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommandRetryCount:I

    .line 351
    :goto_0
    iput-object p1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommand:Ljava/lang/String;

    .line 352
    return-void

    .line 349
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommandRetryCount:I

    goto :goto_0
.end method

.method protected setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V
    .locals 3
    .param p1, "messagesHandled"    # [Lcom/nuance/connect/internal/common/InternalMessages;

    .prologue
    .line 518
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->messages:[I

    .line 519
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->messages:[I

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method

.method public abstract start()V
.end method

.method protected startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V
    .locals 3
    .param p1, "t"    # Lcom/nuance/connect/service/comm/Transaction;

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Transaction null!"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 561
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->allowDuplicates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_1
    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->allowDuplicates()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/ConnectClient;->sendTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    .line 557
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    goto :goto_0

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trasaction is already in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method
