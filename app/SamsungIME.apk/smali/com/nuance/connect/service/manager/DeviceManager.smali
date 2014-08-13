.class public Lcom/nuance/connect/service/manager/DeviceManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/DeviceManager$1;
    }
.end annotation


# static fields
.field public static final COMMAND_CONFIG:Ljava/lang/String; = "getConfig"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_GET_SWYPER_ID:Ljava/lang/String; = "getSwyperId"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_UPDATE:Ljava/lang/String; = "update"

.field public static final COMMAND_VALIDATE:Ljava/lang/String; = "validate"

.field public static final COMMAND_VERSION:I = 0x5

.field public static final DEVICE_PREFERENCE:Ljava/lang/String; = "DEVICE_ID"

.field private static final DEVICE_PROPERTIES_KEY_PREFIX:Ljava/lang/String; = "DEVICE_PROPERTIES_"

.field public static final DEVICE_TEMP_PREFERENCE:Ljava/lang/String; = "DEVICE_ACK_ID"

.field public static final DEVICE_TRANSACTION_PREFERENCE:Ljava/lang/String; = "DEVICE_TRANSID"

.field public static final DEVICE_TRIAL_PREFERENCE:Ljava/lang/String; = "DEVICE_LENGTH"

.field public static final KEY_ACCOUNT_PREFERENCE:Ljava/lang/String; = "KEY_ACCOUNT"

.field public static final KEY_BUILD_PREFERENCE:Ljava/lang/String; = "KEY_BUILD"

.field public static final KEY_DEVICE_PREFERENCE:Ljava/lang/String; = "KEY_DEVICE"

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field public static final MQTT_ENABLED_PREFERENCE:Ljava/lang/String; = "MQTT_ENABLED"

.field public static final MQTT_HOSTS_PREFERENCE:Ljava/lang/String; = "MQTT_HOSTS"

.field public static final MQTT_KEEPALIVE_PREFERENCE:Ljava/lang/String; = "MQTT_KEEPALIVE"

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

.field public static final REGISTRATION_COMMANDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWYPER_ID_PREFERENCE:Ljava/lang/String; = "SWYPER_ID"

.field public static final SWYPER_TEMP_PREFERENCE:Ljava/lang/String; = "TEMP_SWYPER_ID"

.field public static final TIMER_AGGREGATE_FREQUENCY_PREFERENCE:Ljava/lang/String; = "AGGREGATE_FREQUENCY"

.field public static final TIMER_DEFAULT_DELAY_PREFERENCE:Ljava/lang/String; = "DEFAULT_DELAY"

.field public static final TIMER_DEFAULT_DLM_ADD_FREQUENCY_PREFERENCE:Ljava/lang/String; = "DEFAULT_DLM_ADD_FREQUENCY"

.field public static final TIMER_POLLING_FREQUENCY_PREFERENCE:Ljava/lang/String; = "POLLING_FREQUENCY"

.field public static final TIMER_STATISTICS_FREQUENCY_PREFERENCE:Ljava/lang/String; = "STATISTICS_FREQUENCY"

.field public static final TIMER_UDB_UPLOAD_FREQUENCY_PREFERENCE:Ljava/lang/String; = "UDB_UPLOAD_FREQUENCY"


# instance fields
.field private volatile deviceId:Ljava/lang/String;

.field private deviceProperties:Ljava/util/HashMap;
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

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private volatile preAckDeviceId:Ljava/lang/String;

.field private volatile preAckSwyperId:Ljava/lang/String;

.field private volatile swyperId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->MANAGER_NAME:Ljava/lang/String;

    .line 50
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "register"

    aput-object v2, v1, v3

    const-string v2, "ack"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->REGISTRATION_COMMANDS:Ljava/util/List;

    .line 105
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v1, v3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v1, v4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v1, v5

    const/4 v2, 0x3

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_VALIDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_REQUEST_TIMERS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_GET_SWYPER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_CONFIG:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v3, v1, v2

    sput-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/nuance/connect/service/manager/DeviceManager;->REALTIME_MESSAGES:Ljava/util/List;

    .line 119
    new-instance v1, Landroid/util/Pair;

    const-string v2, "d"

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 6
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 127
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 136
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 137
    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 140
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 145
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 149
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 155
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "update"

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 160
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getSwyperId"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 163
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getConfig"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 167
    return-void

    .line 140
    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0xf
    .end array-data

    .line 145
    :array_1
    .array-data 4
        0x1
        0x4
    .end array-data

    .line 149
    :array_2
    .array-data 4
        0x1
        0x0
        0x6
        0xf
    .end array-data

    .line 155
    :array_3
    .array-data 4
        0x1
        0x4
        0x0
    .end array-data
.end method

.method private loadPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_TRANSID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ACK_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "SWYPER_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "TEMP_SWYPER_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 340
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->retrieveSerializedProperties()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 341
    return-void
.end method

.method private processDeviceValidateRequest(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 653
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    :cond_0
    return-void
.end method

.method private processRegisterDeviceAckResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v3, 0x0

    .line 516
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 520
    :cond_0
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 526
    :sswitch_0
    iput-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 527
    iput-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 528
    iput-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 529
    iput-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 530
    iput-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 531
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TEMP_SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->removePreferences([Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto :goto_0

    .line 542
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 543
    iput-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRegisterDeviceAckResponse() swyperId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 546
    iput-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 547
    iput-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    .line 549
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestConfiguration()V

    .line 550
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RESET_SESSION:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 554
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    goto/16 :goto_0

    .line 520
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private processRegisterDeviceResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 425
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 431
    :sswitch_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 433
    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 434
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 435
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 436
    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 437
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    .line 438
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDeviceAck()V

    goto :goto_0

    .line 444
    :sswitch_1
    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 445
    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 446
    iput-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 447
    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 448
    iput-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 449
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const-string v1, "TEMP_SWYPER_ID"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->removePreferences([Ljava/lang/String;)V

    .line 461
    iget v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommandRetryCount:I

    if-ge v0, v3, :cond_0

    .line 462
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto :goto_0

    .line 429
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method private processRequestConfigurationResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 14
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v13, 0x1

    .line 733
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v11, "processRequestConfigurationResponse"

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 735
    iget v10, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-eq v10, v13, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v10, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v10}, Lcom/nuance/connect/service/ConnectClient;->getConfiguration()Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    .line 740
    .local v0, "config":Lcom/nuance/connect/service/configuration/ConnectConfiguration;
    iget-object v7, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    .line 742
    .local v7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 743
    .local v8, "timers":Lorg/json/JSONObject;
    const-string v10, "80"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 744
    const-string v10, "80"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "timers":Lorg/json/JSONObject;
    check-cast v8, Lorg/json/JSONObject;

    .line 747
    .restart local v8    # "timers":Lorg/json/JSONObject;
    :cond_2
    if-eqz v8, :cond_a

    .line 748
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 750
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 752
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 753
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 754
    .local v9, "value":I
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Configuration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 756
    const-string v10, "53"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 757
    const-string v10, "DEFAULT_DELAY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 778
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":I
    :catch_0
    move-exception v10

    goto :goto_1

    .line 759
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v9    # "value":I
    :cond_4
    const-string v10, "34"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 760
    const-string v10, "POLLING_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 779
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":I
    :catch_1
    move-exception v10

    goto :goto_1

    .line 762
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v9    # "value":I
    :cond_5
    const-string v10, "67"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 763
    const-string v10, "REPORTING_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 765
    :cond_6
    const-string v10, "68"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 766
    const-string v10, "AGGREGATE_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 768
    :cond_7
    const-string v10, "69"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 769
    const-string v10, "UDB_UPLOAD_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 771
    :cond_8
    const-string v10, "84"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 772
    const-string v10, "DLM_SYNC_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 774
    :cond_9
    const-string v10, "85"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 775
    const-string v10, "DLM_ADD_WORD_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 784
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":I
    :cond_a
    const/4 v6, 0x0

    .line 785
    .local v6, "mqtt":Lorg/json/JSONObject;
    const-string v10, "81"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 786
    const-string v10, "81"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "mqtt":Lorg/json/JSONObject;
    check-cast v6, Lorg/json/JSONObject;

    .line 789
    .restart local v6    # "mqtt":Lorg/json/JSONObject;
    :cond_b
    if-eqz v6, :cond_11

    .line 790
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 792
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 794
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 795
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MQTT Configuration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 797
    const-string v10, "92"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 798
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 799
    .restart local v9    # "value":I
    const-string v10, "MQTT_KEEP_ALIVE"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_2

    .line 807
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":I
    :catch_2
    move-exception v10

    goto :goto_2

    .line 801
    .restart local v4    # "key":Ljava/lang/String;
    :cond_d
    const-string v10, "82"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 802
    const-string v10, "82"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 803
    .local v1, "hostList":Lorg/json/JSONArray;
    const-string v10, ","

    invoke-static {v1, v10}, Lcom/nuance/connect/util/StringUtils;->implode(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, "hosts":Ljava/lang/String;
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MQTT_HOSTS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 805
    const-string v10, "MQTT_HOSTS"

    invoke-virtual {v0, v10, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 808
    .end local v1    # "hostList":Lorg/json/JSONArray;
    .end local v2    # "hosts":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :catch_3
    move-exception v10

    goto :goto_2

    .line 812
    :cond_e
    const-string v10, "MQTT_ENABLED"

    invoke-virtual {v0, v10, v13}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    .line 818
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_3
    const/4 v5, 0x0

    .line 819
    .local v5, "keys":Lorg/json/JSONObject;
    const-string v10, "93"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 820
    const-string v10, "93"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "keys":Lorg/json/JSONObject;
    check-cast v5, Lorg/json/JSONObject;

    .line 823
    .restart local v5    # "keys":Lorg/json/JSONObject;
    :cond_f
    if-eqz v5, :cond_14

    .line 824
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 826
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_10
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 828
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 829
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 831
    .local v9, "value":Ljava/lang/String;
    iget-object v10, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Key Configuration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 833
    const-string v10, "95"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 834
    const-string v10, "KEY_DEVICE"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    .line 840
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_4
    move-exception v10

    goto :goto_4

    .line 815
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "keys":Lorg/json/JSONObject;
    :cond_11
    const-string v10, "MQTT_ENABLED"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    goto :goto_3

    .line 835
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keys":Lorg/json/JSONObject;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_12
    :try_start_3
    const-string v10, "96"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 836
    const-string v10, "KEY_BUILD"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 841
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_5
    move-exception v10

    goto :goto_4

    .line 837
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_13
    const-string v10, "97"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 838
    const-string v10, "KEY_ACCOUNT"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    .line 846
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_14
    const-string v10, "MQTT_ENABLED"

    invoke-virtual {v0, v10, v13}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private processRequestSwyperIdResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 876
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_GET_SWYPER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 881
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 882
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    .line 883
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 884
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processUpdateDeviceRegistrationResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 7
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 623
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget v3, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 640
    :pswitch_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v4, "update"

    invoke-virtual {v3, v4}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommandRetryCount:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 642
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->calcMessageSendDelay()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto :goto_0

    .line 630
    :pswitch_2
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v3, v3, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 632
    .local v2, "updatedProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 633
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 634
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 637
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/DeviceManager;->saveSerializedProperties(Ljava/util/HashMap;)V

    goto :goto_0

    .line 647
    .end local v2    # "updatedProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private processValidateDeviceRegistrationResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 691
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_VALIDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    :goto_0
    :pswitch_0
    return-void

    .line 695
    :cond_0
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 699
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->lastCommandRetryCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 701
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_VALIDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    .line 704
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RESET_SESSION:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    goto :goto_0

    .line 695
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private retrieveSerializedProperties()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 923
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    const-string v2, "DEVICE_PROPERTIES_"

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 925
    .local v0, "deviceProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 926
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "deviceProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 928
    .restart local v0    # "deviceProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method private savePreferences()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ACK_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_TRANSID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 360
    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "TEMP_SWYPER_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "SWYPER_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    :goto_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 375
    :cond_0
    return-void

    .line 351
    :cond_1
    const-string v0, "DEVICE_ACK_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_2
    const-string v0, "DEVICE_TRANSID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_3
    const-string v0, "TEMP_SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 369
    :cond_4
    const-string v0, "SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->removePreference(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private saveSerializedProperties(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_PROPERTIES_"

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 912
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 327
    return-void
.end method

.method public delayFirstStart()J
    .locals 2

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deregister()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 242
    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 246
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->savePreferences()V

    .line 247
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 236
    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    .line 237
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 214
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v4    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 899
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->loadPreferences()V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

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
    .line 124
    sget-object v0, Lcom/nuance/connect/service/manager/DeviceManager;->REALTIME_MESSAGES:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->loadPreferences()V

    .line 209
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 258
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceManager.onHandleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "handled":Z
    sget-object v2, Lcom/nuance/connect/service/manager/DeviceManager$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 302
    :goto_0
    return v0

    .line 262
    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    .line 263
    const/4 v0, 0x1

    .line 264
    goto :goto_0

    .line 267
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDeviceAck()V

    .line 268
    const/4 v0, 0x1

    .line 269
    goto :goto_0

    .line 272
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->updateDeviceRegistration()V

    .line 273
    const/4 v0, 0x1

    .line 274
    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/nuance/connect/service/comm/Response;

    if-ne v2, v3, :cond_0

    .line 278
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/connect/service/comm/Response;

    .line 279
    .local v1, "response":Lcom/nuance/connect/service/comm/Response;
    iget-object v2, v1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->processDeviceValidateRequest(Lcom/nuance/connect/service/comm/Response;)V

    .line 288
    .end local v1    # "response":Lcom/nuance/connect/service/comm/Response;
    :cond_0
    const/4 v0, 0x1

    .line 289
    goto :goto_0

    .line 292
    :pswitch_4
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestSwyperId()V

    .line 293
    const/4 v0, 0x1

    .line 294
    goto :goto_0

    .line 297
    :pswitch_5
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestConfiguration()V

    .line 298
    const/4 v0, 0x1

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRegisterDeviceResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 323
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRegisterDeviceAckResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processUpdateDeviceRegistrationResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processValidateDeviceRegistrationResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getConfig"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRequestConfigurationResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getSwyperId"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 319
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DeviceManager;->processRequestSwyperIdResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 321
    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server returned unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public postStart()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public rebind()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DeviceManager.rebind()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 222
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 226
    :cond_0
    return-void
.end method

.method public registerDevice()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 386
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/connect/util/BuildProps;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 387
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/DeviceManager;->saveSerializedProperties(Ljava/util/HashMap;)V

    .line 388
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/BuildProps;->hasRequiredDeviceProperties(Ljava/util/HashMap;)[Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "missingProperties":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 393
    .local v2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 394
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing Required Device Properties required to register: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v1, v6}, Lcom/nuance/connect/util/StringUtils;->implode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 396
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v5, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->calcDefaultMilliDelay()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    .line 410
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nuance/connect/util/UUIDFactory;->generateUUID(J)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "uuid":Ljava/lang/String;
    const-string v4, "5"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v4, "30"

    const-string v5, "Android"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v4, "31"

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v4, "register"

    sget-object v5, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v4, v5, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 406
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iput-boolean v6, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    .line 407
    iput-boolean v6, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    .line 408
    iput-boolean v6, v0, Lcom/nuance/connect/service/comm/Command;->needDevice:Z

    .line 409
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public registerDeviceAck()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 478
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 479
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 480
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "5"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v2, "ack"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 482
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    .line 483
    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    .line 484
    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->needDevice:Z

    .line 485
    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    .line 486
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 503
    .end local v0    # "command":Lcom/nuance/connect/service/comm/Command;
    .end local v1    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 488
    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DEVICE_ACK_ID"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "DEVICE_ID"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "SWYPER_ID"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "TEMP_SWYPER_ID"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "DEVICE_TRANSID"

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->removePreferences([Ljava/lang/String;)V

    .line 495
    iput-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 496
    iput-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 497
    iput-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 498
    iput-object v5, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 499
    iput-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 500
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto :goto_0
.end method

.method public requestConfiguration()V
    .locals 3

    .prologue
    .line 718
    const-string v1, "getConfig"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 719
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 720
    return-void
.end method

.method public requestSwyperId()V
    .locals 3

    .prologue
    .line 859
    const-string v1, "getSwyperId"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 860
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    .line 861
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    .line 862
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 863
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "start()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 177
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDeviceAck()V

    .line 205
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DeviceManager- deviceId state mismatch"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->registerDevice()V

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->updateDeviceRegistration()V

    .line 196
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 197
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager;->requestSwyperId()V

    .line 201
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    goto :goto_0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public updateDeviceRegistration()V
    .locals 12

    .prologue
    .line 568
    const/4 v5, 0x0

    .line 570
    .local v5, "possibleUpgrade":Z
    iget-object v9, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/nuance/connect/util/BuildProps;->compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "changedProps":[Ljava/lang/String;
    iget-object v9, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/connect/service/ConnectClient;->getBuildProps()Lcom/nuance/connect/util/BuildProps;

    move-result-object v9

    invoke-interface {v9}, Lcom/nuance/connect/util/BuildProps;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v6

    .line 572
    .local v6, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 575
    .local v7, "updatedProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    array-length v9, v0

    if-nez v9, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v0

    if-ge v2, v9, :cond_3

    .line 580
    aget-object v3, v0, v2

    .line 581
    .local v3, "key":Ljava/lang/String;
    aget-object v9, v0, v2

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 582
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 583
    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v9, p0, Lcom/nuance/connect/service/manager/DeviceManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updated property detected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 586
    const-string v9, "SWIB"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 587
    const/4 v5, 0x1

    .line 579
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 595
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 596
    if-eqz v5, :cond_4

    .line 597
    iget-object v9, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/connect/service/ConnectClient;->notifyPossibleUpgrade()V

    .line 599
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 600
    .local v4, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "5"

    iget-object v10, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v9, "31"

    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v9, "update"

    sget-object v10, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v9, v10, v4}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    .line 604
    .local v1, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    .line 605
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    .line 606
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public validateDeviceData()V
    .locals 4

    .prologue
    .line 670
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 671
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "31"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v2, "validate"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 673
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    .line 674
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    .line 675
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 676
    return-void
.end method
