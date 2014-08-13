.class public Lcom/nuance/connect/system/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# static fields
.field private static final CONECTIVITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final STABLE_CONNECTION:Ljava/lang/String; = "CONNECTIVITY_ALARM_STABLE_CONNECTION"


# instance fields
.field protected backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field protected changedBackgroundState:Z

.field protected changedForegroundState:Z

.field protected client:Lcom/nuance/connect/service/ConnectClient;

.field protected connectionChangeStableCellularRequirement:I

.field protected connectionChangeStableWifiRequirement:I

.field protected foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field private intListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lastBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field protected lastForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

.field private networkListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/system/NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field protected requireStableCellularTime:Z

.field protected requireStableWifiTime:Z

.field private state:Lcom/nuance/connect/system/NetworkState;

.field private strListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 4
    .param p1, "connect"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 36
    iput-boolean v3, p0, Lcom/nuance/connect/system/Connectivity;->requireStableCellularTime:Z

    .line 39
    iput-boolean v3, p0, Lcom/nuance/connect/system/Connectivity;->requireStableWifiTime:Z

    .line 47
    new-instance v1, Lcom/nuance/connect/system/NetworkState;

    invoke-direct {v1}, Lcom/nuance/connect/system/NetworkState;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    .line 49
    iput-boolean v3, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    .line 50
    iput-boolean v3, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    .line 53
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    .line 58
    new-instance v1, Lcom/nuance/connect/system/Connectivity$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/system/Connectivity$1;-><init>(Lcom/nuance/connect/system/Connectivity;)V

    iput-object v1, p0, Lcom/nuance/connect/system/Connectivity;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v1, Lcom/nuance/connect/system/Connectivity$2;

    invoke-direct {v1, p0}, Lcom/nuance/connect/system/Connectivity$2;-><init>(Lcom/nuance/connect/system/Connectivity;)V

    iput-object v1, p0, Lcom/nuance/connect/system/Connectivity;->strListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 92
    new-instance v1, Lcom/nuance/connect/system/Connectivity$3;

    invoke-direct {v1, p0}, Lcom/nuance/connect/system/Connectivity$3;-><init>(Lcom/nuance/connect/system/Connectivity;)V

    iput-object v1, p0, Lcom/nuance/connect/system/Connectivity;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 109
    iput-object p1, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, ".RefreshConnectData"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_CELLULAR_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 117
    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_WIFI_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 118
    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BACKGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->strListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 119
    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->FOREGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->strListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/system/Connectivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/system/Connectivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/system/Connectivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/system/Connectivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/nuance/connect/system/Connectivity;->setStableCellularTime(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/system/Connectivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/system/Connectivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/nuance/connect/system/Connectivity;->setStableWifiTime(I)V

    return-void
.end method

.method private checkAvailableNetworkConnections()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 170
    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-nez v4, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "checkAvailableNetworkConnections"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 175
    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 176
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 178
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    .line 179
    .local v2, "lastState":Lcom/nuance/connect/system/NetworkState;
    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/system/Connectivity;->setNetworkState(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState;)Lcom/nuance/connect/system/NetworkState;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    .line 181
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v2, v4}, Lcom/nuance/connect/system/NetworkState;->isSame(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 182
    :cond_2
    iput-boolean v6, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    .line 183
    iput-boolean v6, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    .line 193
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v5, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 195
    new-instance v4, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v5, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v6, Lcom/nuance/connect/system/Connectivity;

    const-string v7, "CONNECTIVITY_ALARM_STABLE_CONNECTION"

    invoke-direct {v4, v5, v6, v7}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/connect/util/Alarm$Builder;->track(Z)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v3

    .line 197
    .local v3, "stableConnectionAlarm":Lcom/nuance/connect/util/Alarm;
    invoke-virtual {v3}, Lcom/nuance/connect/util/Alarm;->cancel()V

    .line 200
    .end local v3    # "stableConnectionAlarm":Lcom/nuance/connect/util/Alarm;
    :cond_4
    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connectivity FOREGROUND hasConnectivity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v7, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v6, v7}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 201
    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connectivity BACKGROUND hasConnectivity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v7, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v6, v7}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0}, Lcom/nuance/connect/system/Connectivity;->sendStatus()V

    goto/16 :goto_0

    .line 185
    :cond_5
    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v5, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/system/Connectivity;->lastForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v2, v5}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v5

    if-eq v4, v5, :cond_6

    .line 186
    iput-boolean v6, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    .line 188
    :cond_6
    iget-object v4, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v5, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/system/Connectivity;->lastBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v2, v5}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v5

    if-eq v4, v5, :cond_3

    .line 189
    iput-boolean v6, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    goto/16 :goto_1
.end method

.method private getStableConnectionRequirement(I)I
    .locals 1
    .param p1, "connectionType"    # I

    .prologue
    .line 268
    iget v0, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableCellularRequirement:I

    .line 270
    .local v0, "stable":I
    packed-switch p1, :pswitch_data_0

    .line 279
    :goto_0
    :pswitch_0
    return v0

    .line 275
    :pswitch_1
    iget v0, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableWifiRequirement:I

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private requireStableConnection(I)Z
    .locals 1
    .param p1, "connectionType"    # I

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableCellularTime:Z

    .line 255
    .local v0, "required":Z
    packed-switch p1, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    return v0

    .line 260
    :pswitch_1
    iget-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableWifiTime:Z

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 290
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    if-eqz v2, :cond_2

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Connectivity.sendStatus() -- onNetworkAvailable()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 293
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/system/NetworkListener;

    .line 294
    .local v1, "l":Lcom/nuance/connect/system/NetworkListener;
    invoke-interface {v1}, Lcom/nuance/connect/system/NetworkListener;->onNetworkAvailable()V

    goto :goto_0

    .line 296
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/nuance/connect/system/NetworkListener;
    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    if-eqz v2, :cond_4

    .line 299
    :cond_3
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Connectivity.sendStatus() -- onNetworkDisconnect()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/system/NetworkListener;

    .line 301
    .restart local v1    # "l":Lcom/nuance/connect/system/NetworkListener;
    invoke-interface {v1}, Lcom/nuance/connect/system/NetworkListener;->onNetworkDisconnect()V

    goto :goto_1

    .line 306
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/nuance/connect/system/NetworkListener;
    :cond_4
    iput-boolean v4, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    .line 307
    iput-boolean v4, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    .line 308
    return-void
.end method

.method private setNetworkState(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState;)Lcom/nuance/connect/system/NetworkState;
    .locals 10
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "lastNetworkState"    # Lcom/nuance/connect/system/NetworkState;

    .prologue
    const/4 v9, 0x0

    .line 218
    const/4 v3, 0x0

    .line 220
    .local v3, "newState":Lcom/nuance/connect/system/NetworkState;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/nuance/connect/system/Connectivity;->getStableConnectionRequirement(I)I

    move-result v0

    .line 224
    .local v0, "connectionChangeStableRequirement":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 225
    .local v1, "lastConnectionChange":J
    if-nez p2, :cond_0

    .line 226
    int-to-long v5, v0

    sub-long/2addr v1, v5

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    invoke-direct {p0, v0}, Lcom/nuance/connect/system/Connectivity;->requireStableConnection(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    new-instance v3, Lcom/nuance/connect/system/NetworkState;

    .end local v3    # "newState":Lcom/nuance/connect/system/NetworkState;
    invoke-direct {v3, p1, v1, v2}, Lcom/nuance/connect/system/NetworkState;-><init>(Landroid/net/NetworkInfo;J)V

    .line 233
    .restart local v3    # "newState":Lcom/nuance/connect/system/NetworkState;
    new-instance v5, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v6, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v7, Lcom/nuance/connect/system/Connectivity;

    const-string v8, "CONNECTIVITY_ALARM_STABLE_CONNECTION"

    invoke-direct {v5, v6, v7, v8}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/nuance/connect/util/Alarm$Builder;->millis(I)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/nuance/connect/util/Alarm$Builder;->track(Z)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/nuance/connect/util/Alarm$Builder;->wakeDevice(Z)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v4

    .line 238
    .local v4, "stableConnectionAlarm":Lcom/nuance/connect/util/Alarm;
    invoke-virtual {v4}, Lcom/nuance/connect/util/Alarm;->set()V

    .line 245
    .end local v0    # "connectionChangeStableRequirement":I
    .end local v1    # "lastConnectionChange":J
    .end local v4    # "stableConnectionAlarm":Lcom/nuance/connect/util/Alarm;
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 246
    new-instance v3, Lcom/nuance/connect/system/NetworkState;

    .end local v3    # "newState":Lcom/nuance/connect/system/NetworkState;
    invoke-direct {v3}, Lcom/nuance/connect/system/NetworkState;-><init>()V

    .line 249
    .restart local v3    # "newState":Lcom/nuance/connect/system/NetworkState;
    :cond_2
    return-object v3

    .line 240
    .restart local v0    # "connectionChangeStableRequirement":I
    .restart local v1    # "lastConnectionChange":J
    :cond_3
    new-instance v3, Lcom/nuance/connect/system/NetworkState;

    .end local v3    # "newState":Lcom/nuance/connect/system/NetworkState;
    invoke-direct {v3, p1, v1, v2}, Lcom/nuance/connect/system/NetworkState;-><init>(Landroid/net/NetworkInfo;J)V

    .restart local v3    # "newState":Lcom/nuance/connect/system/NetworkState;
    goto :goto_0
.end method

.method private setStableCellularTime(I)V
    .locals 1
    .param p1, "millis"    # I

    .prologue
    .line 131
    if-ltz p1, :cond_2

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableCellularTime:Z

    .line 133
    iput p1, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableCellularRequirement:I

    .line 134
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setConnectionStableRequirement(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setConnectionStableRequirement(I)V

    .line 144
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    .line 145
    return-void

    .line 141
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableCellularTime:Z

    .line 142
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableCellularRequirement:I

    goto :goto_0
.end method

.method private setStableWifiTime(I)V
    .locals 1
    .param p1, "millis"    # I

    .prologue
    .line 148
    if-ltz p1, :cond_2

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableWifiTime:Z

    .line 150
    iput p1, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableWifiRequirement:I

    .line 151
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setConnectionStableRequirement(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setConnectionStableRequirement(I)V

    .line 161
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    .line 162
    return-void

    .line 158
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableWifiTime:Z

    .line 159
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableWifiRequirement:I

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connectivity.alarmNotification() - Type: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v2, :cond_0

    const-string v2, "CONNECTIVITY_ALARM_STABLE_CONNECTION"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/system/NetworkState;->isStableConnection(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/system/NetworkListener;

    .line 70
    .local v1, "l":Lcom/nuance/connect/system/NetworkListener;
    invoke-interface {v1}, Lcom/nuance/connect/system/NetworkListener;->onNetworkStable()V

    goto :goto_0

    .line 73
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/nuance/connect/system/NetworkListener;
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 127
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method public getBackgroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    return-object v0
.end method

.method public getForegroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    return-object v0
.end method

.method public getState()Lcom/nuance/connect/system/NetworkState;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    return-object v0
.end method

.method public registerNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V
    .locals 1
    .param p1, "l"    # Lcom/nuance/connect/system/NetworkListener;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public unregisterNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V
    .locals 1
    .param p1, "l"    # Lcom/nuance/connect/system/NetworkListener;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method
