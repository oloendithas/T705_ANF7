.class public Lcom/nuance/connect/service/manager/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/Manager;
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/ConfigurationManager$1;
    }
.end annotation


# static fields
.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final PROP_APPLICATION_ID:Ljava/lang/String;

.field private static final PROP_BACKGROUND_DATA:Ljava/lang/String;

.field private static final PROP_BUILD_TYPE:Ljava/lang/String;

.field private static final PROP_CUSTOMER_STRING:Ljava/lang/String;

.field private static final PROP_FOREGROUND_DATA:Ljava/lang/String;

.field private static final PROP_LANGUAGE_CORE_MAP:Ljava/lang/String; = "language_core_map"

.field private static final PROP_OEM_ID:Ljava/lang/String;

.field private static final PROP_SDK_VERSION:Ljava/lang/String;

.field private static final PROP_STATISTICS_STATUS:Ljava/lang/String;

.field private static final PROP_USAGE_STATUS:Ljava/lang/String;

.field private static final REQUIRED_PROPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private dependentCount:I

.field private idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_STATISTICS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_STATISTICS_STATUS:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_USAGE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_USAGE_STATUS:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_TYPE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_BUILD_TYPE:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->SDK_VERSION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_SDK_VERSION:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->APPLICATION_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_STRING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->FOREGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_FOREGROUND_DATA:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BACKGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_BACKGROUND_DATA:Ljava/lang/String;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_FOREGROUND_DATA:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_BACKGROUND_DATA:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_SDK_VERSION:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "language_core_map"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    .line 47
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MANAGER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 4
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v3, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_STATISTICS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_USAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_BUILD_TYPE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CORE_VERSIONS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_APPLICATION_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CUSTOMER_STRING:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LOCALE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_BACKGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_FOREGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_POLLING_FREQUENCY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    .line 73
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-class v1, Lcom/nuance/connect/service/manager/AbstractCommandManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    .line 75
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 78
    iput-object p1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 79
    return-void
.end method

.method private isPropertyReceived(Ljava/lang/String;)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private managerStartComplete()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "managerStartComplete()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 84
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/manager/ConfigurationManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private preloadProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-result-object v0

    .line 391
    .local v0, "converted":Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method

.method private propertyReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/nuance/connect/service/manager/ConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 92
    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 94
    sget-object v1, Lcom/nuance/connect/service/manager/ConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->managerStartComplete()V

    .line 97
    :cond_0
    return-void
.end method

.method private sendPropertyRequests()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_BACKGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 353
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_FOREGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 354
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CORE_VERSIONS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 355
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 356
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 357
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 358
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 359
    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->isPropertyReceived(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_APPLICATION_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 362
    :cond_0
    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->isPropertyReceived(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CUSTOMER_STRING:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 366
    return-void
.end method


# virtual methods
.method public delayFirstStart()J
    .locals 2

    .prologue
    .line 369
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deregister()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 147
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 131
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v4    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getDependentCount()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->dependentCount:I

    return v0
.end method

.method public getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MANAGER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 343
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    array-length v2, v2

    new-array v1, v2, [I

    .line 344
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-object v1
.end method

.method public incrementDependentCount()V
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->dependentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->dependentCount:I

    .line 383
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->preloadProperty(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->preloadProperty(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->preloadProperty(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 163
    const/4 v5, 0x0

    .line 164
    .local v5, "handled":Z
    sget-object v13, Lcom/nuance/connect/service/manager/ConfigurationManager$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-static {v14}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 339
    :goto_0
    return v5

    .line 166
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 168
    .local v8, "newActiveLangIds":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "LANGUAGE_CATEGORY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 170
    .local v9, "newActiveLanguageCategories":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleMessage(MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE) Language: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] Code: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 174
    if-eqz v8, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v13, v8, v9}, Lcom/nuance/connect/service/ConnectClient;->setCurrentLanguageInfo([I[I)V

    .line 177
    :cond_0
    const/4 v5, 0x1

    .line 178
    goto :goto_0

    .line 182
    .end local v8    # "newActiveLangIds":[I
    .end local v9    # "newActiveLanguageCategories":[I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "newActiveLocale":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHandleMessage(MESSAGE_CLIENT_UPDATE_CURRENT_LOCALE) Locale: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 186
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    .line 187
    const-string v13, "_"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, "parts":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 189
    .local v7, "locale":Ljava/util/Locale;
    array-length v13, v12

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 190
    new-instance v7, Ljava/util/Locale;

    .end local v7    # "locale":Ljava/util/Locale;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-direct {v7, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v7    # "locale":Ljava/util/Locale;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v13, v7}, Lcom/nuance/connect/service/ConnectClient;->setCurrentLocaleInfo(Ljava/util/Locale;)V

    .line 198
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v12    # "parts":[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    .line 199
    goto/16 :goto_0

    .line 191
    .restart local v7    # "locale":Ljava/util/Locale;
    .restart local v12    # "parts":[Ljava/lang/String;
    :cond_3
    array-length v13, v12

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 192
    new-instance v7, Ljava/util/Locale;

    .end local v7    # "locale":Ljava/util/Locale;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-direct {v7, v13, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "locale":Ljava/util/Locale;
    goto :goto_1

    .line 193
    :cond_4
    array-length v13, v12

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    .line 194
    new-instance v7, Ljava/util/Locale;

    .end local v7    # "locale":Ljava/util/Locale;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    const/4 v14, 0x1

    aget-object v14, v12, v14

    const/4 v15, 0x2

    aget-object v15, v12, v15

    invoke-direct {v7, v13, v14, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "locale":Ljava/util/Locale;
    goto :goto_1

    .line 203
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v10    # "newActiveLocale":Ljava/lang/String;
    .end local v12    # "parts":[Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "MESSAGE_CLIENT_SET_LANGUAGES_FOR_CORES"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v15, 0x5dc

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    .line 214
    :goto_2
    const/4 v5, 0x1

    .line 215
    goto/16 :goto_0

    .line 210
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v15, "DEFAULT_KEY"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Lcom/nuance/connect/service/ConnectClient;->setLanguageCoreMap(Ljava/util/HashMap;)V

    .line 212
    const-string v13, "language_core_map"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_2

    .line 219
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_USAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v15, 0x5dc

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    .line 227
    :goto_3
    const/4 v5, 0x1

    .line 228
    goto/16 :goto_0

    .line 223
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_USAGE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "DEFAULT_KEY"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    .line 225
    sget-object v13, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_USAGE_STATUS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_3

    .line 231
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_STATISTICS:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v15, 0x5dc

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    .line 239
    :goto_4
    const/4 v5, 0x1

    .line 240
    goto/16 :goto_0

    .line 235
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_STATISTICS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "DEFAULT_KEY"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    .line 237
    sget-object v13, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_STATISTICS_STATUS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_4

    .line 243
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_CONNECTION_LIMIT)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 245
    .local v6, "limit":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CONNECTION_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    .line 246
    const/4 v5, 0x1

    .line 247
    goto/16 :goto_0

    .line 250
    .end local v6    # "limit":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_BUILD_TYPE)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_TYPE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "DEFAULT_KEY"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 253
    sget-object v13, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_BUILD_TYPE:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 254
    const/4 v5, 0x1

    .line 255
    goto/16 :goto_0

    .line 258
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_OEM_ID)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 261
    .local v11, "oemId":Ljava/lang/String;
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_9

    .line 262
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_OEM_ID) invalid OEM"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v15, 0x5dc

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    .line 270
    :goto_5
    const/4 v5, 0x1

    .line 271
    goto/16 :goto_0

    .line 266
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v13, v14, v11}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 267
    sget-object v13, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->sendPropertyRequests()V

    goto :goto_5

    .line 274
    .end local v11    # "oemId":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_CORE_VERSIONS)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_ALPHA:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "PROP_CORE_ALPHA"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_CHINESE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "PROP_CORE_CHINESE"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_JAPANESE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "PROP_CORE_JAPANESE"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_KOREAN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "PROP_CORE_KOREAN"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 283
    const/4 v5, 0x1

    .line 284
    goto/16 :goto_0

    .line 287
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_APPLICATION_ID)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->APPLICATION_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "DEFAULT_KEY"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 289
    sget-object v13, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 290
    const/4 v5, 0x1

    .line 291
    goto/16 :goto_0

    .line 294
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_SDK_VERSION)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->SDK_VERSION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "DEFAULT_KEY"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 297
    sget-object v13, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_SDK_VERSION:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 298
    const/4 v5, 0x1

    .line 299
    goto/16 :goto_0

    .line 302
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_CUSTOMER_STRING)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_STRING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "DEFAULT_KEY"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 304
    sget-object v13, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 305
    const/4 v5, 0x1

    .line 306
    goto/16 :goto_0

    .line 309
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_NETWORK_IDLE_TIMEOUT)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 311
    .local v2, "downloadIdleTimeout":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->NETWORK_TIMEOUT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    .line 312
    const/4 v5, 0x1

    .line 313
    goto/16 :goto_0

    .line 316
    .end local v2    # "downloadIdleTimeout":I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_BACKGROUND_DATA)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "backgroundString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BACKGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v13, v14, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 319
    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BACKGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 320
    const/4 v5, 0x1

    .line 321
    goto/16 :goto_0

    .line 324
    .end local v1    # "backgroundString":Ljava/lang/String;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_FOREGROUND_DATA)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "foregroundString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->FOREGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v13, v14, v3}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    .line 327
    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->FOREGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 328
    const/4 v5, 0x1

    .line 329
    goto/16 :goto_0

    .line 332
    .end local v3    # "foregroundString":Ljava/lang/String;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_SET_POLLING_FREQUENCY)"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 334
    .local v4, "frequency":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v14, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    .line 335
    const/4 v5, 0x1

    .line 336
    goto/16 :goto_0

    .line 164
    nop

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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public postInit()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public postStart()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public postUpgrade()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public prepareForUpgrade()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public rebind()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "start()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 121
    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->isPropertyReceived(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->sendPropertyRequests()V

    goto :goto_0
.end method
