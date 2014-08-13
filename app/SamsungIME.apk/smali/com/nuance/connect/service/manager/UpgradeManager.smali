.class public Lcom/nuance/connect/service/manager/UpgradeManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "UpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/UpgradeManager$3;
    }
.end annotation


# static fields
.field public static final ALARM_UNIQUE_ID:I = 0x4808ba5

.field public static final COMMAND_CHECK:Ljava/lang/String; = "check"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_VERSION:I = 0x2

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field public static final SETTINGS_DOWNLOAD_NOW_PREFERENCE:Ljava/lang/String; = "upgradeDownloadNowPreference"

.field public static final SETTINGS_INSTALL_NOW_PREFERENCE:Ljava/lang/String; = "upgradeInstallnowPreference"

.field public static final UPGRADE_FILE_PREFERENCE:Ljava/lang/String; = "upgradeFilePreference"

.field public static final UPGRADE_FILE_SD_PREFERENCE:Ljava/lang/String; = "upgradeFileSDPreference"

.field public static final UPGRADE_FILE_SIZE:Ljava/lang/String; = "upgradeFileSize"

.field public static final UPGRADE_FILE_TRANSACTION_PREFERENCE:Ljava/lang/String; = "upgradeFileTransactionPreference"


# instance fields
.field protected apkURL:Ljava/lang/String;

.field private downloadNow:Z

.field private hasConnectivity:Z

.field private installNow:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private networkListener:Lcom/nuance/connect/system/NetworkListener;

.field private possibleUpgrade:Z

.field private upgradeAPK:Ljava/io/File;

.field private upgradeAPKChecksum:Ljava/lang/String;

.field private upgradeNotified:Z

.field private upgradeSDAPK:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->UPGRADE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/UpgradeManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/nuance/connect/service/manager/UpgradeManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/UpgradeManager;->MANAGER_NAME:Ljava/lang/String;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_POSSIBLE_UPGRADE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CHECK_UPGRADE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_DOWNLOAD_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/UpgradeManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 6
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 52
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 53
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    .line 54
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleUpgrade:Z

    .line 57
    new-instance v1, Lcom/nuance/connect/service/manager/UpgradeManager$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/UpgradeManager$1;-><init>(Lcom/nuance/connect/service/manager/UpgradeManager;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    .line 81
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeNotified:Z

    .line 91
    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 95
    const/4 v1, 0x2

    iput v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 96
    sget-object v1, Lcom/nuance/connect/service/manager/UpgradeManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/nuance/connect/service/manager/UpgradeManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 100
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "check"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 103
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 106
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "ack"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 109
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "status"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 113
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 114
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    .line 115
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    .line 116
    .local v0, "prefs":Lcom/nuance/connect/store/PersistentDataStore;
    const-string v1, "upgradeDownloadNowPreference"

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 117
    const-string v1, "upgradeInstallnowPreference"

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 118
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/connect/service/manager/UpgradeManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/manager/UpgradeManager;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->hasConnectivity:Z

    return p1
.end method

.method private disableAutoDownload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 571
    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 572
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "upgradeDownloadNowPreference"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 573
    return-void
.end method

.method private loadPreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 713
    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "UpgradeManager.loadPreferences()"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 714
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    .line 716
    .local v1, "prefs":Lcom/nuance/connect/store/PersistentDataStore;
    const-string v5, "upgradeFilePreference"

    invoke-interface {v1, v5, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, "upgradeAPKPath":Ljava/lang/String;
    const-string v5, "upgradeFileSDPreference"

    invoke-interface {v1, v5, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 718
    .local v4, "upgradeSDAPKPath":Ljava/lang/String;
    const-string v5, "upgradeDownloadNowPreference"

    invoke-interface {v1, v5, v7}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 719
    const-string v5, "upgradeInstallnowPreference"

    invoke-interface {v1, v5, v7}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    .line 720
    const-string v5, "upgradeFileTransactionPreference"

    invoke-interface {v1, v5, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 722
    if-eqz v4, :cond_0

    .line 724
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v3, "upgradeSDAPK":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 727
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_0
    const-string v5, "upgradeFileSDPreference"

    invoke-interface {v1, v5}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 737
    .end local v3    # "upgradeSDAPK":Ljava/io/File;
    :cond_0
    if-eqz v2, :cond_2

    .line 738
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 740
    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v5, :cond_2

    .line 742
    :try_start_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 743
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 744
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 745
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    .line 746
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 756
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 757
    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    if-eqz v5, :cond_3

    .line 758
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgrade()V

    .line 761
    :cond_3
    return-void

    .line 728
    .restart local v3    # "upgradeSDAPK":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 729
    .local v0, "ex":Ljava/lang/SecurityException;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Unable to delete APK from SD card"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 748
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .end local v3    # "upgradeSDAPK":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 749
    .restart local v0    # "ex":Ljava/lang/SecurityException;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Security Exception while trying to read upgrade file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 751
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    goto :goto_1
.end method

.method private processUpgradeAPKResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.processUpgradeAPKResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 646
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 647
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    .line 649
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 651
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->ackUpgradeFile()V

    .line 652
    return-void
.end method

.method private savePreferences()V
    .locals 7

    .prologue
    .line 663
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "UpgradeManager.savePreferences() "

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 664
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v3

    .line 666
    .local v3, "prefs":Lcom/nuance/connect/store/PersistentDataStore;
    const/4 v1, 0x0

    .line 667
    .local v1, "filePath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 670
    .local v2, "filePathSD":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 671
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 674
    :cond_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 681
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 682
    const-string v4, "upgradeFileTransactionPreference"

    invoke-interface {v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 688
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 689
    const-string v4, "upgradeFilePreference"

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 690
    const-string v4, "upgradeFileSize"

    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 696
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 697
    const-string v4, "upgradeFileSDPreference"

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 702
    :goto_3
    const-string v4, "upgradeDownloadNowPreference"

    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 703
    const-string v4, "upgradeInstallnowPreference"

    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 704
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeManager.savePreferences() UPGRADE_FILE_TRANSACTION_PREFERENCE: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 706
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeManager.savePreferences() UPGRADE_FILE_PREFERENCE: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 707
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeManager.savePreferences() UPGRADE_FILE_SD_PREFERENCE: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 710
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "ex":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security Exception while trying to read upgrade file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 684
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :cond_2
    const-string v4, "upgradeFileTransactionPreference"

    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 692
    :cond_3
    const-string v4, "upgradeFilePreference"

    invoke-interface {v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 693
    const-string v4, "upgradeFileSize"

    invoke-interface {v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 699
    :cond_4
    const-string v4, "upgradeFileSDPreference"

    invoke-interface {v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_3
.end method

.method private sendHostUpgradeStatus()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    goto :goto_0
.end method

.method private sendSDCardNotification()V
    .locals 4

    .prologue
    .line 835
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "state":Ljava/lang/String;
    const-string v0, "com_nuance_connect_error_out_of_disc_space"

    .line 837
    .local v0, "id":Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 838
    const-string v0, "com_nuance_connect_notification_unspecified_failure"

    .line 847
    :cond_0
    :goto_0
    new-instance v2, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    .line 848
    return-void

    .line 839
    :cond_1
    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    :cond_2
    const-string v0, "com_nuance_connect_notification_unspecified_failure"

    goto :goto_0
.end method

.method private upgradeSwype()V
    .locals 20

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    const-string v18, "UpgradeManager.upgradeSwype()"

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 409
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 410
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v17

    const-string v18, "upgradeInstallnowPreference"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, "fileName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/download/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "downloadExternalStorage":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 420
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v15

    .line 422
    .local v15, "makeDirectory":Z
    if-nez v15, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to create download directory: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; Can\'t upgrade this build"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendSDCardNotification()V

    .line 484
    .end local v15    # "makeDirectory":Z
    :goto_0
    return-void

    .line 430
    :cond_0
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    .line 432
    const/4 v7, 0x1

    .line 436
    .local v7, "fileWorked":Z
    const/4 v8, 0x0

    .line 437
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 439
    .local v12, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 440
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 442
    .end local v12    # "is":Ljava/io/FileInputStream;
    .local v13, "is":Ljava/io/FileInputStream;
    const/16 v17, 0x400

    :try_start_2
    move/from16 v0, v17

    new-array v2, v0, [B

    .line 443
    .local v2, "buffer":[B
    const/4 v14, 0x0

    .line 444
    .local v14, "len1":I
    :goto_1
    invoke-virtual {v13, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    .line 445
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 449
    .end local v2    # "buffer":[B
    .end local v14    # "len1":I
    :catchall_0
    move-exception v17

    move-object v12, v13

    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 450
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    throw v17
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 452
    :catch_0
    move-exception v4

    .line 453
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v7, 0x0

    .line 459
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "New File goes here: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] actual: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "new file actual actual: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] Worked: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 464
    if-eqz v7, :cond_2

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->deleteOnExit()V

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/connect/service/ConnectClient;->onPrepareForUpgrade()V

    .line 474
    new-instance v11, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v11, "installIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    .line 476
    .local v16, "uri":Landroid/net/Uri;
    const-string v17, "application/vnd.android.package-archive"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const/high16 v17, 0x10800000

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 449
    .end local v11    # "installIntent":Landroid/content/Intent;
    .end local v12    # "is":Ljava/io/FileInputStream;
    .end local v16    # "uri":Landroid/net/Uri;
    .restart local v2    # "buffer":[B
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    .restart local v14    # "len1":I
    :cond_1
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 450
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v12, v13

    .line 457
    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 454
    .end local v12    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    move-object v12, v13

    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    move-object v8, v9

    .line 455
    .end local v2    # "buffer":[B
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "len1":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .local v10, "iex":Ljava/io/IOException;
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendSDCardNotification()V

    .line 456
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 481
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "iex":Ljava/io/IOException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    const-string v18, "Unable to create download file on SDCARD when it was missing, we can\'t upgrade this build"

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 454
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    goto :goto_5

    .line 452
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "buffer":[B
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    .restart local v14    # "len1":I
    :catch_3
    move-exception v4

    move-object v12, v13

    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 449
    .end local v2    # "buffer":[B
    .end local v14    # "len1":I
    :catchall_1
    move-exception v17

    goto/16 :goto_2

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public ackUpgradeFile()V
    .locals 4

    .prologue
    .line 359
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.ackUpgradeFile()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 361
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "10"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v2, "ack"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 371
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    .line 372
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager has recieved an alarm."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 657
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    .line 660
    :cond_0
    return-void
.end method

.method public checkForUpgrade()V
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "UpgradeManager.checkForUpgrade()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 310
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Not running check for upgrade since we already know about our upgrade."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v1, "check"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 316
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 317
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 168
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->unregisterNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    .line 169
    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    .line 170
    return-void
.end method

.method public fetchAPK()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 324
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.fetchAPK()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 326
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    .line 350
    :goto_0
    return-void

    .line 332
    :cond_1
    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 333
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "download"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v2, "total"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2, v3, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 341
    const-string v2, "download"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    .line 342
    .local v1, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    iput-object v2, v1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    .line 343
    const-string v2, "GET"

    iput-object v2, v1, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    .line 344
    iput-boolean v4, v1, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    .line 345
    iput-boolean v4, v1, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    .line 346
    iput-boolean v5, v1, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    .line 347
    iput-boolean v4, v1, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 348
    iput-boolean v5, v1, Lcom/nuance/connect/service/comm/Command;->wifiOnly:Z

    .line 349
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->UPGRADE:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 152
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
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
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->registerNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "UpgradeManager needs to be modified for changes to service-lifecycle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Lcom/nuance/connect/service/comm/Command;)V
    .locals 2
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->onCancel(Lcom/nuance/connect/service/comm/Command;)V

    .line 298
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    .line 301
    :cond_0
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 5
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "downloaded"    # I
    .param p3, "total"    # I

    .prologue
    .line 283
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "download"

    const/high16 v2, 0x42c80000

    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    const-string v1, "total"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 289
    if-gez p2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    .line 293
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.onFileResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 629
    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->onFileResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 631
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/UpgradeManager;->processUpgradeAPKResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 635
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "handled":Z
    sget-object v2, Lcom/nuance/connect/service/manager/UpgradeManager$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 227
    :goto_0
    return v1

    .line 181
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_CLIENT_UPGRADE_DOWNLOAD)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->fetchAPK()V

    .line 183
    const/4 v1, 0x1

    .line 184
    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_CLIENT_UPGRADE_INSTALL)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgrade()V

    .line 189
    const/4 v1, 0x1

    .line 190
    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_POSSIBLE_UPGRADE)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleSwypeUpgrade()V

    .line 195
    const/4 v1, 0x1

    .line 196
    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_CHECK_UPGRADE)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 200
    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Marking upgrade for later, we haven\'t started"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 202
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeNotified:Z

    .line 206
    :goto_1
    const/4 v1, 0x1

    .line 207
    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    goto :goto_1

    .line 210
    :pswitch_4
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_CLIENT_UPGRADE_DOWNLOAD_CANCEL)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 211
    const/4 v0, 0x1

    .line 220
    .local v0, "cleanupNow":Z
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    .line 223
    :cond_1
    const/4 v1, 0x1

    .line 224
    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.onIOExceptionResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 255
    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V

    .line 257
    if-nez p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iput-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 266
    iput-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeManager.onIOExceptionResponse() unable to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 275
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 276
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 277
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    goto :goto_0
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeManager.onResponse(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Transaction Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "check"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/UpgradeManager;->processCheckResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 249
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 250
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/UpgradeManager;->processAckResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/UpgradeManager;->processStatusResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

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

.method public possibleSwypeUpgrade()V
    .locals 2

    .prologue
    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleUpgrade:Z

    .line 775
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->loadPreferences()V

    .line 777
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->swypeHasUpgraded()V

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "This install is not an upgrade, false alarm"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected processAckResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeManager.processAckResponse() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 544
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 552
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    .line 554
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    if-eqz v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSwype()V

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 568
    :goto_1
    return-void

    .line 559
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->disableAutoDownload()V

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    goto :goto_1
.end method

.method protected processCheckResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.processCheckResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 522
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 526
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 527
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    .line 529
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 531
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->fetchAPK()V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 539
    :cond_1
    return-void
.end method

.method protected processStatusResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 599
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.processStatusResponse()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 600
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {p1}, Lcom/nuance/connect/service/comm/Response;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 602
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    .line 603
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 605
    .local v1, "status":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 606
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "recieved a response but no status was sent for it."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x201

    if-ne v2, v3, :cond_3

    .line 611
    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 612
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSwype()V

    goto :goto_0

    .line 614
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    goto :goto_0

    .line 616
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f6

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f5

    if-eq v2, v3, :cond_0

    .line 619
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_0

    .line 621
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 622
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    goto :goto_0
.end method

.method public rebind()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.rebind()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendHostUpgradeStatus()V

    .line 163
    :cond_0
    return-void
.end method

.method public sendStatus(ILjava/lang/String;)V
    .locals 8
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 494
    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpgradeManager.sendStatus() -- Status: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 495
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 496
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "6"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v5, "status"

    sget-object v6, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v5, v6, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 499
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iput-object p2, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    .line 500
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 511
    .end local v0    # "command":Lcom/nuance/connect/service/comm/Command;
    .end local v1    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 502
    :cond_0
    move v3, p1

    .line 503
    .local v3, "s":I
    move-object v4, p2

    .line 504
    .local v4, "tid":Ljava/lang/String;
    new-instance v2, Lcom/nuance/connect/service/manager/UpgradeManager$2;

    invoke-direct {v2, p0, v3, v4}, Lcom/nuance/connect/service/manager/UpgradeManager$2;-><init>(Lcom/nuance/connect/service/manager/UpgradeManager;ILjava/lang/String;)V

    .line 509
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    .line 129
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->loadPreferences()V

    .line 132
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    .line 133
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    .line 134
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 136
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleUpgrade:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleSwypeUpgrade()V

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeNotified:Z

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    .line 142
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeNotified:Z

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendHostUpgradeStatus()V

    .line 146
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 147
    return-void
.end method

.method public swypeHasUpgraded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 791
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "upgradeManager.swypeHasUpgraded() - cleaning up now"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 793
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 803
    :try_start_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 810
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->onPostUpgrade()V

    .line 812
    const/16 v1, 0x1f4

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    .line 814
    iput-object v3, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    .line 815
    iput-object v3, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 816
    iput-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 817
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 820
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SETTINGS_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 821
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "ex":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Unable to delete APK from SD card"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 804
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 805
    .restart local v0    # "ex":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Unable to delete APK"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public swypeUpgradeCanceled()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "upgradeManager.swypeUpgradeCanceled()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 769
    const/16 v0, 0x1f6

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    .line 770
    return-void
.end method

.method protected unwindInstall()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeManager.unwindInstall() unable to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 585
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    .line 587
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->disableAutoDownload()V

    .line 588
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 590
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    .line 591
    return-void
.end method

.method public upgrade()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.upgrade()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    .line 396
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->hasConnectivity:Z

    if-eqz v0, :cond_2

    .line 397
    const/16 v0, 0x201

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSwype()V

    goto :goto_0
.end method
