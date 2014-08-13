.class Lcom/nuance/connect/internal/UpgradeServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "UpgradeServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/UpgradeService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/UpgradeServiceInternal$2;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private notification:Lcom/nuance/connect/util/ConnectNotification;

.field private upgradeAvailable:Z

.field private upgradeCanceled:Z

.field private upgradeDownloaded:Z

.field private upgradeDownloading:Z

.field private upgradeProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 1
    .param p1, "service"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeProgress:I

    .line 126
    new-instance v0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;-><init>(Lcom/nuance/connect/internal/UpgradeServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    .line 37
    iput-object p1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeAvailable:Z

    return p1
.end method

.method static synthetic access$102(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeCanceled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeCanceled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nuance/connect/internal/UpgradeServiceInternal;Lcom/nuance/connect/util/ConnectNotification;)Lcom/nuance/connect/util/ConnectNotification;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;
    .param p1, "x1"    # Lcom/nuance/connect/util/ConnectNotification;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/UpgradeServiceInternal;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;

    .prologue
    .line 19
    iget v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeProgress:I

    return v0
.end method

.method static synthetic access$602(Lcom/nuance/connect/internal/UpgradeServiceInternal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/UpgradeServiceInternal;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeProgress:I

    return p1
.end method

.method static synthetic access$700()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeCanceled:Z

    .line 113
    iget-object v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConnectNotification;->cancel()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string v2, "com.nuance.connect.TYPE_UPDATE_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 118
    iget-object v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_DOWNLOAD_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    .line 120
    return-void
.end method

.method public downloadUpgrade()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloading:Z

    .line 94
    iput v1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeProgress:I

    .line 95
    iput-boolean v1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeCanceled:Z

    .line 97
    iget-object v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 99
    return-void
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->UPGRADE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->UPGRADE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeDownloadProgress()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeProgress:I

    return v0
.end method

.method public installUpgrade()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 105
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 106
    iget-object v1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 108
    return-void
.end method

.method public isUpgradeAvailable()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeAvailable:Z

    return v0
.end method

.method public isUpgradeCanceled()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeCanceled:Z

    return v0
.end method

.method public isUpgradeDownloaded()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloaded:Z

    return v0
.end method

.method public isUpgradeDownloading()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloading:Z

    return v0
.end method
