.class public Lcom/android/server/EthernetService;
.super Landroid/net/ethernet/IEthernetManager$Stub;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EthernetService$3;,
        Lcom/android/server/EthernetService$AsyncServiceHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<syncronized:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/ethernet/IEthernetManager$Stub;"
    }
.end annotation


# static fields
.field private static final ETH_DEV0:Ljava/lang/String; = "eth0"

.field private static final ETH_DEV1:Ljava/lang/String; = "eth1"

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "EthernetService"

.field private static mCheckConnecting:I

.field private static mFoundEthernetDevice:Z

.field private static mHWconnected:Z

.field private static mResetEthernet:Z

.field private static mStackconnected:Z

.field private static mUserDisabled:Z


# instance fields
.field private DevName:[Ljava/lang/String;

.field private LOCAL_LOG:Z

.field private isEthEnabled:I

.field private mAsyncServiceHandler:Lcom/android/server/EthernetService$AsyncServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/EthernetService",
            "<Tsyncronized;>.AsyncServiceHandler;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/AsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectorConnected:Z

.field private mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mEnableTrafficStatsPoll:Z

.field private mEthState:I

.field private mEthernetEnabled:Z

.field private mEthernetThread:Landroid/os/HandlerThread;

.field private mIsReceiverRegistered:Z

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxPkts:J

.field private mScreenOff:Z

.field private mTracker:Landroid/net/ethernet/EthernetStateTracker;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput v0, Lcom/android/server/EthernetService;->mCheckConnecting:I

    .line 64
    sput-boolean v0, Lcom/android/server/EthernetService;->mStackconnected:Z

    .line 65
    sput-boolean v0, Lcom/android/server/EthernetService;->mHWconnected:Z

    .line 66
    sput-boolean v0, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    .line 70
    sput-boolean v0, Lcom/android/server/EthernetService;->mUserDisabled:Z

    .line 71
    sput-boolean v0, Lcom/android/server/EthernetService;->mResetEthernet:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/ethernet/EthernetStateTracker;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Tracker"    # Landroid/net/ethernet/EthernetStateTracker;

    .prologue
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 226
    invoke-direct {p0}, Landroid/net/ethernet/IEthernetManager$Stub;-><init>()V

    .line 54
    iput-boolean v6, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    .line 60
    iput v6, p0, Lcom/android/server/EthernetService;->mEthState:I

    .line 72
    iput-boolean v6, p0, Lcom/android/server/EthernetService;->mConnectorConnected:Z

    .line 73
    iput-boolean v6, p0, Lcom/android/server/EthernetService;->mBootCompleted:Z

    .line 78
    iput-boolean v6, p0, Lcom/android/server/EthernetService;->mEnableTrafficStatsPoll:Z

    .line 79
    iput v6, p0, Lcom/android/server/EthernetService;->mTrafficStatsPollToken:I

    .line 80
    iput-wide v2, p0, Lcom/android/server/EthernetService;->mTxPkts:J

    .line 81
    iput-wide v2, p0, Lcom/android/server/EthernetService;->mRxPkts:J

    .line 86
    iput-boolean v6, p0, Lcom/android/server/EthernetService;->mIsReceiverRegistered:Z

    .line 87
    new-instance v2, Landroid/net/NetworkInfo;

    const/16 v3, 0x9

    const-string v4, "ETHERNET"

    const-string v5, ""

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/EthernetService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/EthernetService;->mClients:Ljava/util/List;

    .line 654
    new-instance v2, Lcom/android/server/EthernetService$2;

    invoke-direct {v2, p0}, Lcom/android/server/EthernetService$2;-><init>(Lcom/android/server/EthernetService;)V

    iput-object v2, p0, Lcom/android/server/EthernetService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    const-string v2, "ro.product_ship"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "productship":Ljava/lang/String;
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    .line 232
    :cond_0
    iput-object p2, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    .line 233
    iput-object p1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v2, "android.net.ethernet.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v2, "android.net.ethernet.STATE_CONNECTOR_ADD"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v2, "android.net.ethernet.STATE_CONNECTOR_REMOVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/EthernetService$1;

    invoke-direct {v3, p0}, Lcom/android/server/EthernetService$1;-><init>(Lcom/android/server/EthernetService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EthernetService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/EthernetService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/EthernetService;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/EthernetService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/EthernetService;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/EthernetService;->mEthernetThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/EthernetService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/EthernetService;->mEthernetThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/server/EthernetService;Lcom/android/server/EthernetService$AsyncServiceHandler;)Lcom/android/server/EthernetService$AsyncServiceHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;
    .param p1, "x1"    # Lcom/android/server/EthernetService$AsyncServiceHandler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/EthernetService;->mAsyncServiceHandler:Lcom/android/server/EthernetService$AsyncServiceHandler;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/EthernetService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/EthernetService;->startEthernetService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/EthernetService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->mEthernetEnabled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/EthernetService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/EthernetService;->mEthernetEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/EthernetService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/EthernetService;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/EthernetService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/EthernetService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/EthernetService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/EthernetService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/EthernetService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/EthernetService;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/EthernetService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/EthernetService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/server/EthernetService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/EthernetService;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/EthernetService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/EthernetService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/EthernetService;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/EthernetService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/EthernetService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/EthernetService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/EthernetService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->mConnectorConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/EthernetService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EthernetService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/EthernetService;->mConnectorConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/EthernetService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/server/EthernetService;->mResetEthernet:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/server/EthernetService;->mResetEthernet:Z

    return p0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 170
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v0, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "EthernetService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 586
    const/4 v0, 0x0

    .line 588
    .local v0, "bEthernetConnected":Z
    iget-object v6, p0, Lcom/android/server/EthernetService;->mAsyncServiceHandler:Lcom/android/server/EthernetService$AsyncServiceHandler;

    if-eqz v6, :cond_2

    .line 589
    iget-boolean v6, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    const-string v6, "EthernetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[evaluateTrafficStatsPolling] screenOff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/EthernetService;->mScreenOff:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    iget-object v6, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 594
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 596
    .local v3, "netInfoEthernet":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 599
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v6, :cond_1

    const-string v6, "EthernetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[evaluateTrafficStatsPolling] bEthernetConnected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/EthernetService;->mEthernetEnabled:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/EthernetService;->mScreenOff:Z

    if-nez v6, :cond_4

    .line 602
    iget-object v6, p0, Lcom/android/server/EthernetService;->mAsyncServiceHandler:Lcom/android/server/EthernetService$AsyncServiceHandler;

    invoke-static {v6, v9, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 608
    .local v2, "msg":Landroid/os/Message;
    :goto_1
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 610
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "netInfoEthernet":Landroid/net/NetworkInfo;
    :cond_2
    return-void

    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "netInfoEthernet":Landroid/net/NetworkInfo;
    :cond_3
    move v0, v5

    .line 596
    goto :goto_0

    .line 605
    :cond_4
    iget-object v4, p0, Lcom/android/server/EthernetService;->mAsyncServiceHandler:Lcom/android/server/EthernetService$AsyncServiceHandler;

    invoke-static {v4, v9, v5, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "msg":Landroid/os/Message;
    goto :goto_1
.end method

.method private getPersistedState()I
    .locals 3

    .prologue
    .line 499
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 502
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "eth_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 504
    :goto_0
    return v2

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyOnDataActivity()V
    .locals 15

    .prologue
    .line 614
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-wide v6, p0, Lcom/android/server/EthernetService;->mTxPkts:J

    .local v6, "preTxPkts":J
    iget-wide v4, p0, Lcom/android/server/EthernetService;->mRxPkts:J

    .line 615
    .local v4, "preRxPkts":J
    const/4 v1, 0x0

    .line 617
    .local v1, "dataActivity":I
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v3

    .line 618
    .local v3, "info":Landroid/net/ethernet/EthernetDevInfo;
    if-eqz v3, :cond_0

    .line 619
    invoke-virtual {v3}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/EthernetService;->mTxPkts:J

    .line 620
    invoke-virtual {v3}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/EthernetService;->mRxPkts:J

    .line 623
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-gtz v12, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_7

    .line 624
    :cond_1
    iget-wide v12, p0, Lcom/android/server/EthernetService;->mTxPkts:J

    sub-long v10, v12, v6

    .line 625
    .local v10, "sent":J
    iget-wide v12, p0, Lcom/android/server/EthernetService;->mRxPkts:J

    sub-long v8, v12, v4

    .line 627
    .local v8, "received":J
    const-string v12, "EthernetService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Tx Packets : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v12, "EthernetService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Rx Packets : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_2

    .line 631
    or-int/lit8 v1, v1, 0x2

    .line 633
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_3

    .line 634
    or-int/lit8 v1, v1, 0x1

    .line 637
    :cond_3
    iget v12, p0, Lcom/android/server/EthernetService;->mDataActivity:I

    if-eq v1, v12, :cond_7

    iget-boolean v12, p0, Lcom/android/server/EthernetService;->mScreenOff:Z

    if-nez v12, :cond_7

    .line 638
    iput v1, p0, Lcom/android/server/EthernetService;->mDataActivity:I

    .line 640
    const/4 v12, 0x1

    if-ne v1, v12, :cond_4

    .line 641
    const-string v12, "EthernetService"

    const-string v13, "DATA_ACTIVITY_IN"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_4
    const/4 v12, 0x2

    if-ne v1, v12, :cond_5

    .line 643
    const-string v12, "EthernetService"

    const-string v13, "DATA_ACTIVITY_OUT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_5
    const/4 v12, 0x3

    if-ne v1, v12, :cond_6

    .line 645
    const-string v12, "EthernetService"

    const-string v13, "DATA_ACTIVITY_INOUT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_6
    iget-object v12, p0, Lcom/android/server/EthernetService;->mClients:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 648
    .local v0, "client":Lcom/android/internal/util/AsyncChannel;
    const/4 v12, 0x1

    iget v13, p0, Lcom/android/server/EthernetService;->mDataActivity:I

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_0

    .line 652
    .end local v0    # "client":Lcom/android/internal/util/AsyncChannel;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "received":J
    .end local v10    # "sent":J
    :cond_7
    return-void
.end method

.method private declared-synchronized persistEthEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 509
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 510
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "eth_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    .line 510
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 671
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 672
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/EthernetService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 676
    return-void
.end method

.method private scanEthDevice()I
    .locals 7

    .prologue
    .line 433
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v1, 0x0

    .line 435
    .local v1, "i":I
    const/4 v3, 0x0

    .line 437
    .local v3, "k":I
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->getInterfaceCnt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 441
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 443
    invoke-static {v2}, Landroid/net/ethernet/EthernetNative;->getInterfaceName(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "ethDevName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 445
    const-string v4, "eth0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "eth1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 446
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    .line 447
    add-int/lit8 v3, v3, 0x1

    .line 441
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "ethDevName":Ljava/lang/String;
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "EthernetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "total found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " net devices "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " k "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_3
    sget-boolean v4, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    if-eqz v4, :cond_4

    .line 458
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    .line 464
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_8

    .line 467
    invoke-static {v2}, Landroid/net/ethernet/EthernetNative;->getInterfaceName(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .restart local v0    # "ethDevName":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 469
    const-string v4, "eth0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "eth1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 470
    :cond_5
    iget-object v4, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aput-object v0, v4, v3

    .line 471
    iget-boolean v4, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "EthernetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 464
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "ethDevName":Ljava/lang/String;
    :cond_8
    move v1, v3

    .line 486
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_9
    return v1
.end method

.method private startEthernetService()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "isETHDisabled":Z
    iget-object v5, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDeviceNameList()[Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/android/server/EthernetService;->getPersistedState()I

    move-result v5

    iput v5, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    .line 195
    :try_start_0
    const-string v5, "eth_disabled"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_2

    move v2, v3

    .line 202
    :goto_0
    const-string v5, "EthernetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "previous state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Turned off by user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-nez v2, :cond_6

    .line 206
    iget v4, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 207
    iget-boolean v4, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "EthernetService"

    const-string v5, "Reset ethernet is needed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    sput-boolean v3, Lcom/android/server/EthernetService;->mResetEthernet:Z

    .line 223
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "EthernetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ethernet dev enabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFoundEthernetDevice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 195
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-boolean v5, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v5, :cond_3

    const-string v5, "EthernetService"

    const-string v6, "Not found ETH_DISABLED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3
    const/4 v2, 0x0

    .line 199
    const-string v5, "eth_disabled"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 212
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v4, :cond_5

    const-string v4, "EthernetService"

    const-string v5, "Turn on ethernet"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 214
    invoke-direct {p0}, Lcom/android/server/EthernetService;->getPersistedState()I

    move-result v3

    iput v3, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    goto :goto_1

    .line 218
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v3, :cond_7

    const-string v3, "EthernetService"

    const-string v5, "Set Off by user before"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 220
    invoke-direct {p0}, Lcom/android/server/EthernetService;->getPersistedState()I

    move-result v3

    iput v3, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized UpdateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/net/ethernet/EthernetDevInfo;

    .prologue
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v5, 0x2

    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 384
    const-string v3, "eth_conf"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 385
    const-string v3, "eth_ifname"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 386
    const-string v3, "eth_ip"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 387
    const-string v3, "eth_mode"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 388
    const-string v3, "eth_dns"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 389
    const-string v3, "eth_route"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    const-string v3, "eth_mask"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    :cond_0
    iget v3, p0, Lcom/android/server/EthernetService;->mEthState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_1

    .line 399
    :try_start_1
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v3}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 400
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    const-string v3, "eth_state"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const-string v3, "previous_eth_state"

    iget-object v4, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v4}, Landroid/net/ethernet/EthernetStateTracker;->getCheckConnecting()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v3, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 408
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/ethernet/EthernetStateTracker;->sendEmptyMessage(I)V

    .line 409
    const-string v3, "EthernetService"

    const-string v4, "Wrong ethernet configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 382
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 760
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v0, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial : can\'t dump EthernetService From pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->mConnectorConnected:Z

    if-eqz v0, :cond_2

    .line 765
    const-string v0, "Connected Ethernet Hub"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHWconnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/EthernetService;->mHWconnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStackconnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/EthernetService;->mStackconnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFoundEthernetDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConnectorConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/EthernetService;->mConnectorConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCheckConnecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/EthernetService;->mCheckConnecting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/EthernetService;->mUserDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEthState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/EthernetService;->mEthState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dhcp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "  Connect Mode=DHCP"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 775
    :cond_1
    const-string v0, "  Connect Mode=Static IP"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 777
    :cond_2
    const-string v0, "No connected Ethernet Hub"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getCheckConnecting()I
    .locals 3

    .prologue
    .line 710
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCheckConnecting:\tmCheckCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EthernetService;->mCheckConnecting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    sget v0, Lcom/android/server/EthernetService;->mCheckConnecting:I

    return v0
.end method

.method public getConnectorConnected()Z
    .locals 3

    .prologue
    .line 754
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectorConnected: mConnectorConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/EthernetService;->mConnectorConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->mConnectorConnected:Z

    return v0
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->scanEthDevice()I

    move-result v0

    if-lez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    .line 495
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getEthState()I
    .locals 1

    .prologue
    .line 679
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/EthernetService;->mEthState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEthernetServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 182
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    const-string v1, "getEthernetServiceMessenger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/EthernetService;->mAsyncServiceHandler:Lcom/android/server/EthernetService$AsyncServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getHWConnected()Z
    .locals 3

    .prologue
    .line 735
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHWConnected:  mHWconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mHWconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    sget-boolean v0, Lcom/android/server/EthernetService;->mHWconnected:Z

    return v0
.end method

.method public declared-synchronized getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;
    .locals 3

    .prologue
    .line 349
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthConfigured()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/net/ethernet/EthernetDevInfo;

    invoke-direct {v1}, Landroid/net/ethernet/EthernetDevInfo;-><init>()V

    .line 352
    .local v1, "info":Landroid/net/ethernet/EthernetDevInfo;
    const-string v2, "eth_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    .line 353
    const-string v2, "eth_ifname"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    .line 354
    const-string v2, "eth_ip"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    .line 355
    const-string v2, "eth_dns"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    .line 356
    const-string v2, "eth_mask"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setNetMask(Ljava/lang/String;)V

    .line 357
    const-string v2, "eth_route"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "info":Landroid/net/ethernet/EthernetDevInfo;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getStackConnected()Z
    .locals 3

    .prologue
    .line 723
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStackConnected:\tmStackconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mStackconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    sget-boolean v0, Lcom/android/server/EthernetService;->mStackconnected:Z

    return v0
.end method

.method public getTotalInterface()I
    .locals 1

    .prologue
    .line 418
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->getInterfaceCnt()I

    move-result v0

    return v0
.end method

.method public getUserDisabled()Z
    .locals 3

    .prologue
    .line 689
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserDisabled:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mUserDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    sget-boolean v0, Lcom/android/server/EthernetService;->mUserDisabled:Z

    return v0
.end method

.method public isEthConfigured()Z
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 336
    iget-object v4, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "eth_conf"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 340
    .local v1, "x":I
    iget-boolean v4, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "EthernetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEthConfigured "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    if-ne v1, v2, :cond_1

    .line 344
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public isEthDeviceFound()Z
    .locals 3

    .prologue
    .line 747
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFoundEthDevice: mFoundEthernetDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    sget-boolean v0, Lcom/android/server/EthernetService;->mFoundEthernetDevice:Z

    return v0
.end method

.method public isEthReset()Z
    .locals 3

    .prologue
    .line 683
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEthReset:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mResetEthernet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    sget-boolean v0, Lcom/android/server/EthernetService;->mResetEthernet:Z

    return v0
.end method

.method public setCheckConnecting(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 716
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    sput p1, Lcom/android/server/EthernetService;->mCheckConnecting:I

    .line 717
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCheckConnecting:\tmCheckConnecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/EthernetService;->mCheckConnecting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_0
    return-void
.end method

.method public declared-synchronized setEthMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 367
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 368
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEthMode : mode is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], DevName is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 371
    const-string v1, "eth_ifname"

    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    const-string v1, "eth_conf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    const-string v1, "eth_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :goto_0
    monitor-exit p0

    return-void

    .line 375
    :cond_1
    :try_start_1
    const-string v1, "eth_ifname"

    const-string v2, "eth0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    const-string v1, "eth_conf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    const-string v1, "eth_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setEthState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 515
    monitor-enter p0

    :try_start_0
    const-string v3, "EthernetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEthState from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/EthernetService;->mEthState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 518
    iget-boolean v3, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "EthernetService"

    const-string v4, "resetEthState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 520
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    .line 521
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/EthernetService;->mEthState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 525
    :cond_2
    const/4 v2, 0x0

    .line 526
    .local v2, "skip_resetInterface":Z
    :try_start_1
    iget v3, p0, Lcom/android/server/EthernetService;->mEthState:I

    if-eq v3, p1, :cond_1

    .line 529
    iget v3, p0, Lcom/android/server/EthernetService;->mEthState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    if-eq p1, v7, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getCheckConnecting()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 531
    :cond_4
    const-string v3, "EthernetService"

    const-string v4, "already resetInterface "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v2, 0x1

    .line 534
    :cond_5
    iput p1, p0, Lcom/android/server/EthernetService;->mEthState:I

    .line 535
    if-ne p1, v6, :cond_6

    .line 536
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 537
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    .line 566
    :goto_1
    if-ne p1, v7, :cond_8

    .line 567
    iget-boolean v3, p0, Lcom/android/server/EthernetService;->mIsReceiverRegistered:Z

    if-nez v3, :cond_1

    .line 568
    invoke-direct {p0}, Lcom/android/server/EthernetService;->registerForBroadcasts()V

    .line 569
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/EthernetService;->mIsReceiverRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    .end local v2    # "skip_resetInterface":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 539
    .restart local v2    # "skip_resetInterface":Z
    :cond_6
    const/4 v3, 0x1

    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 541
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthConfigured()Z

    move-result v3

    if-nez v3, :cond_7

    .line 545
    const-string v3, "dhcp"

    invoke-virtual {p0, v3}, Lcom/android/server/EthernetService;->setEthMode(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    :cond_7
    if-eq v2, v6, :cond_1

    .line 551
    :try_start_3
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v3}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 552
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    const-string v3, "eth_state"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    const-string v3, "previous_eth_state"

    iget-object v4, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v4}, Landroid/net/ethernet/EthernetStateTracker;->getCheckConnecting()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    iget-object v3, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 561
    iget-object v3, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/ethernet/EthernetStateTracker;->sendEmptyMessage(I)V

    .line 562
    const-string v3, "EthernetService"

    const-string v4, "Wrong ethernet configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 571
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    iget-boolean v3, p0, Lcom/android/server/EthernetService;->mIsReceiverRegistered:Z

    if-eqz v3, :cond_1

    .line 572
    iget-object v3, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/EthernetService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 573
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/EthernetService;->mIsReceiverRegistered:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public setHWConnected(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 741
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    sput-boolean p1, Lcom/android/server/EthernetService;->mHWconnected:Z

    .line 742
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHWConnected:  mHWconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mHWconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    return-void
.end method

.method public setStackConnected(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 729
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    sput-boolean p1, Lcom/android/server/EthernetService;->mStackconnected:Z

    .line 730
    iget-boolean v0, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStackConnected:\tmStackconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/EthernetService;->mStackconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    return-void
.end method

.method public setUserDisabled(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/EthernetService;, "Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v4, 0x1

    .line 695
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 697
    .local v0, "cr":Landroid/content/ContentResolver;
    sput-boolean p1, Lcom/android/server/EthernetService;->mUserDisabled:Z

    .line 699
    iget-boolean v1, p0, Lcom/android/server/EthernetService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUserDisabled:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/EthernetService;->mUserDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    if-ne p1, v4, :cond_1

    .line 702
    const-string v1, "eth_disabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 705
    :goto_0
    return-void

    .line 704
    :cond_1
    const-string v1, "eth_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
