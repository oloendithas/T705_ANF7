.class public Lcom/nuance/connect/service/manager/AddonManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "AddonManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/AddonManager$1;
    }
.end annotation


# static fields
.field private static final ADDON_LIST_PREFERENCE:Ljava/lang/String; = "ADDON_LIST"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_VERSION:I = 0x3

.field public static final LIST_RETRY:Ljava/lang/String; = "ADDON_LIST_RETRY"

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final POST_ADDON_INSTALL_CHECK_DELAY:I = 0x1d4c0

.field private static final STATUS_ADDON_INSTALL:Ljava/lang/String; = "STATUS_ADDON_INSTALL"


# instance fields
.field private final addonAPKs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private addonList:Lcom/nuance/connect/util/InstallMetadata;

.field private installing:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->ADDON:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/AddonManager;->COMMAND_FAMILY:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/nuance/connect/service/manager/AddonManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/AddonManager;->MANAGER_NAME:Ljava/lang/String;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ADDON_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ADDONS_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_ADDON_CHECK:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/AddonManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 5
    .param p1, "ctx"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 101
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    .line 70
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->installing:Z

    .line 92
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 102
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    .line 103
    sget-object v0, Lcom/nuance/connect/service/manager/AddonManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/nuance/connect/service/manager/AddonManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 107
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 110
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 113
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 116
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 119
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 123
    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->installing:Z

    .line 124
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "STATUS_ADDON_INSTALL"

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/AddonManager;->installing:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 125
    return-void
.end method

.method private ackAddonFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddonManager.ackAddonFile() id: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 404
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "invalid addon, nothing to ack"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 427
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "PROP_CHECKSUM"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "checksum":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 413
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "We\'re not ready to ack, should never hit this case"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "STEP"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 420
    .local v2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "10"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v3, "ack"

    sget-object v4, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v3, v4, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    .line 423
    .local v1, "command":Lcom/nuance/connect/service/comm/Command;
    iput-object p1, v1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 424
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "PROP_TRANSID"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    .line 426
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method private checkAddon(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 804
    const-string v3, "PROP_NAMESPACE"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 805
    .local v2, "namespace":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/AddonManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 808
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 809
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const-string v3, "PROP_INSTALLEDSTATUS"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v3, "PROP_INSTALLEDVERSION"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 811
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PROP_INSTALLEDSTATUS"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v3, "PROP_INSTALLEDVERSION"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 818
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "PROP_INSTALLEDSTATUS"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string v3, "PROP_INSTALLEDVERSION"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private checkCompletedInstalls()V
    .locals 6

    .prologue
    .line 919
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v1

    .line 920
    .local v1, "addons":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 921
    .local v0, "addon":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v0}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 922
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AddonManager;->checkSuccessfulInstall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 923
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully installed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 924
    const/16 v3, 0x1f7

    invoke-direct {p0, v0, v3}, Lcom/nuance/connect/service/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 928
    .end local v0    # "addon":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private checkSuccessfulInstall(Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 910
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "PROP_NAMESPACE"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "namespace":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AddonManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private cleanupFiles(Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 831
    const/4 v2, 0x0

    .line 833
    .local v2, "removed":Z
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 834
    .local v0, "apk":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 836
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    invoke-interface {v3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "PROP_APKLOCATION"

    invoke-virtual {v3, p1, v4, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const/4 v2, 0x1

    .line 844
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "PROP_APKLOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "apkPath":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 846
    new-instance v0, Ljava/io/File;

    .end local v0    # "apk":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .restart local v0    # "apk":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 849
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    const/4 v2, 0x1

    .line 853
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    invoke-interface {v3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "PROP_APKLOCATION"

    invoke-virtual {v3, p1, v4, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_2
    return v2

    .line 840
    .end local v1    # "apkPath":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up addon installation. Failed to delete file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private fetchAddon(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 372
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddonManager.fetchAddon() id: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 374
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "STEP"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 379
    const-string v1, "download"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 380
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iput-object p1, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "PROP_FILEURL"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    .line 382
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    .line 383
    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    .line 384
    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    .line 385
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    .line 386
    iput-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    .line 387
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 388
    return-void
.end method

.method private getAddon(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddonManager.getAddon() id: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 330
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 331
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to get an invalid addon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 360
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "STEP"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Another Addon is already installing.  Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to queue to process later."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "STEP"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "49"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v3, "get"

    sget-object v4, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v3, v4, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 353
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iput-object p1, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 354
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    .line 356
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v1, "data":Landroid/os/Bundle;
    const-string v3, "PROP_DOWNLOAD_PERCENT"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string v3, "PROP_ADDON"

    iget-object v4, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADDONS_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v3, v4, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getList(Ljava/lang/String;)V
    .locals 7
    .param p1, "localeLanguage"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "AddonManager.getList()"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 301
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    new-instance v3, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v5, Lcom/nuance/connect/service/manager/AddonManager;

    const-string v6, "ADDON_LIST_RETRY"

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v5, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nuance/connect/util/Alarm$Builder;->wakeDevice(Z)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    .line 306
    .local v0, "alarm":Lcom/nuance/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    .line 307
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddonManager.getList() -- delaying since manager didn\'t start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 317
    .end local v0    # "alarm":Lcom/nuance/connect/util/Alarm;
    :goto_0
    return-void

    .line 311
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "11"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v3, "list"

    sget-object v4, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v3, v4, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    .line 316
    .local v1, "command":Lcom/nuance/connect/service/comm/Command;
    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method private getResource(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 872
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 873
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 874
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 876
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 877
    return-void
.end method

.method private installAddon(Ljava/lang/String;)V
    .locals 17
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addonManager.installAddon(): id: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 441
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->installing:Z

    if-eqz v14, :cond_0

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v15, "addonManager.installAddon(). Already installing something. Ignoring."

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 510
    :goto_0
    return-void

    .line 448
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v15, "Attempting to load an invalid addon"

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 452
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v15, "STEP"

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 456
    .local v3, "downloadApk":Ljava/io/File;
    if-nez v3, :cond_2

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Install is not available for id: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "fileName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/download/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, "downloadExternalStorage":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 466
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v11

    .line 467
    .local v11, "makeDirectory":Z
    if-nez v11, :cond_3

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot install addon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Could not create required scratch directory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 470
    const/16 v14, 0x1f5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/nuance/connect/service/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    .line 471
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/AddonManager;->sendSDCardNotification()V

    goto/16 :goto_0

    .line 476
    .end local v11    # "makeDirectory":Z
    :cond_3
    new-instance v9, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v9, "installAPK":Ljava/io/File;
    invoke-static {v3, v9}, Lcom/nuance/connect/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    .line 479
    .local v7, "fileWorked":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New File goes here: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] actual: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "new file actual actual: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] Worked: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 484
    if-eqz v7, :cond_4

    .line 485
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    .line 487
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v14}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 491
    new-instance v10, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v10, "installIntent":Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 493
    .local v13, "uri":Landroid/net/Uri;
    const-string v14, "application/vnd.android.package-archive"

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const/high16 v14, 0x10800000

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v14}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 497
    .local v8, "h":Landroid/os/Handler;
    sget-object v14, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_ADDON_CHECK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 498
    .local v12, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v2, "data":Landroid/os/Bundle;
    const-string v14, "DEFAULT_KEY"

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v12, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-wide/32 v15, 0x1d4c0

    move-wide v0, v15

    invoke-virtual {v14, v12, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    .line 502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v14, v10}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 505
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v8    # "h":Landroid/os/Handler;
    .end local v10    # "installIntent":Landroid/content/Intent;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v15, "Unable to create download file on SDCARD, for some reason; most likely out of space"

    invoke-interface {v14, v15}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/AddonManager;->sendSDCardNotification()V

    .line 507
    const/16 v14, 0x1f5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/nuance/connect/service/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 887
    const/4 v1, 0x0

    .line 888
    .local v1, "isInstalled":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 890
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 891
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    const/4 v1, 0x1

    .line 898
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 894
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadPropertiesFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p1, "item"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPropertiesFromJSON: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 767
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 771
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "PROP_ID"

    const-string v3, "15"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v2, "PROP_TITLE"

    const-string v3, "17"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v2, "PROP_DESCRIPTION"

    const-string v3, "18"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v2, "PROP_NAME"

    const-string v3, "16"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v2, "PROP_NAMESPACE"

    const-string v3, "52"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v2, "PROP_ICON"

    const-string v3, "19"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v2, "PROP_EULATITLE"

    const-string v3, "48"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v2, "PROP_EULAURL"

    const-string v3, "47"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v2, "PROP_VERSION"

    const-string v3, "20"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v2, "PROP_INSTALLEDVERSION"

    const-string v3, "46"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/AddonManager;->checkAddon(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_0
    return-object v1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading addon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 790
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processAckResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 635
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "AddonManager.processAckResponse()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 637
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    .line 638
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to load an invalid addon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 652
    :goto_0
    return-void

    .line 643
    :cond_1
    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 644
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "STEP"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AddonManager;->installAddon(Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_2
    const/16 v1, 0x1f5

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/service/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    .line 649
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AddonManager;->unwindAddonInstall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processAddonDownloadResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 6
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 703
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "AddonManager.processAddonDownloadResponse()"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 705
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    .line 706
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 707
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to load an invalid addon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 721
    :goto_0
    return-void

    .line 711
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "apkPath":Ljava/lang/String;
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/nuance/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "checksum":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "PROP_APKLOCATION"

    invoke-virtual {v3, v2, v4, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "PROP_CHECKSUM"

    invoke-virtual {v3, v2, v4, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Location: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Checksum: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 719
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 720
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/AddonManager;->ackAddonFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processGetResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 604
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "AddonManager.processGetResponse()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 606
    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 608
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    .line 610
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to load an invalid addon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 623
    .end local v0    # "id":Ljava/lang/String;
    :goto_0
    return-void

    .line 615
    .restart local v0    # "id":Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 616
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "We have a URL, now we need to fetch it"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 617
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "PROP_FILEURL"

    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "PROP_TRANSID"

    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/AddonManager;->fetchAddon(Ljava/lang/String;)V

    .line 622
    .end local v0    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    goto :goto_0
.end method

.method private processListResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 9
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 549
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "AddonManager.processListResponse()"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 553
    iget v6, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 554
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/connect/util/InstallMetadata;->clear()V

    .line 555
    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "45"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 557
    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "45"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 559
    .local v4, "list":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 561
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 562
    .local v3, "item":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/AddonManager;->loadPropertiesFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 564
    .local v5, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 565
    const-string v6, "PROP_ID"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 566
    .local v1, "id":Ljava/lang/String;
    const-string v6, "PROP_LANGUAGE"

    iget-object v7, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v7, v7, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v8, "11"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adding addon: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 570
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v6, v1}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    .line 571
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v6, v1, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 572
    const-string v6, "PROP_EULAURL"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 573
    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_GET_TEXT_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-string v6, "PROP_EULAURL"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/nuance/connect/service/manager/AddonManager;->getResource(ILjava/lang/String;)V

    .line 576
    :cond_0
    const-string v6, "PROP_ICON"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 577
    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_GET_IMAGE_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-string v6, "PROP_ICON"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/nuance/connect/service/manager/AddonManager;->getResource(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v5    # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Issue loading object"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 590
    .end local v0    # "ex":Lorg/json/JSONException;
    .end local v2    # "index":I
    .end local v4    # "list":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 591
    return-void
.end method

.method private processStatusResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 7
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 663
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "AddonManager.processStatusResponse()"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 664
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {p1}, Lcom/nuance/connect/service/comm/Response;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 666
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    .line 667
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v4, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 668
    .local v3, "status":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 669
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "recieved a response but no status was sent for it."

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 693
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f5

    if-ne v4, v5, :cond_2

    .line 692
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AddonManager;->sendStatusToHost()V

    goto :goto_0

    .line 675
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f7

    if-ne v4, v5, :cond_1

    .line 677
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    .line 678
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4, v1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 679
    :cond_3
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Attempting to load an invalid addon"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 683
    :cond_4
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "PROP_TRANSID"

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v5, 0x7

    invoke-virtual {v4, v1, v5}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 685
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 686
    .local v2, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/AddonManager;->checkAddon(Ljava/util/Map;)V

    .line 687
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 689
    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/AddonManager;->cleanupFiles(Ljava/lang/String;)Z

    .line 690
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    goto :goto_1
.end method

.method private sendOutOfSpaceNotification()V
    .locals 2

    .prologue
    .line 934
    new-instance v0, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    const-string v1, "com_nuance_connect_error_out_of_disc_space"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    .line 937
    return-void
.end method

.method private sendSDCardNotification()V
    .locals 4

    .prologue
    .line 943
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "state":Ljava/lang/String;
    const-string v0, "com_nuance_connect_error_out_of_disc_space"

    .line 945
    .local v0, "id":Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 946
    const-string v0, "com_nuance_connect_notification_unspecified_failure"

    .line 955
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

    .line 956
    return-void

    .line 947
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

    .line 952
    :cond_2
    const-string v0, "com_nuance_connect_notification_unspecified_failure"

    goto :goto_0
.end method

.method private sendStatus(Ljava/lang/String;I)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 524
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddonManager.sendStatus() -- id: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Status: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 525
    if-nez p1, :cond_0

    .line 526
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Attempting to load an invalid addon"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 538
    :goto_0
    return-void

    .line 530
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 531
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "49"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v2, "6"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v2, "status"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 535
    .local v0, "command":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "PROP_TRANSID"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    .line 536
    iput-object p1, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 537
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method private sendStatusToHost()V
    .locals 5

    .prologue
    .line 749
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    if-eqz v3, :cond_0

    .line 750
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 751
    .local v0, "addon":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 752
    .local v1, "data":Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v4, v0}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 753
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_ADDONS_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v3, v4, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0

    .line 756
    .end local v0    # "addon":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private unwindAddonInstall(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Attempting to load an invalid addon"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AddonManager;->cleanupFiles(Ljava/lang/String;)Z

    .line 741
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Addon Manager has recieved an alarm."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 726
    if-eqz p1, :cond_0

    const-string v0, "ADDON_LIST_RETRY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AddonManager;->getList(Ljava/lang/String;)V

    .line 729
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    .line 157
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->ADDON:Lcom/nuance/connect/internal/common/ManagerService;

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

    .line 149
    .local v4, "manager":Lcom/nuance/connect/internal/common/ManagerService;
    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
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
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lcom/nuance/connect/util/InstallMetadata;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v1

    const-string v2, "ADDON_LIST"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AddonManager needs to be modified for changes to service-lifecycle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 5
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "downloaded"    # I
    .param p3, "total"    # I

    .prologue
    .line 215
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, "data":Landroid/os/Bundle;
    if-gez p2, :cond_1

    .line 218
    const-string v1, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    :goto_0
    const-string v1, "PROP_ADDON"

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADDONS_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 225
    if-gez p2, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AddonManager;->sendOutOfSpaceNotification()V

    .line 227
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    const-string v3, "STEP"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AddonManager;->sendStatusToHost()V

    .line 232
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 220
    .restart local v0    # "data":Landroid/os/Bundle;
    :cond_1
    const-string v1, "PROP_DOWNLOAD_PERCENT"

    const/high16 v2, 0x42c80000

    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AddonManager;->processAddonDownloadResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "handled":Z
    sget-object v3, Lcom/nuance/connect/service/manager/AddonManager$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 282
    :goto_0
    return v1

    .line 251
    :pswitch_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "AddonManager.onHandleMessage(MESSAGE_CLIENT_ADDON_INSTALL)"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/AddonManager;->getAddon(Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x1

    .line 254
    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "AddonManager.onHandleMessage(MESSAGE_CLIENT_ADDONS_REFRESH)"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/AddonManager;->getList(Ljava/lang/String;)V

    .line 259
    const/4 v1, 0x1

    .line 260
    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "AddonManager.onHandleMessage(MESSAGE_COMMAND_ADDON_CHECK)"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 266
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 267
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v2}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    .line 273
    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/AddonManager;->checkSuccessfulInstall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    iget-object v3, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully installed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 275
    const/16 v3, 0x1f7

    invoke-direct {p0, v2, v3}, Lcom/nuance/connect/service/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    .line 278
    :cond_1
    const/4 v1, 0x1

    .line 279
    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 4
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    const/4 v3, 0x0

    .line 184
    if-nez p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    .line 195
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 196
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Attempting to get an invalid addon"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "PROP_TRANSID"

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "PROP_FILEURL"

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "PROP_INSTALLREQUESTED"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AddonManager;->cleanupFiles(Ljava/lang/String;)Z

    .line 205
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 208
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AddonManager;->getAddon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AddonManager;->processListResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 178
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AddonManager;->sendStatusToHost()V

    .line 179
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AddonManager;->processGetResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AddonManager;->processAckResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AddonManager;->processStatusResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->log:Lcom/nuance/connect/util/Logger$Log;

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

.method public start()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 139
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AddonManager;->addonList:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/AddonManager;->getList(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AddonManager;->checkCompletedInstalls()V

    goto :goto_0
.end method
