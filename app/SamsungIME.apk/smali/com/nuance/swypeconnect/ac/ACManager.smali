.class public final Lcom/nuance/swypeconnect/ac/ACManager;
.super Ljava/lang/Object;
.source "ACManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;
    }
.end annotation


# static fields
.field public static final CHINESE_DICTIONARY_SERVICE:Ljava/lang/String; = "CHINESE_DICTIONARY_SERVICE"

.field public static final CONNECTION_STATUS_DELAYED:I = 0x3

.field public static final CONNECTION_STATUS_INITIALIZATION_COMPLETE:I = 0xd

.field public static final CONNECTION_STATUS_OK:I = 0x1

.field public static final CONNECTION_STATUS_REFRESH_COMPLETED:I = 0xa

.field public static final CONNECTION_STATUS_REFRESH_DELAYED:I = 0xc

.field public static final CONNECTION_STATUS_REFRESH_PENDING:I = 0xb

.field public static final CONNECTION_STATUS_STALLED:I = 0x2

.field public static final CONNECTION_STATUS_STALLED_DOWNLOAD:I = 0x8

.field public static final CONNECTION_STATUS_STALLED_HTTP_ERROR:I = 0x7

.field public static final CONNECTION_STATUS_STALLED_JSON_PARSE:I = 0x5

.field public static final CONNECTION_STATUS_STALLED_PROTOCOL_EXCEPTION:I = 0x6

.field public static final CONNECTION_STATUS_STALLED_SSL:I = 0x4

.field public static final CONNECTION_STATUS_STALLED_UNKNOWN_RESPONSE:I = 0x9

.field public static final CONNECTION_TYPE_BACKGROUND:I = 0x2

.field public static final CONNECTION_TYPE_FOREGROUND:I = 0x1

.field public static final CONNECT_TYPE_ALL:I = 0x3

.field public static final DEVICE_SERVICE:Ljava/lang/String; = "DEVICE"

.field public static final DLM_SERVICE:Ljava/lang/String; = "DLM"

.field public static final LANGUAGE_SERVICE:Ljava/lang/String; = "LANGUAGE"

.field public static final LIVING_LANGUAGE_SERVICE:Ljava/lang/String; = "LIVING_LANGUAGE"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

.field private buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

.field private configService:Lcom/nuance/connect/api/ConfigService;

.field private configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

.field private connect:Lcom/nuance/connect/api/ConnectServiceManager;

.field private connectionCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;",
            "Lcom/nuance/connect/api/ConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field private coreVersionAlpha:Ljava/lang/String;

.field private coreVersionChinese:Ljava/lang/String;

.field private coreVersionJapanese:Ljava/lang/String;

.field private coreVersionKorean:Ljava/lang/String;

.field private isInitialized:Z

.field private isStarted:Z

.field private language:Lcom/nuance/swypeconnect/ac/ACLanguage;

.field private legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private oemId:Ljava/lang/String;

.field private services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swypeconnect/ac/ACService;",
            ">;"
        }
    .end annotation
.end field

.field protected servicesToInitialize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lcom/nuance/connect/store/FileStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    sget-object v2, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 225
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    .line 227
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    .line 418
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    .line 419
    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    .line 420
    new-instance v2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    invoke-direct {v2}, Lcom/nuance/swypeconnect/ac/ACBuildConfig;-><init>()V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    .line 421
    new-instance v2, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    new-instance v3, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    invoke-direct {v3}, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;-><init>()V

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    invoke-direct {v2, p0, v3, v4}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;Lcom/nuance/swypeconnect/ac/ACBuildConfig;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    .line 422
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v2}, Lcom/nuance/connect/host/service/BuildSettings;->getOemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->oemId:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "appFilesFolder":Ljava/lang/String;
    new-instance v2, Lcom/nuance/connect/store/FileStore;

    invoke-direct {v2, v0}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    .line 427
    new-instance v2, Lcom/nuance/swypeconnect/ac/ACManager$1;

    invoke-direct {v2, p0}, Lcom/nuance/swypeconnect/ac/ACManager$1;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    invoke-static {p1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->make(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    .line 439
    const-string v2, "AC-SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AC-SDK Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v4}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v4}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    .line 445
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/ConfigService;

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    .line 446
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-direct {v1, p0, v2}, Lcom/nuance/swypeconnect/ac/ACDeviceService;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/ConfigService;)V

    .line 447
    .local v1, "service":Lcom/nuance/swypeconnect/ac/ACService;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .end local v1    # "service":Lcom/nuance/swypeconnect/ac/ACService;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/LanguageService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v2, v3, p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;-><init>(Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 452
    .restart local v1    # "service":Lcom/nuance/swypeconnect/ac/ACService;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDlmService;

    .end local v1    # "service":Lcom/nuance/swypeconnect/ac/ACService;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/DLMService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACDlmService;-><init>(Lcom/nuance/connect/api/DLMService;Lcom/nuance/connect/store/PersistentDataStore;)V

    .line 456
    .restart local v1    # "service":Lcom/nuance/swypeconnect/ac/ACService;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDlmService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    .end local v1    # "service":Lcom/nuance/swypeconnect/ac/ACService;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/LivingLanguageService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;-><init>(Lcom/nuance/connect/api/LivingLanguageService;Lcom/nuance/connect/store/PersistentDataStore;)V

    .line 460
    .restart local v1    # "service":Lcom/nuance/swypeconnect/ac/ACService;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .end local v1    # "service":Lcom/nuance/swypeconnect/ac/ACService;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->ADDON_DICTIONARIES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/AddonDictionariesService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v3, v4}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/api/ResourcesService;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;-><init>(Lcom/nuance/connect/api/AddonDictionariesService;Lcom/nuance/connect/api/ResourcesService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 466
    .restart local v1    # "service":Lcom/nuance/swypeconnect/ac/ACService;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance v2, Lcom/nuance/swypeconnect/ac/ACConfiguration;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v2, p0, v3}, Lcom/nuance/swypeconnect/ac/ACConfiguration;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/store/PersistentDataStore;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    .line 469
    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v2, p0, v3}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/store/PersistentDataStore;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    .line 470
    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-direct {v2, p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    .line 471
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/connect/host/service/BuildSettings;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    return-object v0
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConnectClass()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 484
    const-string v0, "com.nuance.connect.service.ConnectClient"

    .line 486
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    return-object v0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private isConnectClientClassExist()Z
    .locals 2

    .prologue
    .line 503
    :try_start_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnectClass()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    const/4 v1, 0x1

    .line 506
    :goto_0
    return v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validApplicationId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "valid":Z
    if-nez p1, :cond_1

    .line 531
    const/4 v0, 0x0

    .line 538
    :cond_0
    :goto_0
    return v0

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getAppKeyStarts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 533
    const/4 v0, 0x1

    goto :goto_0

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getAppKeyStarts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected convertJSONTasksToServiceTasks(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "jsonObject"    # Ljava/lang/String;

    .prologue
    .line 887
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v2, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, "dataList":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 892
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 894
    .local v3, "taskString":Ljava/lang/String;
    const-string v4, "CDB_AVAILABLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 895
    const-string v4, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    const-string v4, "LIVING_LANGUAGE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    :cond_1
    const-string v4, "CDB_LIST_UPDATE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 898
    const-string v4, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    const-string v4, "LIVING_LANGUAGE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 905
    .end local v0    # "dataList":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "taskString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 909
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 910
    const-string v4, ""

    .line 913
    :goto_2
    return-object v4

    .line 900
    .restart local v0    # "dataList":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "taskString":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, "LANGUAGE_LIST_UPDATED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 901
    const-string v4, "LANGUAGE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 913
    .end local v0    # "dataList":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "taskString":Ljava/lang/String;
    :cond_4
    const-string v4, ","

    invoke-static {v2, v4}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public getACBuildDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getACVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    return-object v0
.end method

.method protected getConnect()Lcom/nuance/connect/api/ConnectServiceManager;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    return-object v0
.end method

.method public getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    return-object v0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->oemId:Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    const-string v2, "Please call start()."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedTOS()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DEVICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 709
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x68

    const-string v2, "Please Accept the TOS before requesting any services."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 713
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 716
    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    return-object v0
.end method

.method public isConnectInitialized()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isInitialized:Z

    return v0
.end method

.method public isConnectStarted()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->refresh()V

    .line 858
    :cond_0
    return-void
.end method

.method public registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    .prologue
    .line 776
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swypeconnect/ac/ACManager$2;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    .line 799
    .local v0, "adapter":Lcom/nuance/connect/api/ConnectionCallback;
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->registerConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V

    .line 801
    return-void
.end method

.method public retryConnection()V
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->retryConnection()V

    .line 872
    :cond_0
    return-void
.end method

.method declared-synchronized serviceInitialized(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getInitializationTimestamp()Ljava/lang/Long;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setInitialVersion(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setCurrentVersion(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setInitializationTimestamp(Ljava/lang/Long;)V

    .line 641
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isInitialized:Z

    .line 642
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    const/16 v1, 0xd

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/ConnectServiceManager;->notifyConnectionStatus(ILjava/lang/String;)V

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :cond_2
    monitor-exit p0

    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "alpha"    # Ljava/lang/String;
    .param p2, "chinese"    # Ljava/lang/String;
    .param p3, "japanese"    # Ljava/lang/String;
    .param p4, "korean"    # Ljava/lang/String;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    .line 745
    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    .line 746
    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    .line 747
    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    .line 748
    return-void
.end method

.method protected setupInitialization()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    .line 543
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    const-string v1, "LANGUAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    const-string v1, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 660
    iget-boolean v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Shutdown ACManager"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 663
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    .line 664
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConnectServiceManager;->stop()V

    .line 666
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 667
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACService;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACService;->shutdown()V

    goto :goto_0

    .line 670
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACService;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "ACManager not started, shutdown ignored"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 672
    :cond_1
    return-void
.end method

.method public start()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x75

    .line 555
    iget-boolean v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v7, :cond_0

    .line 556
    new-instance v7, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v8, 0x76

    const-string v9, "The SDK has already started. Please remove your instance before starting again."

    invoke-direct {v7, v8, v9}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectClientClassExist()Z

    move-result v7

    if-nez v7, :cond_1

    .line 561
    new-instance v7, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v8, 0x65

    const-string v9, "Connect Service is not available. Please verify your SDK setup."

    invoke-direct {v7, v8, v9}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 564
    :cond_1
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/nuance/swypeconnect/ac/ACManager;->validApplicationId(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 565
    new-instance v7, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v8, 0x6b

    const-string v9, "The application key is not valid."

    invoke-direct {v7, v8, v9}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 568
    :cond_2
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildExpiration()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 569
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "Checking time for expiration"

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 571
    :try_start_0
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    const-string v9, "T"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "rfc2445Format":Ljava/lang/String;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 573
    .local v3, "now":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 575
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 576
    .local v6, "whenLicenseExpires":Landroid/text/format/Time;
    invoke-virtual {v6, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 577
    iget v7, v6, Landroid/text/format/Time;->monthDay:I

    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v8}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildExpiration()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/text/format/Time;->monthDay:I

    .line 578
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 580
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    now="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " expires="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " expired="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 581
    invoke-virtual {v3, v6}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 582
    new-instance v7, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v8, 0x75

    const-string v9, "The SDK Trial has expired."

    invoke-direct {v7, v8, v9}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 584
    .end local v3    # "now":Landroid/text/format/Time;
    .end local v4    # "rfc2445Format":Ljava/lang/String;
    .end local v6    # "whenLicenseExpires":Landroid/text/format/Time;
    :catch_0
    move-exception v2

    .line 585
    .local v2, "ne":Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v8, "The SDK Trial has expired."

    invoke-direct {v7, v10, v8}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 586
    .end local v2    # "ne":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v5

    .line 587
    .local v5, "te":Landroid/util/TimeFormatException;
    new-instance v7, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v8, "The SDK Trial has expired."

    invoke-direct {v7, v10, v8}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 591
    .end local v5    # "te":Landroid/util/TimeFormatException;
    :cond_3
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 593
    new-instance v7, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v8, 0x6a

    const-string v9, "You must specify core versions to start AC-SDK."

    invoke-direct {v7, v8, v9}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 596
    :cond_4
    const-string v7, "android.permission.INTERNET"

    invoke-direct {p0, v7}, Lcom/nuance/swypeconnect/ac/ACManager;->checkPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v7}, Lcom/nuance/swypeconnect/ac/ACManager;->checkPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v7}, Lcom/nuance/swypeconnect/ac/ACManager;->checkPermission(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 599
    :cond_5
    new-instance v7, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v8, 0x64

    const-string v9, "No network permissions were enabled. Please verify the Android manifest file."

    invoke-direct {v7, v8, v9}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 602
    :cond_6
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v8}, Lcom/nuance/connect/api/ConfigService;->getCurrentVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 603
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This is an update version from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v9}, Lcom/nuance/connect/api/ConfigService;->getCurrentVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v9}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    .line 604
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v8}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/api/ConfigService;->setCurrentVersion(Ljava/lang/String;)V

    .line 607
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->setupInitialization()V

    .line 608
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v7}, Lcom/nuance/connect/api/ConnectServiceManager;->start()V

    .line 609
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v7}, Lcom/nuance/connect/api/ConnectServiceManager;->sendConnectionStatus()V

    .line 610
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    .line 612
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 613
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACService;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACService;->start()V

    goto :goto_0

    .line 616
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACService;>;"
    :cond_8
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "ACManager.start() Started"

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 617
    return-void
.end method

.method public unregisterConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConnectionCallback;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->unregisterConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V

    .line 812
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_0
    return-void
.end method
