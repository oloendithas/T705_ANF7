.class public Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
.super Ljava/lang/Object;
.source "ConnectServiceManagerInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/ConnectServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;,
        Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;
    }
.end annotation


# static fields
.field private static final MINIMUM_RESTART:I = 0x2710

.field private static final REFRESH_PROTECTION:I = 0xea60

.field private static final RETRYCONNECTION_PROTECTION:I = 0x124f80

.field private static final connectivityFilter:Landroid/content/IntentFilter;

.field private static final connectivityFilterSpec:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static instance:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private static final localeFilter:Landroid/content/IntentFilter;


# instance fields
.field private final actionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nuance/connect/util/ActionFilter;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/util/ActionDelegateCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private appFilesFolder:Ljava/lang/String;

.field private appSettings:Lcom/nuance/connect/internal/AppSettings;

.field private connectionCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/ConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private currentNetworkState:Lcom/nuance/connect/system/NetworkState;

.field private datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

.field private defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

.field private final devLog:Lcom/nuance/connect/util/Logger$Log;

.field private final handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

.field protected hostInterface:Lcom/nuance/connect/host/service/HostInterface;

.field private lastRefresh:J

.field private lastRetry:J

.field private lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

.field private localeCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/LocaleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private localeReciever:Landroid/content/BroadcastReceiver;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

.field private final oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private refresh:Ljava/lang/Runnable;

.field private refreshHandler:Landroid/os/Handler;

.field private restart:Ljava/lang/Runnable;

.field private retryConnection:Ljava/lang/Runnable;

.field private serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

.field private final services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/AbstactService;",
            ">;"
        }
    .end annotation
.end field

.field private userSettings:Lcom/nuance/connect/internal/UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityFilter:Landroid/content/IntentFilter;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostInterface"    # Lcom/nuance/connect/host/service/HostInterface;

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    .line 63
    new-instance v0, Lcom/nuance/connect/internal/HandlerRegistry;

    invoke-direct {v0}, Lcom/nuance/connect/internal/HandlerRegistry;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    .line 75
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    .line 77
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    .line 78
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    .line 86
    iput-wide v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    .line 87
    iput-wide v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRetry:J

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/Set;

    .line 93
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 95
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$1;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeReciever:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    .line 119
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->restart:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$5;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refresh:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$6;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$6;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->retryConnection:Ljava/lang/Runnable;

    .line 670
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    .line 144
    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appFilesFolder:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    .line 147
    sput-object p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->instance:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 149
    const-string v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {p1, v0}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    .line 152
    sget-object v0, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-interface {p2, v0}, Lcom/nuance/connect/host/service/HostInterface;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/host/service/BuildSettings;

    .line 153
    .local v6, "b":Lcom/nuance/connect/host/service/BuildSettings;
    invoke-interface {v6}, Lcom/nuance/connect/host/service/BuildSettings;->isDeveloperLogEnabled()Z

    move-result v0

    invoke-interface {v6}, Lcom/nuance/connect/host/service/BuildSettings;->getLogLevel()I

    move-result v1

    sget-object v2, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger;->configure(ZILcom/nuance/connect/util/Logger$OutputMode;Ljava/io/File;)V

    .line 155
    new-instance v0, Lcom/nuance/connect/internal/UserSettings;

    new-instance v1, Lcom/nuance/connect/store/FileStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appFilesFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/nuance/connect/host/service/BuildSettings;->getDlmSyncDefault()Z

    move-result v2

    invoke-interface {v6}, Lcom/nuance/connect/host/service/BuildSettings;->getUpdateLivingLanguageByDefault()Z

    move-result v3

    invoke-interface {v6}, Lcom/nuance/connect/host/service/BuildSettings;->getForegroundNetworkDefault()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6}, Lcom/nuance/connect/host/service/BuildSettings;->getBackgroundNetworkDefault()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/UserSettings;-><init>(Lcom/nuance/connect/store/PersistentDataStore;ZZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    .line 158
    new-instance v0, Lcom/nuance/connect/internal/AppSettings;

    new-instance v1, Lcom/nuance/connect/store/FileStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appFilesFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/nuance/connect/internal/AppSettings;-><init>(Lcom/nuance/connect/store/PersistentDataStore;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appSettings:Lcom/nuance/connect/internal/AppSettings;

    .line 160
    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 161
    new-instance v0, Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 162
    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 164
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->onConnectivityChanged()V

    .line 165
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->onLocaleChanged()V

    .line 167
    sget-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->OEM_LOG_LEVEL:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;

    invoke-direct {v1, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerAppSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ClientBinderInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendConnectConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/HandlerRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    return-object v0
.end method

.method private addService(Lcom/nuance/connect/internal/AbstactService;)V
    .locals 6
    .param p1, "service"    # Lcom/nuance/connect/internal/AbstactService;

    .prologue
    .line 714
    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/AbstactService;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 715
    invoke-virtual {p1}, Lcom/nuance/connect/internal/AbstactService;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/connect/common/ConnectFeature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 716
    .local v1, "feature":Lcom/nuance/connect/common/ConnectFeature;
    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 717
    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    .line 715
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 720
    .end local v1    # "feature":Lcom/nuance/connect/common/ConnectFeature;
    :cond_1
    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/AbstactService;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-virtual {p1}, Lcom/nuance/connect/internal/AbstactService;->getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerServiceHandlers([Lcom/nuance/connect/internal/ConnectHandler;)V

    .line 723
    .end local v0    # "arr$":[Lcom/nuance/connect/common/ConnectFeature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    return-void
.end method

.method private getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;
    .locals 2
    .param p1, "service"    # Lcom/nuance/connect/common/ConnectFeature;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/AbstactService;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 16
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/nuance/connect/internal/HandlerRegistry;->tryHandleMessage(Landroid/os/Handler;Landroid/os/Message;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 405
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 315
    :cond_1
    sget-object v10, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    move-object/from16 v0, p2

    iget v11, v0, Landroid/os/Message;->what:I

    invoke-static {v11}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/HandlerRegistry;->getRegisteredHandlers()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "handlers":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v10

    sget-object v11, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_HANDLERS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v10, v11, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    .end local v3    # "handlers":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v11, "MESSAGE_HOST_CLIENT_START_COMPLETE"

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ClientBinderInternal;->setClientComplete()V

    .line 326
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ClientBinderInternal;->processQueuedMessages()V

    goto :goto_0

    .line 351
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 353
    .local v2, "data":Landroid/os/Bundle;
    const-string v10, "status"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 354
    .local v7, "status":I
    const-string v10, "message"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE_HOST_CONNECTION_STATUS status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 357
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 363
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "status":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ClientBinderInternal;->getLock()[I

    move-result-object v11

    monitor-enter v11

    .line 364
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 365
    .restart local v2    # "data":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MESSAGE_HOST_ON_SERVICE_SHUTDOWN "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 367
    const-string v10, "DEFAULT_KEY"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v10, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v12, v14

    .line 369
    .local v8, "triggerTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ClientBinderInternal;->getLastMessageSent()J

    move-result-wide v14

    sub-long v4, v12, v14

    .line 371
    .local v4, "lastSentTime":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    Restart time from now in millis: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " last sent time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 372
    const-wide/16 v12, 0x2710

    cmp-long v10, v8, v12

    if-lez v10, :cond_2

    const-wide/16 v12, 0x2710

    cmp-long v10, v4, v12

    if-lez v10, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ClientBinderInternal;->pause()V

    .line 374
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->restart:Ljava/lang/Runnable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->restart:Ljava/lang/Runnable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    :goto_1
    monitor-exit v11

    goto/16 :goto_0

    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "lastSentTime":J
    .end local v8    # "triggerTime":J
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 377
    .restart local v2    # "data":Landroid/os/Bundle;
    .restart local v4    # "lastSentTime":J
    .restart local v8    # "triggerTime":J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v12, "    Ignoring shutown because it\'s too soon"

    invoke-interface {v10, v12}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 384
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "lastSentTime":J
    .end local v8    # "triggerTime":J
    :pswitch_5
    const/16 v10, 0xb

    const-string v11, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :pswitch_6
    const-string v6, ""

    .line 390
    .restart local v6    # "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 394
    .restart local v2    # "data":Landroid/os/Bundle;
    const-string v10, "DEFAULT_KEY"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 397
    .end local v2    # "data":Landroid/os/Bundle;
    :cond_3
    const/16 v10, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static make(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hostInterface"    # Lcom/nuance/connect/host/service/HostInterface;

    .prologue
    .line 182
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->instance:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->instance:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 185
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;-><init>(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)V

    goto :goto_0
.end method

.method private registerServiceHandlers([Lcom/nuance/connect/internal/ConnectHandler;)V
    .locals 6
    .param p1, "handlers"    # [Lcom/nuance/connect/internal/ConnectHandler;

    .prologue
    .line 730
    move-object v0, p1

    .local v0, "arr$":[Lcom/nuance/connect/internal/ConnectHandler;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 731
    .local v1, "handler":Lcom/nuance/connect/internal/ConnectHandler;
    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    invoke-interface {v1}, Lcom/nuance/connect/internal/ConnectHandler;->getHandlerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/connect/internal/HandlerRegistry;->hasHandler(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 732
    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    invoke-virtual {v4, v1}, Lcom/nuance/connect/internal/HandlerRegistry;->add(Lcom/nuance/connect/internal/ConnectHandler;)Lcom/nuance/connect/internal/HandlerRegistry;

    .line 730
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 735
    .end local v1    # "handler":Lcom/nuance/connect/internal/ConnectHandler;
    :cond_1
    return-void
.end method

.method private sendConnectConfig()V
    .locals 6

    .prologue
    .line 703
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    sget-object v4, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-interface {v3, v4}, Lcom/nuance/connect/host/service/HostInterface;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/host/service/BuildSettings;

    .line 704
    .local v2, "settings":Lcom/nuance/connect/host/service/BuildSettings;
    invoke-interface {v2}, Lcom/nuance/connect/host/service/BuildSettings;->getLogLevel()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appSettings:Lcom/nuance/connect/internal/AppSettings;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/AppSettings;->getLogLevel()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 705
    .local v0, "logLevel":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "URL="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/nuance/connect/host/service/BuildSettings;->getConnectUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LOGGING="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CONFIGURATION:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 711
    return-void
.end method

.method private sendConnectionStatusNotification(Lcom/nuance/connect/system/NetworkState;IZZ)V
    .locals 8
    .param p1, "networkState"    # Lcom/nuance/connect/system/NetworkState;
    .param p2, "connectionType"    # I
    .param p3, "notifyForeground"    # Z
    .param p4, "notifyBackground"    # Z

    .prologue
    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "connectionValue":I
    const/4 v3, 0x0

    .line 236
    .local v3, "disconnectionValue":I
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v4

    .line 237
    .local v4, "foregroundConfiguration":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    .line 240
    .local v0, "backgroundConfiguration":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    invoke-virtual {p1, v0}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v4}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 242
    const/4 v2, 0x3

    .line 252
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p1, v4}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 254
    const/4 v3, 0x3

    .line 263
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/Set;

    monitor-enter v7

    .line 264
    :try_start_0
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/ConnectionCallback;

    .line 265
    .local v1, "callback":Lcom/nuance/connect/api/ConnectionCallback;
    if-lez v2, :cond_3

    .line 266
    invoke-interface {v1, p2, v2}, Lcom/nuance/connect/api/ConnectionCallback;->onConnected(II)V

    .line 268
    :cond_3
    if-lez v3, :cond_2

    .line 269
    invoke-interface {v1, v3}, Lcom/nuance/connect/api/ConnectionCallback;->onDisconnected(I)V

    goto :goto_2

    .line 272
    .end local v1    # "callback":Lcom/nuance/connect/api/ConnectionCallback;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 243
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p1, v0}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 245
    const/4 v2, 0x2

    goto :goto_0

    .line 246
    :cond_5
    if-eqz p3, :cond_0

    invoke-virtual {p1, v4}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    const/4 v2, 0x1

    goto :goto_0

    .line 255
    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p1, v0}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 257
    const/4 v3, 0x2

    goto :goto_1

    .line 258
    :cond_7
    if-eqz p3, :cond_1

    invoke-virtual {p1, v4}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    const/4 v3, 0x1

    goto :goto_1

    .line 272
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_8
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    return-void
.end method


# virtual methods
.method public dispatchAction(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;
    .locals 6
    .param p1, "action"    # Lcom/nuance/connect/util/ConnectAction;

    .prologue
    .line 617
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 618
    .local v4, "result":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 619
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/util/ActionFilter;Ljava/lang/ref/WeakReference<Lcom/nuance/connect/util/ActionDelegateCallback;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/util/ActionFilter;

    .line 620
    .local v1, "filter":Lcom/nuance/connect/util/ActionFilter;
    invoke-virtual {p1}, Lcom/nuance/connect/util/ConnectAction;->getFilter()Lcom/nuance/connect/util/ActionFilter;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/nuance/connect/util/ActionFilter;->matches(Lcom/nuance/connect/util/ActionFilter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 621
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/util/ActionDelegateCallback;

    .line 622
    .local v2, "handler":Lcom/nuance/connect/util/ActionDelegateCallback;
    if-eqz v2, :cond_0

    .line 623
    invoke-interface {v2, p1}, Lcom/nuance/connect/util/ActionDelegateCallback;->handle(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;

    move-result-object v4

    .line 624
    invoke-virtual {v1}, Lcom/nuance/connect/util/ActionFilter;->isOneShot()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 630
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/util/ActionFilter;Ljava/lang/ref/WeakReference<Lcom/nuance/connect/util/ActionDelegateCallback;>;>;"
    .end local v1    # "filter":Lcom/nuance/connect/util/ActionFilter;
    .end local v2    # "handler":Lcom/nuance/connect/util/ActionDelegateCallback;
    :cond_1
    return-object v4
.end method

.method public dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 635
    new-instance v0, Lcom/nuance/connect/util/ActionFilter;

    invoke-direct {v0, p1, p2}, Lcom/nuance/connect/util/ActionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .local v0, "filter":Lcom/nuance/connect/util/ActionFilter;
    new-instance v1, Lcom/nuance/connect/util/ConnectAction;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/util/ConnectAction;-><init>(Lcom/nuance/connect/util/ActionFilter;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method protected getAppFilesFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appFilesFolder:Ljava/lang/String;

    return-object v0
.end method

.method getAppSettings()Lcom/nuance/connect/internal/AppSettings;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appSettings:Lcom/nuance/connect/internal/AppSettings;

    return-object v0
.end method

.method protected getBinder()Lcom/nuance/connect/internal/ClientBinder;
    .locals 4

    .prologue
    .line 749
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Lcom/nuance/connect/internal/ClientBinderInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    return-object v0
.end method

.method public getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;
    .locals 3
    .param p1, "feature"    # Lcom/nuance/connect/common/ConnectFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 441
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 445
    new-instance v0, Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 447
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 450
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 452
    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 454
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto :goto_0

    .line 457
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 459
    new-instance v0, Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 461
    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto :goto_0

    .line 464
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 466
    new-instance v0, Lcom/nuance/connect/internal/AccountServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/AccountServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 468
    :cond_3
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    .line 471
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 472
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->ADDON:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 473
    new-instance v0, Lcom/nuance/connect/internal/AddonServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/AddonServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 475
    :cond_4
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    .line 478
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 479
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 480
    new-instance v0, Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 482
    :cond_5
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    .line 485
    :pswitch_6
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 486
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->MESSAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 487
    new-instance v0, Lcom/nuance/connect/internal/MessageServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/MessageServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 489
    :cond_6
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    .line 492
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 493
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->UPGRADE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 494
    new-instance v0, Lcom/nuance/connect/internal/UpgradeServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/UpgradeServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 496
    :cond_7
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    .line 499
    :pswitch_8
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 500
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 501
    new-instance v0, Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 503
    :cond_8
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    .line 506
    :pswitch_9
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 507
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 508
    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 510
    :cond_9
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    .line 514
    :pswitch_a
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 518
    :pswitch_b
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 521
    :pswitch_c
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 522
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 523
    new-instance v0, Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/SyncServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 525
    :cond_a
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    .line 528
    :pswitch_d
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 529
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 530
    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    .line 532
    :cond_b
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    .line 441
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
    .end packed-switch
.end method

.method getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;
    .locals 1
    .param p1, "service"    # Lcom/nuance/connect/host/service/HostInterface$HostService;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    invoke-interface {v0, p1}, Lcom/nuance/connect/host/service/HostInterface;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getIncomingHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    return-object v0
.end method

.method public getUserSettings()Lcom/nuance/connect/internal/UserSettings;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    return-object v0
.end method

.method public notifyConnectionStatus(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/Set;

    monitor-enter v3

    .line 417
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConnectionCallback;

    .line 418
    .local v0, "callback":Lcom/nuance/connect/api/ConnectionCallback;
    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/api/ConnectionCallback;->onConnectionStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 420
    .end local v0    # "callback":Lcom/nuance/connect/api/ConnectionCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    return-void
.end method

.method public notifyLocaleChange(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 425
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/Set;

    monitor-enter v3

    .line 426
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LocaleCallback;

    .line 427
    .local v0, "callback":Lcom/nuance/connect/api/LocaleCallback;
    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LocaleCallback;->onLocaleChange(Ljava/util/Locale;)V

    goto :goto_0

    .line 429
    .end local v0    # "callback":Lcom/nuance/connect/api/LocaleCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    return-void
.end method

.method protected onConnectivityChanged()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 193
    iget-object v10, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 195
    .local v1, "cm":Landroid/net/ConnectivityManager;
    new-instance v5, Lcom/nuance/connect/system/NetworkState;

    invoke-direct {v5}, Lcom/nuance/connect/system/NetworkState;-><init>()V

    .line 196
    .local v5, "newState":Lcom/nuance/connect/system/NetworkState;
    const/4 v2, -0x1

    .line 198
    .local v2, "connectionType":I
    iget-object v10, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v3

    .line 199
    .local v3, "foregroundConfiguration":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    iget-object v10, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    .line 202
    .local v0, "backgroundConfiguration":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 203
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 204
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 206
    new-instance v5, Lcom/nuance/connect/system/NetworkState;

    .end local v5    # "newState":Lcom/nuance/connect/system/NetworkState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v5, v4, v10, v11}, Lcom/nuance/connect/system/NetworkState;-><init>(Landroid/net/NetworkInfo;J)V

    .line 209
    .restart local v5    # "newState":Lcom/nuance/connect/system/NetworkState;
    :cond_0
    iget-object v10, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v10, v5}, Lcom/nuance/connect/system/NetworkState;->isSame(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 210
    :cond_1
    iget-object v10, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v10, v0}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v10

    invoke-virtual {v5, v0}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v11

    if-eq v10, v11, :cond_6

    :cond_2
    move v6, v9

    .line 212
    .local v6, "notifyBackground":Z
    :goto_0
    iget-object v10, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v10, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v10

    invoke-virtual {v5, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v11

    if-eq v10, v11, :cond_7

    :cond_3
    move v7, v9

    .line 215
    .local v7, "notifyForeground":Z
    :goto_1
    iput-object v5, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    .line 217
    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    .line 218
    :cond_4
    invoke-direct {p0, v5, v2, v7, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendConnectionStatusNotification(Lcom/nuance/connect/system/NetworkState;IZZ)V

    .line 223
    .end local v6    # "notifyBackground":Z
    .end local v7    # "notifyForeground":Z
    :cond_5
    iget-object v8, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ConnectService.checkAvailableNetworkConnections()\nBackgroundhasConnectivity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5, v0}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nForegroundhasConnectivity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 229
    return-void

    :cond_6
    move v6, v8

    .line 210
    goto :goto_0

    .restart local v6    # "notifyBackground":Z
    :cond_7
    move v7, v8

    .line 212
    goto :goto_1
.end method

.method protected onLocaleChanged()V
    .locals 5

    .prologue
    .line 300
    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {p0, v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/ConfigService;

    .line 301
    .local v1, "config":Lcom/nuance/connect/api/ConfigService;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/connect/api/ConfigService;->setActiveLocale(Ljava/util/Locale;)V

    .line 303
    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/Set;

    monitor-enter v4

    .line 304
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LocaleCallback;

    .line 305
    .local v0, "callback":Lcom/nuance/connect/api/LocaleCallback;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nuance/connect/api/LocaleCallback;->onLocaleChange(Ljava/util/Locale;)V

    goto :goto_0

    .line 307
    .end local v0    # "callback":Lcom/nuance/connect/api/LocaleCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    return-void
.end method

.method public refresh()V
    .locals 8

    .prologue
    const-wide/32 v6, 0xea60

    .line 554
    iget-wide v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    add-long/2addr v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    .line 572
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    sub-long/2addr v2, v4

    sub-long v2, v6, v2

    long-to-int v0, v2

    .line 562
    .local v0, "delay":I
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v1, "messageBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Delayed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refresh:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public registerActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;Lcom/nuance/connect/util/ActionFilter;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/connect/util/ActionDelegateCallback;
    .param p2, "filter"    # Lcom/nuance/connect/util/ActionFilter;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-void
.end method

.method public registerActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;Ljava/util/List;)V
    .locals 4
    .param p1, "callback"    # Lcom/nuance/connect/util/ActionDelegateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/util/ActionDelegateCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/util/ActionFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/util/ActionFilter;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/ActionFilter;

    .line 592
    .local v0, "filter":Lcom/nuance/connect/util/ActionFilter;
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 594
    .end local v0    # "filter":Lcom/nuance/connect/util/ActionFilter;
    :cond_0
    return-void
.end method

.method public registerAppSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .param p1, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p2, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appSettings:Lcom/nuance/connect/internal/AppSettings;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 782
    return-void
.end method

.method public registerConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/connect/api/ConnectionCallback;

    .prologue
    .line 789
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 791
    monitor-exit v1

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerLocaleCallback(Lcom/nuance/connect/api/LocaleCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/connect/api/LocaleCallback;

    .prologue
    .line 801
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 803
    monitor-exit v1

    .line 804
    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .param p1, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p2, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 778
    return-void
.end method

.method public retryConnection()V
    .locals 7

    .prologue
    const-wide/32 v5, 0x124f80

    .line 576
    iget-wide v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRetry:J

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RETRY_CONNECTION:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRetry:J

    .line 587
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRetry:J

    sub-long/2addr v1, v3

    sub-long v1, v5, v1

    long-to-int v0, v1

    .line 584
    .local v0, "delay":I
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->retryConnection:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->retryConnection:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public sendConnectionStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 277
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 279
    .local v1, "cm":Landroid/net/ConnectivityManager;
    new-instance v5, Lcom/nuance/connect/system/NetworkState;

    invoke-direct {v5}, Lcom/nuance/connect/system/NetworkState;-><init>()V

    .line 280
    .local v5, "newState":Lcom/nuance/connect/system/NetworkState;
    const/4 v2, -0x1

    .line 282
    .local v2, "connectionType":I
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v3

    .line 283
    .local v3, "foregroundConfiguration":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    iget-object v6, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    .line 286
    .local v0, "backgroundConfiguration":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 287
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 290
    invoke-static {v4, v3}, Lcom/nuance/connect/system/NetworkState;->isValidConnection(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4, v0}, Lcom/nuance/connect/system/NetworkState;->isValidConnection(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    new-instance v5, Lcom/nuance/connect/system/NetworkState;

    .end local v5    # "newState":Lcom/nuance/connect/system/NetworkState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v4, v6, v7}, Lcom/nuance/connect/system/NetworkState;-><init>(Landroid/net/NetworkInfo;J)V

    .line 296
    .restart local v5    # "newState":Lcom/nuance/connect/system/NetworkState;
    :cond_0
    invoke-direct {p0, v5, v2, v8, v8}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendConnectionStatusNotification(Lcom/nuance/connect/system/NetworkState;IZZ)V

    .line 297
    return-void
.end method

.method public setHostInterface(Lcom/nuance/connect/host/service/HostInterface;)V
    .locals 0
    .param p1, "hostInterface"    # Lcom/nuance/connect/host/service/HostInterface;

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 435
    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    .line 437
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 541
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->start()V

    .line 543
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->stop()V

    .line 548
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 549
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 550
    return-void
.end method

.method public unregisterActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/nuance/connect/util/ActionDelegateCallback;

    .prologue
    .line 598
    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 599
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/nuance/connect/util/ActionFilter;Ljava/lang/ref/WeakReference<Lcom/nuance/connect/util/ActionDelegateCallback;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 600
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 601
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/util/ActionFilter;Ljava/lang/ref/WeakReference<Lcom/nuance/connect/util/ActionDelegateCallback;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/util/ActionDelegateCallback;

    .line 602
    .local v2, "storedCallback":Lcom/nuance/connect/util/ActionDelegateCallback;
    if-nez v2, :cond_1

    .line 603
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 608
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/connect/util/ActionFilter;Ljava/lang/ref/WeakReference<Lcom/nuance/connect/util/ActionDelegateCallback;>;>;"
    .end local v2    # "storedCallback":Lcom/nuance/connect/util/ActionDelegateCallback;
    :cond_2
    return-void
.end method

.method public unregisterConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/connect/api/ConnectionCallback;

    .prologue
    .line 795
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 797
    monitor-exit v1

    .line 798
    return-void

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterLocaleCallback(Lcom/nuance/connect/api/LocaleCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/connect/api/LocaleCallback;

    .prologue
    .line 807
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 809
    monitor-exit v1

    .line 810
    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
