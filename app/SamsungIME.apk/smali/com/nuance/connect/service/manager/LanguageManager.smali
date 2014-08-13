.class public Lcom/nuance/connect/service/manager/LanguageManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/LanguageManager$1;,
        Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;,
        Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;
    }
.end annotation


# static fields
.field public static final COMMAND_DOWNLOAD_LANGUAGE_PACK:Ljava/lang/String; = "downloadLangPack"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_VERSION:I = 0x6

.field public static final DOWNLOAD_LIST_STATE_AVAILABLE:I = 0x1

.field public static final DOWNLOAD_LIST_STATE_NONE:I = 0x2

.field public static final DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String;

.field public static final DOWNLOAD_LIST_STATE_UNKNOWN:I = 0x0

.field public static final LANGUAGE_DISPLAY_PREFIX_PREF:Ljava/lang/String; = "LANGUAGE_DISPLAY_"

.field public static final LANGUAGE_INSTALLER_PREF:Ljava/lang/String; = "LANGUAGE_INSTALLER_DATA"

.field public static final LANGUAGE_UPGRADE_PREF:Ljava/lang/String; = "LANGUAGE_UPGRADE_DATA"

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field public static final USER_LANGUAGES_PREF:Ljava/lang/String; = "LANGUAGES_DL"


# instance fields
.field private downloadListState:I

.field private final languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->LANGUAGE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/LanguageManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/LanguageManager;->MANAGER_NAME:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/LanguageManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DOWNLOAD_LIST_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/LanguageManager;->DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_LANGUAGE_UPGRADE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_REFRESH_LANGUAGE_MANAGER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALLED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_REMOVE_LANGUAGES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_DOWNLOAD_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_LANGAUGE_LIST_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/LanguageManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 6
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 551
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 122
    iput v4, p0, Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I

    .line 135
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 552
    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 553
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 554
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 557
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 560
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 563
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadLangPack"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 566
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 570
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 575
    new-instance v0, Lcom/nuance/connect/util/InstallMetadata;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v1

    const-string v2, "LANGUAGE_INSTALLER_DATA"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    .line 576
    return-void

    .line 566
    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    .line 570
    :array_1
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/LanguageManager;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager;->processRequestLanguagesListResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/LanguageManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/LanguageManager;->notifyUserOfFailedInstall(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/LanguageManager;->sendLanguageDownloadProgress(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/LanguageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;Z)V

    return-void
.end method

.method private cleanUpFromFailedInstall(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "processQueue"    # Z

    .prologue
    .line 970
    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 971
    if-eqz p2, :cond_0

    .line 972
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->processQueuedInstalls()V

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 978
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 979
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 981
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    .line 989
    if-eqz p2, :cond_3

    .line 990
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->processQueuedInstalls()V

    .line 993
    :cond_3
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->finishTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 982
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static getTransactionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

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

.method private loadPreferences()V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/LanguageManager;->DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I

    .line 722
    return-void
.end method

.method private notifyUserOfFailedInstall(Ljava/lang/String;I)V
    .locals 4
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "reasonCode"    # I

    .prologue
    .line 1165
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1166
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    const-string v3, "LANGUAGES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    new-instance v2, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    const-string v3, "com_nuance_connect_notification_unspecified_failure"

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setReplaceText(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const-string v3, "DISPLAY_LANG"

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setReplaceTextDecorator(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const-string v3, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    .line 1175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1176
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1177
    const-string v2, "PROP_LANGUAGE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2, v3, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1179
    return-void
.end method

.method private processQueuedInstalls()V
    .locals 5

    .prologue
    .line 1034
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processQueuedInstalls() isInstalling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1036
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1037
    .local v1, "lang":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v1}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1039
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto :goto_0

    .line 1043
    .end local v1    # "lang":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 1044
    return-void
.end method

.method private processRequestLanguagesListResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 10
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    const/4 v9, 0x1

    .line 755
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "processRequestLanguagesListResponse()"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 756
    iget v6, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v9, v6, :cond_6

    .line 757
    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "43"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 758
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Processing languages available for download."

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 759
    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "43"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 760
    .local v2, "jsonLangList":Lorg/json/JSONArray;
    if-eqz v2, :cond_5

    .line 761
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 762
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    .line 764
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ge v1, v6, :cond_4

    .line 766
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 767
    .local v3, "languageData":Lorg/json/JSONObject;
    const-string v6, "11"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 768
    .local v4, "languageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v6, v4}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    .line 771
    const-string v6, "20"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, "version":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "PROP_VERSION"

    invoke-virtual {v6, v4, v7, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v6, "102"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 777
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE"

    const-string v8, "102"

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE_VERSION"

    const-string v8, "102"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    .end local v3    # "languageData":Lorg/json/JSONObject;
    .end local v4    # "languageName":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 783
    .restart local v3    # "languageData":Lorg/json/JSONObject;
    .restart local v4    # "languageName":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_1
    const-string v6, "103"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 784
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE"

    const-string v8, "103"

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE_VERSION"

    const-string v8, "103"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 806
    .end local v3    # "languageData":Lorg/json/JSONObject;
    .end local v4    # "languageName":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 807
    .local v0, "ex":Lorg/json/JSONException;
    :try_start_2
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure processing JSON object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 812
    .end local v0    # "ex":Lorg/json/JSONException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v7}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v6

    .line 790
    .restart local v3    # "languageData":Lorg/json/JSONObject;
    .restart local v4    # "languageName":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v6, "104"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 791
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE"

    const-string v8, "104"

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE_VERSION"

    const-string v8, "104"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 797
    :cond_3
    const-string v6, "105"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 798
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE"

    const-string v8, "105"

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE_VERSION"

    const-string v8, "105"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 812
    .end local v3    # "languageData":Lorg/json/JSONObject;
    .end local v4    # "languageName":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    .line 828
    iput v9, p0, Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I

    .line 829
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v6}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v6

    sget-object v7, Lcom/nuance/connect/service/manager/LanguageManager;->DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String;

    iget v8, p0, Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I

    invoke-interface {v6, v7, v8}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    .line 837
    .end local v1    # "i":I
    .end local v2    # "jsonLangList":Lorg/json/JSONArray;
    :cond_5
    :goto_2
    invoke-direct {p0, v9}, Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 839
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 840
    return-void

    .line 831
    .restart local v2    # "jsonLangList":Lorg/json/JSONArray;
    :cond_7
    const/4 v6, 0x2

    iput v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I

    .line 832
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v6}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v6

    sget-object v7, Lcom/nuance/connect/service/manager/LanguageManager;->DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String;

    iget v8, p0, Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I

    invoke-interface {v6, v7, v8}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method private processSendStatusResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 896
    return-void
.end method

.method private saveInstalledLanguageList()V
    .locals 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "LANGUAGES_DL"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->getInstalledPackageList()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1138
    return-void
.end method

.method private sendDownloadLanguagesStatus(Z)V
    .locals 3
    .param p1, "sendIfNotStarted"    # Z

    .prologue
    .line 1112
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    if-eqz v1, :cond_1

    .line 1114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1115
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->getAllMetadata()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1116
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_LANGUAGES_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1119
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method private sendLanguageDownloadProgress(Ljava/lang/String;I)V
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    if-eqz v1, :cond_0

    .line 1127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1128
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "PROP_LANGUAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v1, "PROP_DOWNLOAD_PERCENT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 1133
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private upgrade()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1084
    const/4 v3, 0x0

    .line 1085
    .local v3, "previousLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v5

    const-string v6, "LANGUAGE_UPGRADE_DATA"

    invoke-interface {v5, v6, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, "temp":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1087
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "previousLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1093
    .restart local v3    # "previousLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1094
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1095
    .local v2, "lang":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5, v2}, Lcom/nuance/connect/util/InstallMetadata;->isAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1096
    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto :goto_1

    .line 1089
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "lang":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "previousLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "previousLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 1098
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "lang":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " will not be installed on upgrade.  The server reports it is no longer available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 1102
    .end local v2    # "lang":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v5

    const-string v6, "LANGUAGE_UPGRADE_DATA"

    invoke-interface {v5, v6, v8}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1103
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 714
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 619
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->saveInstalledLanguageList()V

    .line 620
    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    .line 621
    return-void
.end method

.method public finishLanguageInstall(Ljava/lang/String;)V
    .locals 4
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 908
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishLanguageInstall("

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

    .line 909
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->finishTransaction(Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 912
    .local v0, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x1f7

    const-string v1, "TRANSACTION_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->sendStatus(Ljava/lang/String;ILjava/lang/String;)V

    .line 913
    const-string v1, "STEP"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string v1, "PROP_INSTALLEDVERSION"

    const-string v2, "PROP_VERSION"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v1, "TRANSACTION_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string v1, "CHECKSUM"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v1, "INSTALL_TIME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p1, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 921
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 922
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->saveInstalledLanguageList()V

    .line 924
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->hasMoreInstalls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->hasMoreRemoves()Z

    move-result v1

    if-nez v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->processQueuedInstalls()V

    goto :goto_0
.end method

.method protected getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1182
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

    .line 1183
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/comm/Transaction;

    .line 1188
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    :goto_0
    return-object v2

    .line 1187
    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

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

    .line 1188
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->LANGUAGE:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 603
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v4    # "manager":Lcom/nuance/connect/internal/common/ManagerService;
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getInstalledLanguages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1150
    .local v0, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1151
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    const-string v3, "LANGUAGE_UPGRADE_DATA"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    .local v1, "upgradeLanguages":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1153
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1156
    .end local v1    # "upgradeLanguages":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getLanguagePack(Ljava/lang/String;)V
    .locals 4
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 849
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLanguagePack(lang: "

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

    .line 850
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Language is not available for download! ("

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

    .line 863
    :goto_0
    return-void

    .line 857
    :cond_0
    invoke-static {p1}, Lcom/nuance/connect/service/manager/LanguageManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->isTransactionActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 858
    new-instance v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;-><init>(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;)V

    .line 859
    .local v0, "transaction":Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    goto :goto_0

    .line 861
    .end local v0    # "transaction":Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLanguagePack attempted to download already downloading language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->loadPreferences()V

    .line 584
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "handled":Z
    sget-object v6, Lcom/nuance/connect/service/manager/LanguageManager$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 709
    :goto_0
    return v0

    .line 632
    :pswitch_0
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "LanguageManager.onHandleMessage(MESSAGE_COMMAND_LANGAUGE_LIST_UPDATE)"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ACKNOWLEDGEMENT"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, "taskAcknowledgement":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/nuance/connect/service/manager/LanguageManager;->requestLanguagesList(Ljava/lang/String;)V

    .line 635
    const/4 v0, 0x1

    .line 636
    goto :goto_0

    .line 639
    .end local v5    # "taskAcknowledgement":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "LanguageManager.onHandleMessage(MESSAGE_COMMAND_LANGUAGE_UPGRADE)"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 640
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v7, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I

    if-nez v6, :cond_1

    .line 642
    :cond_0
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_LANGUAGE_UPGRADE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    .line 647
    :goto_1
    const/4 v0, 0x1

    .line 648
    goto :goto_0

    .line 645
    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->upgrade()V

    goto :goto_1

    .line 651
    :pswitch_2
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "LanguageManager.onHandleMessage(MESSAGE_COMMAND_REFRESH_LANGUAGE_MANAGER)"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 652
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SETTINGS_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v6, v7}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 653
    const/4 v0, 0x1

    .line 654
    goto :goto_0

    .line 657
    :pswitch_3
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "LanguageManager.onHandleMessage(MESSAGE_CLIENT_LANGUAGE_INSTALL)"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 658
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "language":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message: MESSAGE_CLIENT_LANGUAGE_INSTALL -- language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    .line 661
    const/4 v0, 0x1

    .line 662
    goto :goto_0

    .line 665
    .end local v2    # "language":Ljava/lang/String;
    :pswitch_4
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LanguageManager.onHandleMessage(MESSAGE_CLIENT_LANGUAGE_INSTALLED) msg.arg1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 667
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .restart local v2    # "language":Ljava/lang/String;
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_3

    .line 669
    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->finishLanguageInstall(Ljava/lang/String;)V

    .line 678
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 679
    goto/16 :goto_0

    .line 670
    :cond_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_4

    .line 671
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed to install."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 672
    invoke-direct {p0, v2, v9}, Lcom/nuance/connect/service/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;Z)V

    goto :goto_2

    .line 673
    :cond_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v9, :cond_2

    .line 675
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed to install."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->unwind()V

    goto :goto_2

    .line 682
    .end local v2    # "language":Ljava/lang/String;
    :pswitch_5
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "LanguageManager.onHandleMessage(MESSAGE_CLIENT_LANGUAGE_UNINSTALL)"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 683
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 684
    .restart local v2    # "language":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/LanguageManager;->uninstallLanguage(Ljava/lang/String;)V

    .line 685
    const/4 v0, 0x1

    .line 686
    goto/16 :goto_0

    .line 689
    .end local v2    # "language":Ljava/lang/String;
    :pswitch_6
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "LanguageManager.onHandleMessage(MESSAGE_REMOVE_LANGUAGES)"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 690
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "languages":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/nuance/connect/service/manager/LanguageManager;->uninstallLanguages(Ljava/lang/String;)V

    .line 692
    const/4 v0, 0x1

    .line 693
    goto/16 :goto_0

    .line 696
    .end local v3    # "languages":Ljava/lang/String;
    :pswitch_7
    iget-object v6, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "LanguageManager.onHandleMessage(MESSAGE_CLIENT_LANGUAGE_DOWNLOAD_CANCEL)"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 697
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "lang":Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/connect/service/manager/LanguageManager;->getActiveTransaction(Ljava/lang/String;)Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v4

    .line 699
    .local v4, "t":Lcom/nuance/connect/service/comm/Transaction;
    if-eqz v4, :cond_5

    .line 700
    invoke-interface {v4}, Lcom/nuance/connect/service/comm/Transaction;->cancel()V

    .line 705
    :goto_3
    const/4 v0, 0x1

    .line 706
    goto/16 :goto_0

    .line 702
    :cond_5
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v6, v7, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_3

    .line 630
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
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager;->processSendStatusResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 729
    :cond_0
    return-void
.end method

.method public postUpgrade()V
    .locals 4

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "LanguageManager.postUpgrade()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1069
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I

    if-nez v0, :cond_1

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_LANGUAGE_UPGRADE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    .line 1075
    :goto_0
    return-void

    .line 1073
    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->upgrade()V

    goto :goto_0
.end method

.method public prepareForUpgrade()V
    .locals 6

    .prologue
    .line 1052
    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "prepareForUpgrade()"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 1053
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v3

    const-string v4, "LANGUAGE_UPGRADE_DATA"

    iget-object v5, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/connect/util/InstallMetadata;->getInstalledPackageList()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1057
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    monitor-enter v4

    .line 1058
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v1

    .line 1059
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->clear()V

    .line 1060
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1062
    .local v2, "lang":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v3, v4, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    .line 1060
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "lang":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1064
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public rebind()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "LanguageManager.rebind()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 611
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 614
    :cond_0
    return-void
.end method

.method public requestLanguagesList(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskAcknowledgement"    # Ljava/lang/String;

    .prologue
    .line 740
    new-instance v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;-><init>(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;)V

    .line 741
    .local v0, "listTransaction":Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    .line 742
    return-void
.end method

.method public sendStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 879
    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "SendStatus()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 880
    const-string v1, "status"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 881
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v1, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-object v1, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "6"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    if-eqz p3, :cond_0

    .line 884
    iput-object p3, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    .line 886
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 887
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 588
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/LanguageManager;->processQueuedInstalls()V

    .line 593
    iget v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->downloadListState:I

    if-nez v0, :cond_1

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/LanguageManager;->requestLanguagesList(Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    goto :goto_0
.end method

.method public uninstallLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstallLanguage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 939
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    .line 940
    const/16 v0, 0x1f8

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager;->sendStatus(Ljava/lang/String;ILjava/lang/String;)V

    .line 941
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 942
    return-void
.end method

.method public uninstallLanguages(Ljava/lang/String;)V
    .locals 7
    .param p1, "languages"    # Ljava/lang/String;

    .prologue
    .line 951
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uninstallLanguages("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 952
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 953
    .local v2, "lang":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4, v2}, Lcom/nuance/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    .end local v2    # "lang":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 956
    return-void
.end method

.method public unwind()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1001
    iget-object v4, p0, Lcom/nuance/connect/service/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1005
    .local v2, "installing":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1006
    .local v3, "lang":Ljava/lang/String;
    invoke-direct {p0, v3, v7}, Lcom/nuance/connect/service/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1009
    .end local v3    # "lang":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1010
    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "DEFAULT_KEY"

    const-string v5, "LANGUAGES"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v4, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v4, v5}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    const-string v5, "com_nuance_connect_error_out_of_disc_space"

    invoke-virtual {v4, v5}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    const-string v5, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v4, v5}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    .line 1018
    invoke-direct {p0, v7}, Lcom/nuance/connect/service/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 1019
    return-void
.end method
