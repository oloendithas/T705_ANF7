.class public Lcom/nuance/connect/internal/SyncServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "SyncServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/SyncService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/SyncServiceInternal$2;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final SPAM_PROTECTION:J = 0x7530L


# instance fields
.field private allowNextUserSync:J

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private dlmBuildEnabled:Z

.field private dlmUserEnabled:Z

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_BACKUP_REQUEST:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_RESTORE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_DLM_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 3
    .param p1, "service"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    .line 24
    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmUserEnabled:Z

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmBuildEnabled:Z

    .line 29
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->allowNextUserSync:J

    .line 130
    new-instance v1, Lcom/nuance/connect/internal/SyncServiceInternal$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/internal/SyncServiceInternal$1;-><init>(Lcom/nuance/connect/internal/SyncServiceInternal;)V

    iput-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    .line 41
    iput-object p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 42
    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v2, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    .line 43
    .local v0, "settings":Lcom/nuance/connect/host/service/BuildSettings;
    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->isDlmSyncEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmBuildEnabled:Z

    .line 44
    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->isDlmSyncEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmUserEnabled:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/SyncServiceInternal;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/SyncServiceInternal;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/SyncServiceInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/SyncServiceInternal;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/connect/internal/SyncServiceInternal;->sendDLMSyncStatus()V

    return-void
.end method

.method static synthetic access$300()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private sendDLMSyncStatus()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_DLM_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-boolean v2, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmUserEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 222
    return-void
.end method


# virtual methods
.method public dlmSyncAllowed()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmSyncAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dlmSyncAvailable()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmBuildEnabled:Z

    return v0
.end method

.method public dlmSyncEnabled()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmUserEnabled:Z

    return v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restoreRequest(I)V
    .locals 4
    .param p1, "category"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLMHandler.restoreRequest cat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_RESTORE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public setDLMSyncStatus(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLMHandler.setDLMSyncStatus["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmUserEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmSyncAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/4 p1, 0x0

    .line 82
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmUserEnabled:Z

    .line 83
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmUserEnabled:Z

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/UserSettings;->setDlmSyncEnabled(Z)V

    .line 84
    invoke-direct {p0}, Lcom/nuance/connect/internal/SyncServiceInternal;->sendDLMSyncStatus()V

    .line 85
    return-void
.end method

.method public syncNow()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "syncNow"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 91
    iget-wide v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->allowNextUserSync:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Sending sync event"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_SYNC_NOW:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->allowNextUserSync:J

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLM sync request ignored, last one was recent."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method
