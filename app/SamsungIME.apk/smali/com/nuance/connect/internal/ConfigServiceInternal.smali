.class public Lcom/nuance/connect/internal/ConfigServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "ConfigServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/ConfigService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/ConfigServiceInternal$8;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private activeLanguages:[I

.field private activeLocale:Ljava/util/Locale;

.field backgroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

.field concurrentConnectionLimit:Lcom/nuance/connect/internal/Property$IntegerValueListener;

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field downloadIdleTimeout:Lcom/nuance/connect/internal/Property$IntegerValueListener;

.field foregroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field refreshListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

.field userAllowDataCollection:Lcom/nuance/connect/internal/Property$BooleanValueListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CORE_VERSIONS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_FOREGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_BACKGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_APPLICATION_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CUSTOMER_STRING:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 4
    .param p1, "connectService"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    .line 35
    sget-object v2, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 53
    new-instance v2, Lcom/nuance/connect/internal/ConfigServiceInternal$1;

    invoke-direct {v2, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$1;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->refreshListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    .line 60
    new-instance v2, Lcom/nuance/connect/internal/ConfigServiceInternal$2;

    invoke-direct {v2, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$2;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->userAllowDataCollection:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    .line 67
    new-instance v2, Lcom/nuance/connect/internal/ConfigServiceInternal$3;

    invoke-direct {v2, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$3;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->concurrentConnectionLimit:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    .line 74
    new-instance v2, Lcom/nuance/connect/internal/ConfigServiceInternal$4;

    invoke-direct {v2, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$4;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    .line 81
    new-instance v2, Lcom/nuance/connect/internal/ConfigServiceInternal$5;

    invoke-direct {v2, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$5;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->foregroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    .line 90
    new-instance v2, Lcom/nuance/connect/internal/ConfigServiceInternal$6;

    invoke-direct {v2, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$6;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->backgroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    .line 403
    new-instance v2, Lcom/nuance/connect/internal/ConfigServiceInternal$7;

    invoke-direct {v2, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$7;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    .line 103
    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 104
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    .line 105
    .local v1, "userSettings":Lcom/nuance/connect/internal/UserSettings;
    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    .line 107
    .local v0, "appSettings":Lcom/nuance/connect/internal/AppSettings;
    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_REFRESH_INTERVAL:Lcom/nuance/connect/internal/AppSettings$Key;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->refreshListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 110
    const-string v2, "BACKGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->backgroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 112
    const-string v2, "FOREGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->foregroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 115
    const-string v2, "USER_ALLOW_USAGE_COLLECTION"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->userAllowDataCollection:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 117
    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_CONNECTION_CONCURRENT_LIMIT:Lcom/nuance/connect/internal/AppSettings$Key;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->concurrentConnectionLimit:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 120
    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->DOWNLOAD_IDLE_TIMEOUT:Lcom/nuance/connect/internal/AppSettings$Key;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConfigServiceInternal;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendPollingFrequency()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConfigServiceInternal;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendConnectionConcurrentLimit()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConfigServiceInternal;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendDownloadIdleTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConfigServiceInternal;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendForegroundDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConfigServiceInternal;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendBackgroundDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConfigServiceInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConfigServiceInternal;
    .param p1, "x1"    # Lcom/nuance/connect/host/service/BuildSettings$Property;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    .locals 3
    .param p1, "property"    # Lcom/nuance/connect/host/service/BuildSettings$Property;

    .prologue
    .line 532
    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v2, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    .line 533
    .local v0, "settings":Lcom/nuance/connect/host/service/BuildSettings;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 534
    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 540
    :goto_0
    return-object v1

    .line 536
    :cond_0
    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getOemId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 540
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendBackgroundDataState()V
    .locals 4

    .prologue
    .line 312
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "ConfigService.sendBackgroundDataState()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 314
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    .line 315
    .local v0, "messenger":Lcom/nuance/connect/internal/ClientBinder;
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v1

    .line 319
    .local v1, "networkState":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    if-eqz v1, :cond_0

    .line 320
    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_BACKGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 323
    :cond_0
    return-void
.end method

.method private sendConnectionConcurrentLimit()V
    .locals 4

    .prologue
    .line 335
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "ConfigService.sendConnectionConcurrentLimit()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 337
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    .line 338
    .local v1, "messenger":Lcom/nuance/connect/internal/ClientBinder;
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/AppSettings;->getConnectionConcurrentLimit()I

    move-result v0

    .line 339
    .local v0, "limit":I
    if-ltz v0, :cond_0

    .line 340
    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 343
    :cond_0
    return-void
.end method

.method private sendDownloadIdleTimeout()V
    .locals 4

    .prologue
    .line 346
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "ConfigService.sendDownloadIdleTimeout()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 348
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    .line 349
    .local v1, "messenger":Lcom/nuance/connect/internal/ClientBinder;
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/AppSettings;->getDownloadIdleTimeout()I

    move-result v0

    .line 350
    .local v0, "limit":I
    if-ltz v0, :cond_0

    .line 351
    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 354
    :cond_0
    return-void
.end method

.method private sendForegroundDataState()V
    .locals 4

    .prologue
    .line 299
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "ConfigService.sendForegroundDataState()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 301
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    .line 302
    .local v0, "messenger":Lcom/nuance/connect/internal/ClientBinder;
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v1

    .line 305
    .local v1, "networkState":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    if-eqz v1, :cond_0

    .line 306
    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_FOREGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 309
    :cond_0
    return-void
.end method

.method private sendPollingFrequency()V
    .locals 4

    .prologue
    .line 326
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    .line 327
    .local v1, "messenger":Lcom/nuance/connect/internal/ClientBinder;
    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/AppSettings;->getRefreshInterval()I

    move-result v0

    .line 328
    .local v0, "interval":I
    if-ltz v0, :cond_0

    .line 329
    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_POLLING_FREQUENCY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveLanguages()[I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public getActiveLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConcurrentLimit()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getConnectionConcurrentLimit()I

    move-result v0

    return v0
.end method

.method protected getCoresForLanguages([I)[I
    .locals 13
    .param p1, "languageIds"    # [I

    .prologue
    .line 378
    iget-object v11, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v12, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v11, v12}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/connect/host/service/BuildSettings;

    .line 379
    .local v9, "settings":Lcom/nuance/connect/host/service/BuildSettings;
    invoke-interface {v9}, Lcom/nuance/connect/host/service/BuildSettings;->getLanguageCoreMap()Ljava/util/HashMap;

    move-result-object v8

    .line 381
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 382
    .local v2, "cores":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    array-length v11, p1

    if-lez v11, :cond_1

    .line 383
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_1

    aget v4, v0, v3

    .line 384
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 385
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "id":I
    .end local v7    # "len$":I
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v11

    new-array v10, v11, [I

    .line 391
    .local v10, "values":[I
    const/4 v5, 0x0

    .line 392
    .local v5, "index":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 393
    .local v1, "core":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aput v1, v10, v5

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 396
    .end local v1    # "core":I
    :cond_2
    return-object v10
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getCustomerString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadIdleTimeout()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getDownloadIdleTimeout()I

    move-result v0

    return v0
.end method

.method public getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getInitialVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getInitialVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getInitializationTimestamp()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getRefreshInterval()I

    move-result v0

    return v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwyperId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsageDataState()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    return v0
.end method

.method public sendLanguageInfo()V
    .locals 5

    .prologue
    .line 357
    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "ConfigService.sendLanguageInfo()"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 358
    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    .line 360
    .local v2, "messenger":Lcom/nuance/connect/internal/ClientBinder;
    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {p0, v3}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getCoresForLanguages([I)[I

    move-result-object v1

    .line 362
    .local v1, "coreIds":[I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 364
    const-string v3, "LANGUAGE_CATEGORY"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 365
    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method protected sendLocaleInfo()V
    .locals 3

    .prologue
    .line 369
    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    .line 371
    .local v0, "messenger":Lcom/nuance/connect/internal/ClientBinder;
    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 372
    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LOCALE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 375
    :cond_0
    return-void
.end method

.method public setActiveLanguages([I)V
    .locals 0
    .param p1, "xt9LanguageIds"    # [I

    .prologue
    .line 191
    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    .line 192
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLanguageInfo()V

    .line 193
    return-void
.end method

.method public setActiveLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    .line 206
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyLocaleChange(Ljava/util/Locale;)V

    .line 207
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLocaleInfo()V

    .line 208
    return-void
.end method

.method public setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 1
    .param p1, "state"    # Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    .line 162
    return-void
.end method

.method public setConnectionConcurrentLimit(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setConnectionConcurrentLimit(I)V

    .line 236
    return-void
.end method

.method public setCurrentVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setCurrentVersion(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public setCustomerString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setCustomerString(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected setDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setDeviceId(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setDownloadIdleTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setDownloadIdleTimeout(I)V

    .line 246
    return-void
.end method

.method public setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 1
    .param p1, "state"    # Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    .line 152
    return-void
.end method

.method public setInitialVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setInitialVersion(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public setInitializationTimestamp(Ljava/lang/Long;)V
    .locals 1
    .param p1, "timestamp"    # Ljava/lang/Long;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setInitializationTimestamp(Ljava/lang/Long;)V

    .line 296
    return-void
.end method

.method public setLogLevel(I)V
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setLogLevel(I)V

    .line 266
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 1
    .param p1, "seconds"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setRefreshInterval(I)V

    .line 187
    return-void
.end method

.method protected setSwyperId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setSwyperId(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public setUsageDataState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setDataCollectionAccepted(Z)V

    .line 177
    return-void
.end method
