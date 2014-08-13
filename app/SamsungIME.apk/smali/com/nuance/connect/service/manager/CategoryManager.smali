.class public Lcom/nuance/connect/service/manager/CategoryManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/CategoryManager$2;,
        Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;,
        Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;
    }
.end annotation


# static fields
.field private static final CATEGORY_ENABLED_PREF:Ljava/lang/String; = "categoryEnabled"

.field private static final CATEGORY_INSTALLER_PREF:Ljava/lang/String; = "CATEGORY_INSTALLER_DATA"

.field private static final CATEGORY_LIST_LAST_FETCHED:Ljava/lang/String; = "CategoryRecieved"

.field private static final CHINESE_DICTIONARIES_ENABLED_PREF:Ljava/lang/String;

.field public static final COMMAND_ACK:Ljava/lang/String; = "ack"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_GET:Ljava/lang/String; = "get"

.field public static final COMMAND_LIST:Ljava/lang/String; = "list"

.field public static final COMMAND_STATUS:Ljava/lang/String; = "status"

.field public static final COMMAND_SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field public static final COMMAND_UNSUBSCRIBE:Ljava/lang/String; = "unsubscribe"

.field public static final COMMAND_VERSION:I = 0x6

.field static final DELETE_CATEGORY:Ljava/lang/String; = "DELETE_CATEGORY"

.field public static final DOWNLOAD_LIST_STATE:Ljava/lang/String;

.field public static final INITIAL_LIST_ALARM:Ljava/lang/String; = "init_list_alarm"

.field public static final KOREAN_KEYBOARD_ID:I = 0x12

.field static final LAST_UPDATE_AVAILABLE:Ljava/lang/String; = "LAST_UPDATE_AVAILABLE"

.field static final LAST_UPDATE_FETCHED:Ljava/lang/String; = "LAST_UPDATE_FETCHED"

.field private static final LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[I

.field static final SUBSCRIBED:Ljava/lang/String; = "SUBSCRIBED"

.field public static final TYPE_CHINESE_ADDON_DICTIONARY:I = 0x2

.field public static final TYPE_KEYBOARD_LANGUAGE_ONLY:I = 0x1

.field public static final TYPE_KEYBOARD_PLUS_LANGUAGE_VARIANT:I = 0x3

.field public static final TYPE_RESOURCES:I = 0x4

.field static final UNSUBSCRIBE_PENDING:Ljava/lang/String; = "UNSUBSCRIBE_PENDING"

.field static final USER_INITIATED:Ljava/lang/String; = "USER_INITIATED"


# instance fields
.field private categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

.field private chineseDictEnabled:Z

.field coresInUse:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field currentLanguageCodes:[I

.field currentLocale:Ljava/util/Locale;

.field private enabled:Z

.field private languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

.field private lastRecieved:J

.field private livingLanguageEnabled:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private resourcesEnabled:Z

.field private sendConfigRequest:Z

.field private submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

.field private submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

.field private submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LivingLanguageEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ChineseDictionariesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->CHINESE_DICTIONARIES_ENABLED_PREF:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DOWNLOAD_LIST_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->DOWNLOAD_LIST_STATE:Ljava/lang/String;

    .line 102
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_LIST_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CATEGORY_HOTWORD_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_DELETE_CATEGORY_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_UNSUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->MESSAGES_HANDLED:[I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 3
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 79
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->livingLanguageEnabled:Z

    .line 80
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->resourcesEnabled:Z

    .line 81
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->chineseDictEnabled:Z

    .line 82
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    .line 83
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->sendConfigRequest:Z

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    .line 124
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 126
    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/CategoryManager$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    .line 154
    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 155
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->messages:[I

    .line 158
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 159
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "subscribe"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 160
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "unsubscribe"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 161
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 162
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 163
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 164
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 166
    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    .line 167
    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    .line 168
    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/service/manager/CategorySubmanagerResources;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/CategoryManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/CategoryManager;->sendDictionaryDownloadProgress(Ljava/lang/String;I)V

    return-void
.end method

.method private cancelDownload(Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    .line 636
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 637
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Category is not available for cancelDownload ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelDownload("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") subscribed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "SUBSCRIBED"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 645
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "78"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 646
    .local v0, "catId":I
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, p1, v8}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 649
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "13"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 651
    .local v1, "language":I
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4, v1}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 652
    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->sendDeleteCategoryToHost(Ljava/lang/String;II)V

    .line 657
    :goto_1
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 658
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelDownload transaction active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 659
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v2

    .line 660
    .local v2, "t":Lcom/nuance/connect/service/comm/Transaction;
    if-eqz v2, :cond_0

    .line 661
    invoke-interface {v2}, Lcom/nuance/connect/service/comm/Transaction;->cancel()V

    .line 662
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    .end local v2    # "t":Lcom/nuance/connect/service/comm/Transaction;
    :cond_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "DELETE_CATEGORY"

    invoke-virtual {v3, p1, v4, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 665
    :cond_3
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "SUBSCRIBED"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 668
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "USER_INITIATED"

    invoke-virtual {v3, p1, v4, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 669
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, p1, v8}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 671
    :cond_4
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v3, v4, p1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private clearCategoryDownload(Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 1455
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "SUBSCRIBED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1456
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "LAST_UPDATE_FETCHED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1457
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "USER_INITIATED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1461
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 1464
    :cond_0
    return-void

    .line 1461
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method public static concat([I[I)[I
    .locals 4
    .param p0, "first"    # [I
    .param p1, "second"    # [I

    .prologue
    .line 176
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 177
    .local v0, "result":[I
    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    return-object v0
.end method

.method private static getTransactionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "catDb"    # Ljava/lang/String;

    .prologue
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installComplete(Ljava/lang/String;I)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installComplete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") status("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1330
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1331
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installComplete() - category list is not available ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1346
    :goto_0
    return-void

    .line 1335
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->removeDownloadFile(Ljava/lang/String;)Z

    move-result v0

    .line 1336
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed downloaded file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1338
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_1

    .line 1339
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1345
    :goto_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    goto :goto_0

    .line 1341
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install failed.  Unwinding... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 1342
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1343
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isClientInstallableCategory(Ljava/lang/String;)Z
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1276
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "25"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1277
    .local v0, "type":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1392
    new-instance v2, Lcom/nuance/connect/util/InstallMetadata;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v3

    const-string v4, "CATEGORY_INSTALLER_DATA"

    invoke-direct {v2, v3, v4}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    .line 1393
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V

    .line 1394
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V

    .line 1395
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V

    .line 1397
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    .line 1398
    .local v1, "store":Lcom/nuance/connect/store/PersistentDataStore;
    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->DOWNLOAD_LIST_STATE:Ljava/lang/String;

    sget-object v3, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    .line 1400
    const-string v2, "CategoryRecieved"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->lastRecieved:J

    .line 1401
    const-string v2, "categoryEnabled"

    invoke-interface {v1, v2, v5}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    .line 1402
    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->livingLanguageEnabled:Z

    .line 1403
    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager;->CHINESE_DICTIONARIES_ENABLED_PREF:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1404
    .local v0, "chineseEnabled":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 1405
    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->sendConfigRequest:Z

    .line 1409
    :goto_0
    return-void

    .line 1407
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->chineseDictEnabled:Z

    goto :goto_0
.end method

.method private processNextCategory()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1420
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processNextCategory() - state: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] - enabled: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1422
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v6, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/connect/util/InstallMetadata;->hasPackages()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1424
    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "processNextCategory() - none exist. done."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1449
    :goto_0
    return-void

    .line 1429
    :cond_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    new-array v6, v8, [Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1430
    .local v1, "catDb":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "USER_INITIATED"

    invoke-virtual {v5, v1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "SUBSCRIBED"

    invoke-virtual {v5, v1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5, v1}, Lcom/nuance/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5, v1}, Lcom/nuance/connect/util/InstallMetadata;->isInstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1434
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->get(Ljava/lang/String;)V

    goto :goto_0

    .line 1440
    .end local v1    # "catDb":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    array-length v5, v5

    if-lez v5, :cond_5

    .line 1441
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_4

    aget v3, v0, v2

    .line 1442
    .local v3, "languageId":I
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v5, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->processNextCategory(I)V

    .line 1443
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    invoke-virtual {v5, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->processNextCategory(I)V

    .line 1441
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1445
    .end local v3    # "languageId":I
    :cond_4
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    .line 1448
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_5
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "processNextCategory() -- completed "

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeDownloadFile(Ljava/lang/String;)Z
    .locals 7
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1208
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "10"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1212
    .local v3, "removed":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1214
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1215
    .local v2, "remove":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1216
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .end local v2    # "remove":Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 1218
    :catch_0
    move-exception v0

    .line 1220
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private resetCategoryDownloadState(Ljava/lang/String;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1227
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetCategoryDownloadState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1229
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1230
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->removeDownloadFile(Ljava/lang/String;)Z

    move-result v0

    .line 1231
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetCategoryDownloadState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1233
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "FILE_LOCATION"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-void
.end method

.method private savePreferences()V
    .locals 4

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    .line 1413
    .local v0, "store":Lcom/nuance/connect/store/PersistentDataStore;
    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->DOWNLOAD_LIST_STATE:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1414
    const-string v1, "CategoryRecieved"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->lastRecieved:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 1415
    const-string v1, "categoryEnabled"

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 1416
    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->livingLanguageEnabled:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 1417
    return-void
.end method

.method private sendDictionaryDownloadProgress(Ljava/lang/String;I)V
    .locals 7
    .param p1, "dictionary"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 1467
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "25"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1469
    .local v4, "typeId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1470
    .local v1, "data":Landroid/os/Bundle;
    const-string v5, "download"

    invoke-virtual {v1, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1471
    const-string v5, "total"

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1472
    const-string v5, "dictionary"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string v5, "CATEGORY_TYPE"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1475
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v5, v4}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->isSupported(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1477
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "13"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1479
    .local v2, "languageId":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "98"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1481
    .local v3, "locale":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "100"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1484
    .local v0, "countryList":Ljava/lang/String;
    const-string v5, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const-string v5, "CATEGORY_LOCALE"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    const-string v5, "CATEGORY_COUNTRY"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    .end local v0    # "countryList":Ljava/lang/String;
    .end local v2    # "languageId":Ljava/lang/String;
    .end local v3    # "locale":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v5, v6, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1490
    return-void
.end method

.method private subscribeNoDownload(Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 623
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Category is not available for subscribeNoDownload ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 633
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "USER_INITIATED"

    invoke-virtual {v1, p1, v2, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 628
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "LAST_UPDATE_FETCHED"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 631
    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    invoke-direct {v0, p0, p1, v5}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;Z)V

    .line 632
    .local v0, "t":Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    goto :goto_0
.end method

.method private updateChineseDictionariesStatus(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 1262
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->chineseDictEnabled:Z

    if-ne p1, v0, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->chineseDictEnabled:Z

    .line 1266
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->CHINESE_DICTIONARIES_ENABLED_PREF:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->chineseDictEnabled:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 1267
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated chinese dictionary to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1268
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->setEnabled(Z)V

    .line 1270
    if-eqz p1, :cond_0

    .line 1271
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    goto :goto_0
.end method

.method private updateLivingLanguageStatus(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1242
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->livingLanguageEnabled:Z

    if-ne p1, v0, :cond_0

    .line 1259
    :goto_0
    return-void

    .line 1245
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->livingLanguageEnabled:Z

    .line 1246
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->livingLanguageEnabled:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 1247
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated living language to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1248
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->setEnabled(Z)V

    .line 1250
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->livingLanguageEnabled:Z

    if-nez v0, :cond_1

    .line 1251
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(IZ)V

    .line 1252
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(IZ)V

    .line 1255
    :cond_1
    if-eqz p1, :cond_2

    .line 1256
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    .line 1258
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->idleSnooze()V

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 245
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method public cancelActiveTransactions(IZ)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "updateLastToNow"    # Z

    .prologue
    .line 1560
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1561
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    if-eqz v3, :cond_0

    .line 1563
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    .line 1564
    .local v2, "t":Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1565
    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->cancel()V

    .line 1566
    if-eqz p2, :cond_0

    .line 1567
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x7

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/nuance/connect/service/manager/CategoryManager;->updateLastProcessed(Ljava/lang/String;JI)V

    goto :goto_0

    .line 1572
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    .end local v2    # "t":Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->savePreferences()V

    .line 236
    return-void
.end method

.method public forceForegroundActiveTransactions(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1575
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1576
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    if-eqz v3, :cond_0

    .line 1577
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    .line 1578
    .local v2, "t":Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1579
    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->forceForeground()V

    goto :goto_0

    .line 1583
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    .end local v2    # "t":Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    :cond_1
    return-void
.end method

.method protected get(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1172
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1174
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1175
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() - Hot word list is not available for get ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1200
    :goto_0
    return-void

    .line 1179
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "25"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1181
    .local v1, "type":I
    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->livingLanguageEnabled:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1183
    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "get() living language no longer enabled"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1184
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1189
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() - already downloading ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 1193
    :cond_3
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1194
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() - already active transaction("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 1198
    :cond_4
    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;Z)V

    .line 1199
    .local v0, "download":Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    goto :goto_0
.end method

.method getAllEntriesWithCategoryId(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "categoryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1552
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "78"

    invoke-virtual {v3, v2, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1553
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1556
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 191
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v4    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->getMessageIDs()[I

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->getMessageIDs()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->concat([I[I)[I

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->getMessageIDs()[I

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->messages:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v2, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->concat([I[I)[I

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->concat([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method getUniqueCategoryIds()Landroid/util/SparseIntArray;
    .locals 6

    .prologue
    .line 1535
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 1536
    .local v2, "ids":Landroid/util/SparseIntArray;
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1537
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "78"

    invoke-virtual {v4, v3, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1538
    .local v1, "id":I
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 1539
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "25"

    invoke-virtual {v4, v3, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1542
    .end local v1    # "id":I
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public init()V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->loadPreferences()V

    .line 200
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->languageListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V

    .line 201
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->chineseDictEnabled:Z

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->init(Z)V

    .line 202
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->livingLanguageEnabled:Z

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->init(Z)V

    .line 203
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->resourcesEnabled:Z

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->init(Z)V

    .line 204
    return-void
.end method

.method protected installCategory(Ljava/lang/String;)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1281
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installCategory("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1283
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1284
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installCategory() - category list is not available ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    .line 1287
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installCategory() - category list is not ready for install ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1307
    :cond_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1308
    .local v2, "location":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "13"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v1

    .line 1311
    .local v1, "core":I
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "10"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "4"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v4, 0x7

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1315
    if-eqz v2, :cond_0

    .line 1316
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installCategory() - sending dlm events now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1317
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1318
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "DLM_EVENT_FILE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v3, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1320
    const-string v3, "IDENTIFIER"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v3, "DLM_EVENT_ACK"

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1323
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v3, v4, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1289
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "core":I
    .end local v2    # "location":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->isClientInstallableCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1290
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installCategory() - category type is not installable client-side ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "25"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1294
    :cond_4
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "13"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1296
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installCategory() - core is not available ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; langId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "13"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; core: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "13"

    invoke-virtual {v6, p1, v7}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; cores: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, "handled":Z
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v8, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->onHandleMessage(Landroid/os/Message;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v7

    .line 273
    :cond_1
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v8, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->onHandleMessage(Landroid/os/Message;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 276
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    invoke-virtual {v8, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->onHandleMessage(Landroid/os/Message;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 279
    const/4 v3, 0x1

    .line 280
    sget-object v8, Lcom/nuance/connect/service/manager/CategoryManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 385
    const/4 v3, 0x0

    :cond_2
    :goto_1
    move v7, v3

    .line 389
    goto :goto_0

    .line 282
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "category":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 285
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v9, "USER_INITIATED"

    invoke-virtual {v8, v0, v9, v7}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    :cond_3
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto :goto_1

    .line 292
    .end local v0    # "category":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .restart local v0    # "category":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 295
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v9, "USER_INITIATED"

    invoke-virtual {v8, v0, v9, v7}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    :cond_4
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v8, "SUBSCRIBED"

    invoke-virtual {v7, v0, v8}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 299
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_5
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->get(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    .end local v0    # "category":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .restart local v0    # "category":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeNoDownload(Ljava/lang/String;)V

    goto :goto_1

    .line 313
    .end local v0    # "category":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0    # "category":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    .end local v0    # "category":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0    # "category":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelDownload(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    .end local v0    # "category":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 324
    .local v5, "status":Z
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MESSAGE_CLIENT_SET_CATEGORY_HOTWORD_STATUS status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 325
    invoke-direct {p0, v5}, Lcom/nuance/connect/service/manager/CategoryManager;->updateLivingLanguageStatus(Z)V

    goto/16 :goto_1

    .line 329
    .end local v5    # "status":Z
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 330
    .restart local v5    # "status":Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DLM_EVENT_CATEGORY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 331
    .local v1, "core":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DLM_EVENT_COUNT"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 332
    .local v2, "count":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "IDENTIFIER"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0    # "category":Ljava/lang/String;
    invoke-virtual {p0, v5, v1, v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->updateCategoryEventAck(ZILjava/lang/String;I)V

    goto/16 :goto_1

    .line 337
    .end local v0    # "category":Ljava/lang/String;
    .end local v1    # "core":I
    .end local v2    # "count":I
    .end local v5    # "status":Z
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 338
    .restart local v5    # "status":Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 339
    .local v0, "category":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 341
    .local v4, "language":I
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APICommandMessages.MESSAGE_CLIENT_PROCESS_CATEGORY_DELETE_CATEGORY_ACK: Status: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] Category: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] Language: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 345
    if-nez v5, :cond_2

    goto/16 :goto_1

    .line 352
    .end local v0    # "category":I
    .end local v4    # "language":I
    .end local v5    # "status":Z
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->installCategory(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 358
    .end local v0    # "category":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .restart local v0    # "category":Ljava/lang/String;
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v7}, Lcom/nuance/connect/service/manager/CategoryManager;->installComplete(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 364
    .end local v0    # "category":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "ACKNOWLEDGEMENT"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 365
    .local v6, "taskAcknowledgement":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 370
    .end local v6    # "taskAcknowledgement":Ljava/lang/String;
    :pswitch_b
    iget-object v7, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v8, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v7, v8, :cond_6

    .line 371
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->status()V

    goto/16 :goto_1

    .line 374
    :cond_6
    iget-object v7, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v8, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v8, v9, v10}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto/16 :goto_1

    .line 380
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/nuance/connect/service/manager/CategoryManager;->updateChineseDictionariesStatus(Z)V

    goto/16 :goto_1

    .line 280
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
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "unsubscribe"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->processUnsubscribeResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 260
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->savePreferences()V

    .line 261
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->processStatusResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0
.end method

.method public postStart()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "postStart()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 228
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->enabled:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    .line 231
    :cond_0
    return-void
.end method

.method protected processListResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 18
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 491
    const/4 v11, 0x0

    .line 492
    .local v11, "requestStatus":Z
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v16, "77"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 494
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v16, "77"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 495
    .local v3, "categoryList":Lorg/json/JSONArray;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_7

    .line 496
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 497
    .local v12, "returnedCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v15}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 499
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-ge v6, v15, :cond_6

    .line 501
    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 504
    .local v1, "category":Lorg/json/JSONObject;
    const-string v15, "15"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 505
    .local v7, "id":Ljava/lang/String;
    const-string v15, "78"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 506
    .local v2, "categoryId":I
    const-string v15, "25"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 507
    .local v14, "type":I
    const-string v15, "13"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 509
    .local v9, "language":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v15, v7}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 510
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v15, v7}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    .line 511
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v15, v7}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 513
    .local v10, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "15"

    invoke-virtual {v10, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v15, "78"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v15, "13"

    invoke-virtual {v10, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v15, "25"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v15, "LAST_UPDATE_FETCHED"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v15, "SUBSCRIBED"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v15, "16"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 521
    const-string v15, "16"

    const-string v16, "16"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_0
    const-string v15, "18"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 524
    const-string v15, "18"

    const-string v16, "18"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_1
    const-string v15, "98"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 528
    const-string v15, "98"

    const-string v16, "98"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_2
    const-string v15, "100"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "100"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 533
    const-string v15, "100"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 535
    .local v4, "countryListArray":Lorg/json/JSONArray;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v8, v15, :cond_3

    .line 537
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 541
    :cond_3
    const-string v15, "100"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .end local v4    # "countryListArray":Lorg/json/JSONArray;
    .end local v8    # "j":I
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const-string v15, "STEP"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v15, "LAST_UPDATE_AVAILABLE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v15, v7, v10}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 552
    .end local v10    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v12, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    .end local v1    # "category":Lorg/json/JSONObject;
    .end local v2    # "categoryId":I
    .end local v7    # "id":Ljava/lang/String;
    .end local v9    # "language":Ljava/lang/String;
    .end local v14    # "type":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 553
    :catch_0
    move-exception v5

    .line 554
    .local v5, "ex":Lorg/json/JSONException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failure processing JSON object: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 555
    const/4 v12, 0x0

    goto :goto_2

    .line 572
    .end local v5    # "ex":Lorg/json/JSONException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v15}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 573
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v16, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_9

    const/4 v11, 0x1

    .line 580
    :goto_3
    sget-object v15, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    .line 583
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    .line 587
    .end local v3    # "categoryList":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v12    # "returnedCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    if-eqz v11, :cond_8

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/service/manager/CategoryManager;->status()V

    .line 590
    :cond_8
    return-void

    .line 572
    .restart local v3    # "categoryList":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v12    # "returnedCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V

    throw v15

    .line 578
    :cond_9
    const/4 v11, 0x0

    goto :goto_3
.end method

.method protected processStatusResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 7
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 776
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "processStatusResponse()"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 778
    const/4 v3, 0x1

    iget v4, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v3, v4, :cond_2

    .line 780
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 782
    :try_start_0
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "77"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 783
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "status available for category."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 784
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "77"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 785
    .local v0, "categoryList":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 786
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 787
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ge v1, v3, :cond_1

    .line 789
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 792
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Category is not available for status update ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 787
    .end local v2    # "id":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .restart local v2    # "id":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "LAST_UPDATE_AVAILABLE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 798
    .end local v2    # "id":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 806
    .end local v0    # "categoryList":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 808
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-string v4, "CDB_AVAILABLE"

    invoke-virtual {v3, v4}, Lcom/nuance/connect/service/ConnectClient;->taskCompletedAcknowledgement(Ljava/lang/String;)V

    .line 809
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    .line 812
    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    .line 813
    return-void

    .line 806
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v3
.end method

.method protected processUnsubscribeResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 738
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "processUnsubscribeResponse()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 740
    const/4 v1, 0x1

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v1, v2, :cond_1

    .line 741
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    .line 743
    .local v0, "category":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    .line 748
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_UNSUBSCRIBE_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 751
    .end local v0    # "category":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V

    .line 752
    return-void
.end method

.method protected requestCategoryList(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskAcknowledgement"    # Ljava/lang/String;

    .prologue
    .line 404
    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    .line 405
    .local v0, "list":Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    .line 406
    return-void
.end method

.method sendDeleteCategoryToHost(Ljava/lang/String;II)V
    .locals 3
    .param p1, "categoryDb"    # Ljava/lang/String;
    .param p2, "catId"    # I
    .param p3, "language"    # I

    .prologue
    .line 1526
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1527
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1528
    const-string v1, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1529
    const-string v1, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_DELETE_CATEGORY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1531
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REMOVE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1532
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 209
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->sendConfigRequest:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "sendConfigRequest"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 212
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-ne v0, v1, :cond_2

    .line 216
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->requestCategoryList(Ljava/lang/String;)V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->start()V

    .line 219
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->start()V

    .line 220
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->start()V

    .line 221
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 222
    return-void
.end method

.method protected status()V
    .locals 3

    .prologue
    .line 764
    const-string v1, "status"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 765
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 766
    return-void
.end method

.method protected subscribe(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 600
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribe("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 602
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Category is not available for subscriptions ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 620
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Category is already attempting a subscribe ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 613
    :cond_1
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribe() - already active transaction("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 618
    :cond_2
    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    invoke-direct {v0, p0, p1, v4}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;Z)V

    .line 619
    .local v0, "subscribe":Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    goto :goto_0
.end method

.method protected unsubscribe(Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsubscribe("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 685
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 686
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Category is not available for unsubscribe ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 728
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "SUBSCRIBED"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 692
    .local v1, "checkSubscribe":Z
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 695
    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "SUBSCRIBED"

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 696
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "LAST_UPDATE_FETCHED"

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 697
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "78"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 698
    .local v0, "catId":I
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 701
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "13"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 703
    .local v3, "language":I
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v6, v3}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 704
    invoke-virtual {p0, p1, v0, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->sendDeleteCategoryToHost(Ljava/lang/String;II)V

    .line 709
    :goto_1
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 710
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsubscribe transaction active: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 711
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v4

    .line 712
    .local v4, "t":Lcom/nuance/connect/service/comm/Transaction;
    if-eqz v4, :cond_1

    .line 713
    invoke-interface {v4}, Lcom/nuance/connect/service/comm/Transaction;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    .end local v4    # "t":Lcom/nuance/connect/service/comm/Transaction;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    goto/16 :goto_0

    .line 706
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "DELETE_CATEGORY"

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 726
    .end local v0    # "catId":I
    .end local v3    # "language":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v5

    .line 715
    .restart local v0    # "catId":I
    .restart local v3    # "language":I
    :cond_3
    if-eqz v1, :cond_4

    .line 716
    :try_start_2
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "UNSUBSCRIBE_PENDING"

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 717
    const-string v5, "unsubscribe"

    sget-object v6, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v5, v6}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v2

    .line 718
    .local v2, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v5, v2, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v6, "15"

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iput-object p1, v2, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 720
    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 721
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->sendChineseAddonDictionaries()V

    goto :goto_2

    .line 723
    .end local v2    # "command":Lcom/nuance/connect/service/comm/Command;
    :cond_4
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Already unsubscribed to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method unsubscribeAll()V
    .locals 1

    .prologue
    .line 1497
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribeAll(I)V

    .line 1498
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribeAll(I)V

    .line 1499
    return-void
.end method

.method unsubscribeAll(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 1508
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    monitor-enter v6

    .line 1509
    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v2

    .line 1510
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1512
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1513
    .local v1, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "SUBSCRIBED"

    invoke-virtual {v5, v1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1514
    .local v3, "subscribed":Z
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "25"

    invoke-virtual {v5, v1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1518
    .local v4, "typeId":I
    if-eqz v3, :cond_0

    if-ne v4, p1, :cond_0

    .line 1519
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_0

    .line 1510
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "subscribed":Z
    .end local v4    # "typeId":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1522
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method protected updateCategoryEventAck(ZILjava/lang/String;I)V
    .locals 7
    .param p1, "status"    # Z
    .param p2, "core"    # I
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "eventCount"    # I

    .prologue
    .line 1349
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCategoryEventAck() - status: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] core: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] category: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1352
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4, p3}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1353
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCategoryEventAck() - category list is not available ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1389
    :goto_0
    return-void

    .line 1355
    :cond_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4, p3}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    .line 1356
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCategoryEventAck() - category list is not ready for install ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1358
    invoke-direct {p0, p3}, Lcom/nuance/connect/service/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    :cond_1
    if-eqz p1, :cond_3

    .line 1363
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, p3, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1365
    .local v2, "location":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1366
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1367
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1369
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    invoke-virtual {v4, p3, p4}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendInstallInfo(Ljava/lang/String;I)V

    .line 1377
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, p3, v5}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_0

    .line 1381
    .end local v2    # "location":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v5, 0x5

    invoke-virtual {v4, p3, v5}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1382
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1383
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1386
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1387
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->calcDefaultMilliDelay()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 1370
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "m":Landroid/os/Message;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "location":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected updateLastProcessed(Ljava/lang/String;JI)V
    .locals 3
    .param p1, "catDb"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "status"    # I

    .prologue
    .line 1586
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1587
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 1589
    :try_start_0
    const-string v1, "STEP"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    const-string v1, "LAST_UPDATE_FETCHED"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1593
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 1595
    return-void

    .line 1593
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v1
.end method
