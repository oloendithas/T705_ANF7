.class public Lcom/nuance/connect/service/manager/DocumentManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "DocumentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/DocumentManager$2;
    }
.end annotation


# static fields
.field private static final ACCEPTED_TIMESTAMP:Ljava/lang/String; = "TIME_ACCEPTED"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_GET_DOCUMENT:Ljava/lang/String; = "documentGet"

.field public static final COMMAND_VERSION:I = 0x7

.field private static final DOCS_DIR:Ljava/lang/String; = "docs"

.field private static final DOC_ID:Ljava/lang/String; = "docId"

.field private static final EXTENSION:Ljava/lang/String; = ".html"

.field private static final LAST_UPDATED_KEY:Ljava/lang/String;

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final METADATA_KEY:Ljava/lang/String;


# instance fields
.field private docMetadata:Lcom/nuance/connect/util/InstallMetadata;

.field private lastUpdated:J

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->MANAGER_NAME:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_LAST_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->LAST_UPDATED_KEY:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_METADATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->METADATA_KEY:Ljava/lang/String;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DOCUMENT_ACCEPTED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_UPDATE_DOCS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 3
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 68
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 72
    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 73
    sget-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 76
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 77
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "documentGet"

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 79
    new-instance v0, Lcom/nuance/connect/util/InstallMetadata;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager;->METADATA_KEY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    .line 81
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    new-instance v1, Lcom/nuance/connect/service/manager/DocumentManager$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DocumentManager$1;-><init>(Lcom/nuance/connect/service/manager/DocumentManager;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V

    .line 91
    return-void
.end method

.method private acceptDocumentTerms(III)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "documentClass"    # I
    .param p3, "revision"    # I

    .prologue
    .line 362
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "docId":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 366
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    .line 368
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "25"

    invoke-virtual {v1, v0, v2, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "108"

    invoke-virtual {v1, v0, v2, p3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 370
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "111"

    invoke-virtual {v1, v0, v2, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "51"

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "FILE_LOCATION"

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "TIME_ACCEPTED"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    .line 376
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DOCUMENT_REVISIONS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getAcceptedDocumentsJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 384
    return-void

    .line 382
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v1
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/DocumentManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/DocumentManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V

    return-void
.end method

.method private buildDocId(III)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .param p2, "documentClass"    # I
    .param p3, "revision"    # I

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAcceptedDocumentsJSON()Ljava/lang/String;
    .locals 17

    .prologue
    .line 474
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 475
    .local v2, "docs2":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v13}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 476
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "25"

    invoke-virtual {v13, v8, v14}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 477
    .local v12, "type":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "111"

    invoke-virtual {v13, v8, v14}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 478
    .local v3, "documentClass":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "108"

    invoke-virtual {v13, v8, v14}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 479
    .local v10, "revision":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "TIME_ACCEPTED"

    invoke-virtual {v13, v8, v14}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v13, v13, v15

    if-nez v13, :cond_2

    const/4 v1, 0x0

    .line 482
    .local v1, "accepted":Z
    :goto_1
    new-instance v9, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v9, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 483
    .local v9, "newKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 485
    .local v11, "storedRevision":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v13, v10, :cond_0

    .line 486
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 479
    .end local v1    # "accepted":Z
    .end local v9    # "newKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11    # "storedRevision":Ljava/lang/Integer;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 489
    .end local v3    # "documentClass":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "revision":I
    .end local v12    # "type":I
    :cond_3
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 490
    .local v6, "jsArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 491
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 492
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 494
    .local v7, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v14, "25"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v14, "111"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string v13, "108"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 498
    :catch_0
    move-exception v13

    goto :goto_2

    .line 502
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    .end local v7    # "json":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private getDocument(Ljava/lang/String;)V
    .locals 4
    .param p1, "docId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 263
    const-string v1, "documentGet"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 264
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "51"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    .line 265
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    .line 266
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    .line 267
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    .line 268
    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 270
    iget-object v1, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "docId"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 272
    return-void
.end method

.method private getList()V
    .locals 5

    .prologue
    .line 191
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getList()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 192
    const-string v2, "list"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 193
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    .line 194
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    .line 195
    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "11"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 197
    return-void
.end method

.method private moveDoc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "docId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 315
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "docs"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .local v1, "docsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-object v2

    .line 319
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    .local v0, "dest":Ljava/io/File;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/nuance/connect/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to delete temporary document file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 324
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private processGetDocumentResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v3, 0x1

    .line 283
    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v3, v2, :cond_1

    .line 285
    :try_start_0
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v2, v2, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "docId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    .local v0, "docId":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 287
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->moveDoc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "docLocation":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 289
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "FILE_LOCATION"

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v3, 0x7

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 291
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/DocumentManager;->sendDocumentToHost([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 299
    .end local v0    # "docId":Ljava/lang/String;
    .end local v1    # "docLocation":Ljava/lang/String;
    :cond_1
    return-void

    .line 296
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v2
.end method

.method private processListResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 14
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v12, 0x1

    .line 208
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v11, "processListResponse()"

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 209
    iget v10, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v12, v10, :cond_3

    .line 210
    iget-object v10, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v11, "107"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 211
    iget-object v10, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v11, "107"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 212
    .local v2, "docList":Lorg/json/JSONArray;
    iget-object v10, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v10, v10, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v11, "11"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 213
    .local v6, "locale":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 215
    :try_start_0
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v10}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 216
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-ge v5, v10, :cond_1

    .line 218
    :try_start_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 219
    .local v0, "docData":Lorg/json/JSONObject;
    const-string v10, "25"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 220
    .local v8, "type":I
    const-string v10, "111"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 221
    .local v3, "documentClass":I
    const-string v10, "51"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "url":Ljava/lang/String;
    const-string v10, "108"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 224
    .local v7, "revision":I
    invoke-direct {p0, v8, v3, v7}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "docId":Ljava/lang/String;
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v10, v1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v10

    if-ne v8, v10, :cond_0

    .line 227
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Server provided new document revision type["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] class["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] revision ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 230
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v10, v1}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    .line 231
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v11, "25"

    invoke-virtual {v10, v1, v11, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v11, "111"

    invoke-virtual {v10, v1, v11, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v11, "108"

    invoke-virtual {v10, v1, v11, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v11, "51"

    invoke-virtual {v10, v1, v11, v9}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v11, "FILE_LOCATION"

    const-string v12, ""

    invoke-virtual {v10, v1, v11, v12}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v11, "TIME_ACCEPTED"

    const-wide/high16 v12, -0x8000000000000000L

    invoke-virtual {v10, v1, v11, v12, v13}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    .line 237
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v11, 0x1

    invoke-virtual {v10, v1, v11}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 238
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v11, "11"

    invoke-virtual {v10, v1, v11, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DocumentManager;->getDocument(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .end local v0    # "docData":Lorg/json/JSONObject;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v3    # "documentClass":I
    .end local v7    # "revision":I
    .end local v8    # "type":I
    .end local v9    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 241
    :catch_0
    move-exception v4

    .line 242
    .local v4, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error processing json object "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 246
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v5    # "i":I
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v11}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v10

    .restart local v5    # "i":I
    :cond_1
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v10}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 250
    .end local v2    # "docList":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "locale":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    .line 251
    iget-object v10, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v10}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v10

    sget-object v11, Lcom/nuance/connect/service/manager/DocumentManager;->LAST_UPDATED_KEY:Ljava/lang/String;

    iget-wide v12, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    invoke-interface {v10, v11, v12, v13}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 253
    :cond_3
    return-void
.end method

.method private reprocessList()V
    .locals 15

    .prologue
    .line 440
    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v12, "reprocessList()"

    invoke-interface {v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 441
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v1, "docs2":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v11}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 443
    .local v5, "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v12, "25"

    invoke-virtual {v11, v5, v12}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 444
    .local v10, "type":I
    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v12, "111"

    invoke-virtual {v11, v5, v12}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 445
    .local v2, "documentClass":I
    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v12, "108"

    invoke-virtual {v11, v5, v12}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 446
    .local v8, "revision":I
    new-instance v7, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 447
    .local v7, "newKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 448
    .local v9, "storedRevision":Ljava/lang/Integer;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v8, :cond_0

    .line 449
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 452
    .end local v2    # "documentClass":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "newKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "revision":I
    .end local v9    # "storedRevision":Ljava/lang/Integer;
    .end local v10    # "type":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 453
    iget-object v11, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v11}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, "locale":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 455
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v12, v13, v11}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "docId":Ljava/lang/String;
    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v11, v0}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 458
    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v12, "document found that is installing, get new list"

    invoke-interface {v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 459
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    .line 471
    .end local v0    # "docId":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    .end local v6    # "locale":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 461
    .restart local v0    # "docId":Ljava/lang/String;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    .restart local v6    # "locale":Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v12, "TIME_ACCEPTED"

    invoke-virtual {v11, v0, v12}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v11, v11, v13

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v12, "11"

    invoke-virtual {v11, v0, v12}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 465
    iget-object v11, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v12, "locale different than installed document\'s locale.  get list in new language"

    invoke-interface {v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 466
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    goto :goto_1
.end method

.method private sendDocumentToHost([Ljava/lang/String;)V
    .locals 13
    .param p1, "docIds"    # [Ljava/lang/String;

    .prologue
    .line 336
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v9, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/connect/internal/common/Document;>;"
    move-object v6, p1

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v8, v6, v10

    .line 338
    .local v8, "docId":Ljava/lang/String;
    new-instance v0, Lcom/nuance/connect/internal/common/Document;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "25"

    invoke-virtual {v1, v8, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "111"

    invoke-virtual {v2, v8, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "108"

    invoke-virtual {v3, v8, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, v8, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v12, "11"

    invoke-virtual {v5, v8, v12}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/Document;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v0, "doc":Lcom/nuance/connect/internal/common/Document;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v8}, Lcom/nuance/connect/util/InstallMetadata;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "doc":Lcom/nuance/connect/internal/common/Document;
    .end local v8    # "docId":Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v7, "b":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v7, v1, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 350
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DOCUMENT_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v7}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method private sendListToHost()V
    .locals 22

    .prologue
    .line 409
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v8, "docs":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 412
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    const-string v20, "25"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 413
    .local v18, "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    const-string v20, "111"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 414
    .local v9, "documentClass":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    const-string v20, "108"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 415
    .local v16, "revision":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    const-string v20, "TIME_ACCEPTED"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 416
    .local v4, "acceptedTimestamp":J
    new-instance v15, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    .local v15, "newKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 418
    .local v17, "storedRevision":Ljava/lang/Integer;
    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v19, v4, v19

    if-eqz v19, :cond_0

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 419
    :cond_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 423
    .end local v4    # "acceptedTimestamp":J
    .end local v9    # "documentClass":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "newKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v16    # "revision":I
    .end local v17    # "storedRevision":Ljava/lang/Integer;
    .end local v18    # "type":I
    :cond_2
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 424
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v7, v0, [Ljava/lang/String;

    .line 425
    .local v7, "docIds":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 426
    .local v11, "i":I
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 427
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Pair;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Pair;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "docId":Ljava/lang/String;
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    aput-object v6, v7, v11

    move v11, v12

    .line 429
    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_1

    .line 430
    .end local v6    # "docId":Ljava/lang/String;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/nuance/connect/service/manager/DocumentManager;->sendDocumentToHost([Ljava/lang/String;)V

    .line 432
    .end local v7    # "docIds":[Ljava/lang/String;
    .end local v11    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 150
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 101
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v4    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public init()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/DocumentManager;->LAST_UPDATED_KEY:Ljava/lang/String;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    .line 109
    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "documentGet"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DocumentManager;->processGetDocumentResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "handled":Z
    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 176
    :goto_0
    return v1

    .line 162
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "MESSAGE_CLIENT_DOCUMENT_ACCEPTED"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    .line 164
    .local v0, "doc":Lcom/nuance/connect/internal/common/Document;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getDocumentClass()I

    move-result v3

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/nuance/connect/service/manager/DocumentManager;->acceptDocumentTerms(III)V

    .line 166
    const/4 v1, 0x1

    .line 167
    goto :goto_0

    .line 170
    .end local v0    # "doc":Lcom/nuance/connect/internal/common/Document;
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "MESSAGE_COMMAND_UPDATE_DOCS"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 171
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    .line 172
    const/4 v1, 0x1

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DocumentManager;->processListResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 139
    :cond_0
    return-void
.end method

.method public rebind()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendListToHost()V

    .line 127
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V

    .line 128
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 113
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 114
    iget-wide v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "lastUpdated not set, need to get list."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 122
    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendListToHost()V

    .line 119
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V

    goto :goto_0
.end method
