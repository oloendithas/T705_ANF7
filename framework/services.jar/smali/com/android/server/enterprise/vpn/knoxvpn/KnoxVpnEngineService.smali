.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.super Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static final MAP_KEY_EXTRA_REPLACING:Ljava/lang/String; = "new_install_or_update"

.field private static final MAP_KEY_PACKAGENAME:Ljava/lang/String; = "package"

.field private static final MAP_KEY_PROFILENAME:Ljava/lang/String; = "profileName"

.field private static final MAP_KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAP_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final MAP_KEY_UID:Ljava/lang/String; = "uid"

.field private static final MAP_KEY_VALUESTRING:Ljava/lang/String; = "value_string"

.field private static final NULL_OBJECT:Ljava/lang/Object;

.field private static TAG:Ljava/lang/String;

.field public static VPN_RETURN_INT_ERROR:I

.field private static cisco_proxy_application:Ljava/lang/String;

.field private static mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private static mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

.field private static mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mKnoxTunInterfacePrefix:Ljava/lang/String;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

.field private vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 105
    const-string v0, "KnoxVpnEngineService"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    .line 129
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    .line 135
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    .line 137
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 138
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 140
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3570
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;-><init>()V

    .line 119
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 121
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 125
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 127
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 131
    const-string v0, "knoxv_"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxTunInterfacePrefix:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 143
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "Initializing in constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 151
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    .line 152
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 153
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    .line 154
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 155
    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 158
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeHandlerThread()V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnDataAndVendors()V

    .line 162
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .prologue
    .line 100
    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleVpnInterfaceState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionPackageAdded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleConnectivityAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionUserRemoved(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeHashtable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setVpnInterface(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addBlockingRulesForPackages()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnVendors()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setupIntentFilter()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->registerPersonaObserverForVpn()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionUserSwitched(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateProfilesForVendor(Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendBindSuccessIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleKnoxVpnServiceDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method private addBlockingRulesForPackages()V
    .locals 7

    .prologue
    .line 2316
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "addBlockingRulesForPackages"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->updateIpBlockingRule()V

    .line 2320
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2321
    .local v3, "profileName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding iptables for profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2329
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2330
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addBlockingRulesForPackages : Exception when reading package DB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 2325
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2326
    .restart local v3    # "profileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 2327
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addMangleExceptions(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private addMangleExceptions(Ljava/lang/String;)V
    .locals 6
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 2873
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMangleExceptions : vendor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2875
    .local v2, "vendorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 2876
    .local v0, "cid":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    .line 2877
    .local v1, "uid":I
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMangleExceptions : uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleExceptionsForUid(I)V

    .line 2879
    return-void
.end method

.method private addPackagesToIpTables(Ljava/lang/String;)V
    .locals 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3229
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : profileName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v5

    .line 3232
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 3233
    .local v0, "activateState":I
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v0, v7, :cond_1

    .line 3256
    :cond_0
    return-void

    .line 3237
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 3238
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3239
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v1

    .line 3240
    .local v1, "cid":I
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v7, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3241
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v8

    invoke-direct {p0, p1, v7, v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    .line 3244
    .end local v1    # "cid":I
    .end local v3    # "interfaceName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 3245
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : p =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : p.getPackageName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v6

    .line 3248
    .local v6, "uid":I
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3249
    .restart local v3    # "interfaceName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v7, v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3250
    if-eqz v3, :cond_3

    .line 3251
    invoke-direct {p0, p1, v6, v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 3253
    :cond_3
    invoke-direct {p0, p1, v6, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private declared-synchronized blockProxyService(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2949
    monitor-enter p0

    const/4 v8, 0x0

    .line 2950
    .local v8, "proxyPresent":Z
    const/4 v7, 0x0

    .line 2951
    .local v7, "proxyPackageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2953
    .local v6, "proxyClassName":Ljava/lang/String;
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    const-string v13, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2954
    .local v11, "queryServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2955
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v5, v11, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 2956
    .local v10, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 2957
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 2958
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The blockProxyService packageName value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "whose class name is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2960
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2961
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 2962
    const/4 v8, 0x1

    .line 2966
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v8, :cond_2

    .line 2967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2968
    .local v1, "blockToken":J
    const/4 v13, 0x1

    new-instance v14, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v7, v13, v14}, Landroid/content/pm/PackageManager;->setApplicationBlockedSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 2969
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2970
    const/4 v8, 0x1

    move v9, v8

    .line 2978
    .end local v1    # "blockToken":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "proxyPresent":Z
    .end local v10    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "queryServiceIntent":Landroid/content/Intent;
    .local v9, "proxyPresent":I
    :goto_0
    monitor-exit p0

    return v9

    .line 2974
    .end local v9    # "proxyPresent":I
    .restart local v8    # "proxyPresent":Z
    :catch_0
    move-exception v3

    .line 2975
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception at blockProxyService "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "blockProxyService : proxyPresent value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v8

    .line 2978
    .restart local v9    # "proxyPresent":I
    goto :goto_0

    .line 2949
    .end local v9    # "proxyPresent":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private declared-synchronized checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2982
    monitor-enter p0

    const/4 v6, 0x0

    .line 2984
    .local v6, "supportsKnox":Z
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2985
    .local v4, "queryifKnoxEnabled":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2986
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 2987
    .local v0, "anyconnectService":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 2988
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2989
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The checkIfAnyConnectSupportsKnox packageName value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "whose class name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 2991
    const/4 v6, 0x1

    .line 2999
    .end local v0    # "anyconnectService":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "queryifKnoxEnabled":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIfAnyConnectSupportsKnox : supportsKnox value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3000
    monitor-exit p0

    return v6

    .line 2996
    :catch_0
    move-exception v1

    .line 2997
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at checkIfAnyConnectSupportsKnox "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2982
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private deleteUIDFromPackageData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2436
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "Inside deleteUIDFromPackageData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private enforceEnterpriseVpnPermission(Lcom/sec/enterprise/knox/KnoxVpnContext;)V
    .locals 4
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;

    .prologue
    .line 3517
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 3518
    .local v0, "adminId":I
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforce permission. adminId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 3529
    :goto_0
    return-void

    .line 3523
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v1, :cond_1

    .line 3524
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v2, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfAdminHasVpnPermission(ILjava/lang/String;)Z

    goto :goto_0

    .line 3527
    :cond_1
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to enforce permission. mKnoxVpnHelper = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getActivate(Ljava/lang/String;)I
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3623
    monitor-enter p0

    const/4 v2, -0x1

    .line 3625
    .local v2, "temp":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3626
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v1, :cond_0

    .line 3627
    const/4 v3, -0x1

    .line 3635
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :goto_0
    monitor-exit p0

    return v3

    .line 3629
    .restart local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :goto_1
    move v3, v2

    .line 3635
    goto :goto_0

    .line 3631
    :catch_0
    move-exception v0

    .line 3632
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "getActivate error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3623
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1300
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1301
    .local v3, "adminId":I
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Profile : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_0
    const/4 v13, 0x0

    .line 1303
    .local v13, "retVal":[Ljava/lang/String;
    new-instance v12, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v12}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1304
    .local v12, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    invoke-virtual {v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1306
    const/4 v10, 0x0

    .line 1307
    .local v10, "packageList":[Ljava/lang/String;
    if-eqz p2, :cond_c

    .line 1308
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_1

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "get all packages : Profile is not null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v14

    if-eqz v14, :cond_2

    .line 1369
    :goto_0
    return-object v12

    .line 1317
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v4

    .line 1320
    .local v4, "containerId":I
    const/4 v6, 0x0

    .line 1321
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v15, "VpnPackageInfo"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "profileName"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "packageCid"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p2, v17, v18

    const/16 v18, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "packageName"

    aput-object v20, v18, v19

    invoke-virtual/range {v14 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1332
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    .line 1334
    :cond_3
    const/4 v8, 0x0

    .line 1335
    .local v8, "i":I
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_a

    .line 1336
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v10, v14, [Ljava/lang/String;

    .line 1337
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1339
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v14, "packageName"

    invoke-virtual {v5, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1340
    .local v11, "personifiedPackageName":Ljava/lang/String;
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Personified Package Name found : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    if-eq v14, v15, :cond_7

    .line 1344
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_6

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : personifiedPackageName : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_6
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_4

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : vpnContext.personaId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1362
    .end local v4    # "containerId":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "personifiedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1363
    .local v7, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Exceptionin notify: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v14, 0x1

    const/4 v15, 0x3

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1349
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "containerId":I
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "personifiedPackageName":Ljava/lang/String;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v8

    .line 1350
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_8

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Regular Package Name found : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 1352
    goto/16 :goto_1

    .line 1354
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v11    # "personifiedPackageName":Ljava/lang/String;
    :cond_9
    new-array v13, v8, [Ljava/lang/String;

    .line 1355
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v14, v13, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1356
    invoke-virtual {v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1357
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1359
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_a
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_b

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "get all packages : DB read for packages is either null or zero"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_b
    const/4 v14, 0x1

    const/4 v15, 0x4

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1367
    .end local v4    # "containerId":I
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "i":I
    :cond_c
    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0
.end method

.method private getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 1260
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get all rnaged packages : Profile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1262
    .local v0, "adminId":I
    const/4 v6, 0x0

    .line 1263
    .local v6, "retVal":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1264
    .local v3, "packageList":[Ljava/lang/String;
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1265
    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1267
    if-eqz p2, :cond_4

    .line 1268
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "get all rnaged packages : Profile is not null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 1295
    :goto_0
    return-object v5

    .line 1275
    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v4

    .line 1276
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v1

    .line 1278
    .local v1, "containerId":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 1279
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstalledPackages(I)[Ljava/lang/String;

    move-result-object v3

    .line 1280
    invoke-virtual {v5, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1281
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1287
    .end local v1    # "containerId":I
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_0
    move-exception v2

    .line 1288
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exceptionin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v7, 0x3

    invoke-virtual {v5, v10, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1285
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "containerId":I
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_3
    const/4 v7, 0x1

    const/4 v8, 0x4

    :try_start_1
    invoke-virtual {v5, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1292
    .end local v1    # "containerId":I
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_4
    const/4 v7, 0x2

    invoke-virtual {v5, v10, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method private getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3558
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v0

    .line 3559
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v0, :cond_0

    .line 3560
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get binder for profile : Profile does not exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    const/4 v2, 0x0

    .line 3566
    :goto_0
    return-object v2

    .line 3563
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v1

    .line 3564
    .local v1, "vendorNameWithCid":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v2

    .line 3566
    .local v2, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    goto :goto_0
.end method

.method private declared-synchronized getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3616
    monitor-enter p0

    const/4 v0, 0x0

    .line 3617
    .local v0, "temp":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "knoxv_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3618
    monitor-exit p0

    return-object v0

    .line 3616
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 4

    .prologue
    .line 226
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "getNetworkManagementService is reached initially"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 228
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService binder value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    if-eqz v0, :cond_2

    .line 230
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_2

    .line 231
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 232
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private declared-synchronized getRoutType(Ljava/lang/String;)I
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3641
    monitor-enter p0

    const/4 v1, -0x1

    .line 3642
    .local v1, "iRval":I
    const/4 v2, 0x0

    .line 3644
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3645
    if-nez v2, :cond_0

    move v3, v1

    .line 3656
    :goto_0
    monitor-exit p0

    return v3

    .line 3648
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    move v3, v1

    .line 3656
    goto :goto_0

    .line 3650
    :catch_0
    move-exception v0

    .line 3652
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "getRoutType error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3654
    const/4 v3, -0x1

    goto :goto_0

    .line 3641
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getVPNState(Ljava/lang/String;)I
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 3776
    monitor-enter p0

    const/4 v1, 0x0

    .line 3777
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/4 v2, -0x1

    .line 3779
    .local v2, "state":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3780
    if-nez v1, :cond_0

    .line 3796
    :goto_0
    monitor-exit p0

    return v4

    .line 3784
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 3785
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 3786
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVPNState : Interface null for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3793
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v0

    .line 3794
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVPNState : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    move v4, v2

    .line 3796
    goto :goto_0

    .line 3790
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_3
    invoke-interface {v3, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    goto :goto_1

    .line 3776
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized getVPNTransitionState(Ljava/lang/String;)I
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 3736
    monitor-enter p0

    const/4 v0, -0x1

    .line 3737
    .local v0, "iVPNCurActivateState":I
    const/4 v1, -0x1

    .line 3738
    .local v1, "iVpnConnectState":I
    const/4 v2, -0x1

    .line 3740
    .local v2, "temp":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNState(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3741
    if-ltz v1, :cond_0

    const/4 v4, 0x5

    if-ge v4, v1, :cond_1

    .line 3766
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 3745
    :cond_1
    move v2, v1

    .line 3748
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v0

    .line 3749
    if-ltz v0, :cond_0

    .line 3753
    if-nez v0, :cond_2

    .line 3754
    add-int/lit8 v2, v2, 0x64

    .line 3764
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVPNTransitionState : VpnState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move v3, v2

    .line 3766
    goto :goto_0

    .line 3736
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getValidationOfPackageName(ILjava/lang/String;)I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3660
    const/4 v2, -0x1

    .line 3661
    .local v2, "retValue":I
    const/4 v1, 0x0

    .line 3663
    .local v1, "isPackageInstalledResult":Z
    if-lez p1, :cond_1

    .line 3664
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    .line 3665
    if-eqz v1, :cond_0

    .line 3666
    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v3, v2

    .line 3678
    .end local v2    # "retValue":I
    .local v3, "retValue":I
    :goto_1
    return v3

    .line 3668
    .end local v3    # "retValue":I
    .restart local v2    # "retValue":I
    :cond_1
    if-nez p1, :cond_0

    .line 3669
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3670
    if-eqz v1, :cond_0

    .line 3671
    const/4 v2, 0x0

    goto :goto_0

    .line 3674
    :catch_0
    move-exception v0

    .line 3675
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCheckedPackageName : Exception occurred for checkingPackageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 3676
    .end local v2    # "retValue":I
    .restart local v3    # "retValue":I
    goto :goto_1
.end method

.method private getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 3573
    const/4 v3, 0x0

    .line 3575
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz p1, :cond_0

    .line 3576
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3577
    .local v2, "interfaceObject":Ljava/lang/Object;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    .line 3578
    move-object v0, v2

    check-cast v0, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3584
    .end local v2    # "interfaceObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 3581
    :catch_0
    move-exception v1

    .line 3582
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving Binder interface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleActionPackageAdded(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2891
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "vpn handle : Handle MSG package add"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    const/4 v10, -0x1

    .line 2893
    .local v10, "uid":I
    const/4 v7, 0x0

    .local v7, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2894
    .local v6, "originalPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2896
    .local v1, "cid":I
    :try_start_0
    const-string/jumbo v11, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 2897
    const-string v11, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2898
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2899
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2901
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : uid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_0
    if-nez v7, :cond_2

    .line 2946
    :cond_1
    :goto_0
    return-void

    .line 2906
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->hasVpnInterface(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2907
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : calling bind package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2943
    :catch_0
    move-exception v4

    .line 2944
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : pakcage add : Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2911
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_5

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : checking update package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updatePackageData(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2914
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "vpn handle : package add : Package found in DB with rule proceed with logic"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    const/4 v9, 0x0

    .line 2917
    .local v9, "profileName":Ljava/lang/String;
    const/4 v10, -0x1

    .line 2918
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v12, "VpnPackageInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "packageName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "profileName"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "packageUid"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 2926
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_6

    .line 2928
    :try_start_2
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "getting vpn object from database : Cursor not null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2930
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "profileName"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2931
    const-string v11, "packageUid"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    goto :goto_1

    .line 2933
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 2934
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getting vpn object from database : Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v8

    .line 2939
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v8, v7, v10, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    .line 2940
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private handleActionUserRemoved(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3145
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "handleActionUserRemoved : Got USERREMOVED intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    const-string v7, "android.intent.extra.user_handle"

    const/16 v8, -0x2710

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3149
    .local v5, "personaId":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v8, "VpnProfileInfo"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "personaId"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3152
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 3153
    .local v6, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3154
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 3155
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "profileName"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3156
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleActionUserRemoved : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3160
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profileName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3161
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleActionUserRemoved : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v8, "VpnPackageInfo"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "packageCid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3169
    .restart local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_1

    .line 3170
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 3171
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v7, "packageName"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3172
    .local v4, "packageName":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleActionUserRemoved : packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3176
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 3177
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleActionUserRemoved : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private handleActionUserSwitched(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3112
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "Got USERSWITCHED intent."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3115
    .local v0, "containerId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnVendorsForContainer(I)V

    .line 3116
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    .line 3142
    return-void
.end method

.method private declared-synchronized handleAnyConnectUninstall(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3004
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package going to be removed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "whose container id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3005
    const/4 v1, 0x0

    .line 3007
    .local v1, "packageRemoved":Z
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 3011
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3012
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    .line 3015
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package going to be removed result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3016
    monitor-exit p0

    return v1

    .line 3008
    :catch_0
    move-exception v0

    .line 3009
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at handleAnyConnectUninstall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3011
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3012
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3004
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "packageRemoved":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3011
    .restart local v1    # "packageRemoved":Z
    :catchall_1
    move-exception v2

    :try_start_5
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3012
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    .line 3011
    :cond_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private handleConnectivityAction(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2771
    const-string v1, "noConnectivity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2772
    .local v0, "networkDown":Z
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vpn handle : connectivity action : Handle MSG CONNECTIVITY_ACTION. networkDown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    if-nez v0, :cond_0

    .line 2774
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    .line 2776
    :cond_0
    return-void
.end method

.method private handleKnoxVpnServiceDisconnect(Ljava/lang/String;)V
    .locals 21
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 3432
    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : vendorNameWithCid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    const/4 v2, 0x0

    .line 3434
    .local v2, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v8, "connectivity"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 3435
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : mConnectivityService = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    const/16 v18, 0x0

    .line 3437
    .local v18, "interfaceName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "oldPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3438
    .local v4, "newPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "isConnecting":Z
    const/4 v12, 0x0

    .local v12, "PERAPP_VPN":Z
    const/4 v6, 0x1

    .line 3439
    .local v6, "SYSTEM_VPN":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 3440
    .local v20, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v5

    .line 3441
    .local v5, "profileName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v14

    .line 3442
    .local v14, "activateState":I
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : profileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v19

    .line 3444
    .local v19, "storedVendorName":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : storedVendorName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-eq v14, v8, :cond_0

    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3446
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    .line 3447
    .local v17, "iface":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 3449
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I

    move-result v8

    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    if-ne v8, v9, :cond_2

    .line 3451
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "handle disconnect to vendor : Disconnecting System vpn"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    invoke-interface/range {v2 .. v7}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3467
    .end local v2    # "mConnectivityService":Landroid/net/IConnectivityManager;
    .end local v3    # "oldPackage":Ljava/lang/String;
    .end local v4    # "newPackage":Ljava/lang/String;
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "SYSTEM_VPN":Z
    .end local v7    # "isConnecting":Z
    .end local v12    # "PERAPP_VPN":Z
    .end local v14    # "activateState":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "iface":Ljava/lang/String;
    .end local v18    # "interfaceName":Ljava/lang/String;
    .end local v19    # "storedVendorName":Ljava/lang/String;
    .end local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_0
    move-exception v15

    .line 3468
    .local v15, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle knox vpn service disconnect : Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 3454
    .restart local v2    # "mConnectivityService":Landroid/net/IConnectivityManager;
    .restart local v3    # "oldPackage":Ljava/lang/String;
    .restart local v4    # "newPackage":Ljava/lang/String;
    .restart local v5    # "profileName":Ljava/lang/String;
    .restart local v6    # "SYSTEM_VPN":Z
    .restart local v7    # "isConnecting":Z
    .restart local v12    # "PERAPP_VPN":Z
    .restart local v14    # "activateState":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "iface":Ljava/lang/String;
    .restart local v18    # "interfaceName":Ljava/lang/String;
    .restart local v19    # "storedVendorName":Ljava/lang/String;
    .restart local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_2
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "handle disconnect to vendor : Disconnecting Per-App vpn"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3458
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v13, v7

    .line 3459
    invoke-interface/range {v8 .. v13}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto/16 :goto_0

    .line 3466
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v14    # "activateState":I
    .end local v17    # "iface":Ljava/lang/String;
    .end local v19    # "storedVendorName":Ljava/lang/String;
    .end local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_3
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleMigrate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2768
    return-void
.end method

.method private handleVpnInterfaceState(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2800
    :try_start_0
    const-string v13, "extra_profile_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2801
    .local v7, "profileName":Ljava/lang/String;
    const-string v13, "extra_action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2802
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v13, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 2803
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v6, :cond_1

    .line 2870
    .end local v1    # "action":Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2806
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v7    # "profileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I

    move-result v13

    sget v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    if-eq v13, v14, :cond_0

    .line 2810
    const-string/jumbo v13, "tun_info"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2811
    const-string v13, "extra_tun_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2812
    .local v10, "tunInterfaceName":Ljava/lang/String;
    const-string v13, "extra_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2813
    .local v9, "state":I
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState - ProfileName, state, tunInterfaceName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    const/4 v13, 0x1

    if-ne v9, v13, :cond_2

    .line 2816
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  TUN INTERFACE UP - ProfileName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    if-eqz v6, :cond_0

    .line 2821
    invoke-virtual {v6, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2823
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 2825
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2867
    .end local v1    # "action":Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v9    # "state":I
    .end local v10    # "tunInterfaceName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2868
    .local v3, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState : Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2826
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v7    # "profileName":Ljava/lang/String;
    .restart local v9    # "state":I
    .restart local v10    # "tunInterfaceName":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x2

    if-ne v9, v13, :cond_0

    .line 2827
    :try_start_1
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  TUN INTERFACE DOWN - ProfileName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 2830
    .local v4, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 2832
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 2833
    .local v12, "vpnState":I
    const/4 v13, 0x2

    if-eq v12, v13, :cond_3

    const/4 v13, 0x4

    if-eq v12, v13, :cond_3

    const/4 v13, 0x3

    if-eq v12, v13, :cond_3

    const/16 v13, 0x66

    if-eq v12, v13, :cond_3

    const/16 v13, 0x68

    if-eq v12, v13, :cond_3

    const/16 v13, 0x67

    if-ne v12, v13, :cond_4

    .line 2837
    :cond_3
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  TUN INTERFACE DOWN : profile connected. profileName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    new-instance v11, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v13, 0x3e8

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v14

    const-string v15, "Knox_Framework"

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 2840
    .local v11, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v5

    .line 2843
    .local v5, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2846
    .end local v5    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v11    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :cond_4
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  Trying to remove profile : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getMarkProfileForDeletion()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2849
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState : Got it. removing profile : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v13, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2858
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    goto/16 :goto_0

    .line 2854
    :cond_5
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState : Adding blocking rules : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V

    goto :goto_1

    .line 2860
    .end local v4    # "iface":Ljava/lang/String;
    .end local v9    # "state":I
    .end local v10    # "tunInterfaceName":Ljava/lang/String;
    .end local v12    # "vpnState":I
    :cond_6
    const-string v13, "dns_info"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2861
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  DNS INFO - ProfileName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    const-string v13, "dnsList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2863
    .local v2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v13, "searchDomainList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2864
    .local v8, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setDnsList(Ljava/util/List;)V

    .line 2865
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setSearchDomainList(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private hasVpnInterface(Ljava/lang/String;)Z
    .locals 1
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3597
    const/4 v0, 0x1

    .line 3599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeHandlerThread()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxVpnHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 190
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 191
    return-void
.end method

.method private initializeHashtable()V
    .locals 28

    .prologue
    .line 2193
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "VpnProfileInfo"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2198
    .local v9, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v18, 0x0

    .local v18, "profileName":Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, "vendorNameWithCid":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2199
    .local v19, "protocolType":Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, "adminId":I
    const/16 v16, 0x0

    .local v16, "personaId":I
    const/16 v20, -0x1

    .local v20, "routeType":I
    sget v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    .line 2200
    .local v4, "activateState":I
    const/4 v7, -0x1

    .line 2201
    .local v7, "containerVpnState":I
    const/16 v17, 0x0

    .line 2202
    .local v17, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_7

    .line 2204
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_0

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable : VPN INFO: New Framework is enabled. Set the system property"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_0
    const-string v23, "net.vpn.framework"

    const-string v24, "2.0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_1

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable : Cursor not null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 2208
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v23, "profileName"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2209
    const-string v23, "defaultRoute"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 2210
    const-string v23, "adminUid"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2211
    const-string v23, "personaId"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2212
    const-string/jumbo v23, "vendorName"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2213
    const-string v23, "protocolType"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2214
    const-string v23, "activateState"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2215
    const-string v23, "containerVpnState"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2216
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_3

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable : adminId :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Profile :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " vendorName :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_3
    if-eqz v18, :cond_2

    .line 2220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 2221
    new-instance v17, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;-><init>()V

    .line 2222
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2226
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v17

    .line 2227
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_5

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable :  ProfileName found in map. Add to the list."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_5
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setProfileName(Ljava/lang/String;)V

    .line 2230
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setRouteType(I)V

    .line 2231
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setAdminId(I)V

    .line 2232
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setPersonaId(I)V

    .line 2233
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setVendorPkgName(Ljava/lang/String;)V

    .line 2234
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setProtocolType(Ljava/lang/String;)V

    .line 2235
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setActivateState(I)V

    .line 2236
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setContainerVpnState(I)V

    .line 2239
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_6

    .line 2240
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 2241
    .local v12, "interfaceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 2242
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v23

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    .line 2246
    .end local v12    # "interfaceName":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2250
    .end local v4    # "activateState":I
    .end local v5    # "adminId":I
    .end local v7    # "containerVpnState":I
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "personaId":I
    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v20    # "routeType":I
    .end local v22    # "vendorNameWithCid":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 2251
    .local v10, "e":Ljava/lang/Exception;
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "init :  Exception when reading Profile DB:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "VpnPackageInfo"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2259
    .restart local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v15, 0x0

    .local v15, "packageName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2260
    .restart local v18    # "profileName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2261
    .local v13, "originalPackageName":Ljava/lang/String;
    const/16 v21, -0x1

    .local v21, "uid":I
    const/4 v6, 0x0

    .line 2263
    .local v6, "cid":I
    const/4 v14, 0x0

    .line 2264
    .local v14, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    const/16 v17, 0x0

    .line 2265
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v9, :cond_b

    .line 2266
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_8

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable : step#2 : Cursor not null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 2268
    .restart local v8    # "cv":Landroid/content/ContentValues;
    const-string v23, "profileName"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2269
    const-string v23, "packageName"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2270
    const-string v23, "packageUid"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 2271
    const-string v23, "packageCid"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2273
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_a

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable :  Cid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Uid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Profile:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " packageName:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_a
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    .line 2275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v17

    .line 2277
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v16

    .line 2279
    .restart local v16    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 2281
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2308
    .end local v6    # "cid":I
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "originalPackageName":Ljava/lang/String;
    .end local v14    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "personaId":I
    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v21    # "uid":I
    :catch_1
    move-exception v10

    .line 2309
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "init2 :  Exception when reading package DB:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_b
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    .line 2312
    :cond_c
    return-void

    .line 2284
    .restart local v6    # "cid":I
    .restart local v8    # "cv":Landroid/content/ContentValues;
    .restart local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "originalPackageName":Ljava/lang/String;
    .restart local v14    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "personaId":I
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v18    # "profileName":Ljava/lang/String;
    .restart local v21    # "uid":I
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->deleteUIDFromPackageData(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2288
    .end local v16    # "personaId":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v21

    .line 2290
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_f

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable : originalPackageName : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :cond_f
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_10

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable : uid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    :cond_10
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 2293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v17

    .line 2295
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v16

    .line 2298
    .restart local v16    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 2299
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 2302
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method private initializeVpnVendors()V
    .locals 9

    .prologue
    .line 2169
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "initializeVpnVendors"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2171
    .local v4, "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "initializeVpnVendors : vendorList initialized"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2173
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 2174
    .local v3, "profileName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : ProfileName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    .line 2176
    .local v5, "vendorNameWithCid":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Checking vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2178
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Adding vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2187
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "vendorNameWithCid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2188
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 2183
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2184
    .restart local v5    # "vendorNameWithCid":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Binding to vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initializeVpnVendorsForContainer(I)V
    .locals 10
    .param p1, "containerId"    # I

    .prologue
    .line 2136
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "initializeVpnVendorsForContainer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2138
    .local v5, "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "initializeVpnVendorsForContainer : vendorList initialized"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2140
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 2141
    .local v4, "profileName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v0

    .line 2142
    .local v0, "cid":I
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : ProfileName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , cid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    .line 2144
    .local v6, "vendorNameWithCid":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Checking vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_3
    if-ne v0, p1, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2146
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Adding vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2162
    .end local v0    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "vendorNameWithCid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2163
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    return-void

    .line 2151
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2152
    .restart local v6    # "vendorNameWithCid":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Binding to vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_8
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v7, v8, :cond_a

    .line 2156
    :cond_9
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;)Z

    goto :goto_1

    .line 2158
    :cond_a
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "initializeVpnVendorsForContainer : Binding already done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2087
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    const/4 v0, 0x1

    .line 2091
    :goto_0
    return v0

    .line 2090
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printProfileVpnMap()V
    .locals 13

    .prologue
    .line 2096
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v9, :cond_0

    .line 2097
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "********************Printing profile map ********************"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileCount()I

    move-result v5

    .line 2100
    .local v5, "profileCount":I
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No of profiles: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2102
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v6, :cond_2

    .line 2103
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v7

    .line 2104
    .local v7, "profileName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2106
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v8

    .line 2107
    .local v8, "state":I
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ProfileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iface:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; personaId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; adminId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getAdminId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activated:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v9

    sget v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v9, v12, :cond_1

    const-string v9, "false "

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "containerVpn user:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 2116
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", profileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}},"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2127
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v5    # "profileCount":I
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v8    # "state":I
    :catch_0
    move-exception v0

    .line 2128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "-----------------Printing profile map --------------------------"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :cond_0
    return-void

    .line 2112
    .restart local v3    # "interfaceName":Ljava/lang/String;
    .restart local v5    # "profileCount":I
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v7    # "profileName":Ljava/lang/String;
    .restart local v8    # "state":I
    :cond_1
    :try_start_1
    const-string/jumbo v9, "true "

    goto/16 :goto_1

    .line 2122
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v8    # "state":I
    :cond_2
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "VpnProfileInfo contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_3
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "]},"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2126
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "] "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private refreshDomainInHashMap(Ljava/lang/String;)V
    .locals 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3868
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3869
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_1

    .line 3870
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "#################### Printing domain map ####################"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Domain Count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3874
    .local v5, "key":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3875
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 3876
    .local v3, "itemStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 3877
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3876
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3880
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{ProfileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    domains : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ""

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "]},"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3885
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3886
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "#################### Printing domain map ####################"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    :cond_1
    return-void

    .line 3881
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "itemStr":Ljava/lang/String;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 3884
    .end local v1    # "i":I
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "] "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private registerPersonaObserverForVpn()V
    .locals 4

    .prologue
    .line 3473
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 3475
    .local v1, "mPersona":Landroid/os/PersonaManager;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "registerSystemPersonaObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "Registering personaObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3508
    :goto_0
    return-void

    .line 3505
    :catch_0
    move-exception v0

    .line 3506
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, " Error registering with Persona service via registerSystemPersonaObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeFromHashMapByPackageName(Ljava/lang/String;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2394
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "removeFromHashMapByPackageName: In remove package"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v8, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2396
    .local v3, "profileName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 2397
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_1

    .line 2398
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "removeFromHashMapByPackageName: Package name not found in the map"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_0
    :goto_0
    return-void

    .line 2401
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v8

    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v8, v9, :cond_2

    .line 2402
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "removeFromHashMapByPackageName :Profile is deactivated. Just removing package entry"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 2407
    :cond_2
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    move-result-object v1

    .line 2409
    .local v1, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    if-nez v1, :cond_3

    .line 2410
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "removeFromHashMapByPackageName : Vpn Package Info entry is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2414
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v6

    .line 2416
    .local v6, "uid":I
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2417
    invoke-direct {p0, v3, v6, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2418
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V

    .line 2419
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageCount()I

    move-result v4

    .line 2421
    .local v4, "size":I
    if-gtz v4, :cond_4

    .line 2422
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v5

    .line 2423
    .local v5, "state":I
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeFromHashMapByPackageName : current state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :try_start_0
    new-instance v7, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v8, 0x3e8

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v9

    const-string v10, "Knox_Framework"

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 2427
    .local v7, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    invoke-virtual {p0, v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    .end local v5    # "state":I
    .end local v7    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :cond_4
    :goto_1
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    goto :goto_0

    .line 2428
    .restart local v5    # "state":I
    :catch_0
    move-exception v0

    .line 2429
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove profile : Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeFromHashMapByProfileName(Ljava/lang/String;)V
    .locals 20
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2335
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "remove profile : beginning:"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v11

    .line 2338
    .local v11, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v11, :cond_1

    .line 2339
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "remove profile : VpnProfileInfo returned null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :cond_0
    :goto_0
    return-void

    .line 2342
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 2344
    .local v7, "interfaceName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 2345
    .local v9, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    const/4 v10, 0x0

    .line 2346
    .local v10, "packageName":Ljava/lang/String;
    const/4 v14, -0x1

    .line 2348
    .local v14, "uid":I
    if-nez v9, :cond_3

    .line 2349
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "remove profile : Vpn Package Info entry is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2353
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2354
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v14

    .line 2356
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove profile : uid = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2358
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_1

    .line 2360
    .end local v9    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v14    # "uid":I
    :cond_4
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 2362
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v4

    .line 2363
    .local v4, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 2364
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v17

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2367
    .end local v4    # "cid":I
    :cond_5
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v16

    .line 2369
    .local v16, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    .line 2370
    .local v12, "state":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    const/16 v17, 0x66

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    const/16 v17, 0x68

    move/from16 v0, v17

    if-ne v12, v0, :cond_7

    .line 2374
    :cond_6
    :try_start_1
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeFromHashMapByProfileName : setting mark and calling stop:  profile : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setMarkProfileForDeletion(Z)V

    .line 2376
    new-instance v15, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v17, 0x3e8

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v18

    const-string v19, "Knox_Framework"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 2378
    .local v15, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v8

    .line 2379
    .local v8, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2380
    .local v13, "stopStatus":I
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeFromHashMapByProfileName : stop status : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2390
    .end local v8    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v12    # "state":I
    .end local v13    # "stopStatus":I
    .end local v15    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :goto_2
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    goto/16 :goto_0

    .line 2381
    .restart local v12    # "state":I
    .restart local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v5

    .line 2382
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove profile : Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2387
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "state":I
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_1
    move-exception v5

    .line 2388
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove profile : Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2385
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "state":I
    .restart local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private removeMangleExceptions(Ljava/lang/String;)V
    .locals 6
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 2882
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeMangleExceptions : vendor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2884
    .local v2, "vendorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 2885
    .local v0, "cid":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    .line 2886
    .local v1, "uid":I
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeMangleExceptions : uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleExceptionsForUid(I)V

    .line 2888
    return-void
.end method

.method private removePackagesFromIpTables(Ljava/lang/String;)V
    .locals 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3259
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackagesFromIpTables : profileName =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v4

    .line 3263
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 3264
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 3265
    .local v2, "interfaceName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 3266
    .local v0, "cid":I
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v6, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3267
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 3270
    .end local v0    # "cid":I
    .end local v2    # "interfaceName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 3272
    .local v3, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    if-nez v3, :cond_2

    .line 3273
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "removePackagesFromIpTables : Vpn Package Info entry is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3276
    :cond_2
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackagesFromIpTables : p.getPackageName =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v5

    .line 3279
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3280
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_0

    .line 3282
    .end local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v5    # "uid":I
    :cond_4
    return-void
.end method

.method private removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2507
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "removeProfileFromHashMapAndDB : removeProfileFromHashMapAndDB beginning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    const/4 v2, 0x0

    .line 2509
    .local v2, "success":Z
    const/4 v1, 0x0

    .line 2510
    .local v1, "removeSuccess":Z
    if-eqz p1, :cond_0

    .line 2512
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByProfileName(Ljava/lang/String;)V

    .line 2513
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v4, "VpnProfileInfo"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profileName"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 2518
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove vpn connection for per app : success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2524
    :cond_0
    :goto_0
    return v1

    .line 2520
    :catch_0
    move-exception v0

    .line 2521
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove vpn connection for perapp : Error in handling remove connection for per app vpn Feature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized removeVpnInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 3604
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3605
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3607
    :cond_0
    monitor-exit p0

    return-void

    .line 3604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restartVPN(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3802
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "restartVPN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    const/4 v0, 0x0

    .line 3805
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez p1, :cond_1

    .line 3806
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "profileName is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    :cond_0
    :goto_0
    return-void

    .line 3810
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v0

    .line 3811
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getIsRetry()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3813
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setIsRetry(Z)V

    .line 3820
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3821
    .local v1, "temp":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    const-wide/16 v3, 0x1b58

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3822
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "post delay "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3816
    .end local v1    # "temp":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
    :cond_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + was tried to re-start once "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized runAllVpnService()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2528
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "run all vpn : runAllVpnService beginning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2531
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2532
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 2533
    .local v3, "profileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v4

    .line 2534
    .local v4, "state":I
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run all vpn : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I

    move-result v5

    sget v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    if-eq v5, v6, :cond_0

    .line 2541
    if-eq v4, v8, :cond_2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    .line 2542
    :cond_2
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run all vpn : startVpnConnectionForProfile : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2550
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "state":I
    :catch_0
    move-exception v0

    .line 2552
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "run all vpn : Exception: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2555
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    monitor-exit p0

    return-void

    .line 2547
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v3    # "profileName":Ljava/lang/String;
    .restart local v4    # "state":I
    :cond_5
    :try_start_3
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run all vpn : nothing : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2528
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "state":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private sendBindSuccessIntent(Ljava/lang/String;)V
    .locals 8
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 249
    .local v2, "token":J
    :try_start_0
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "vendorName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, "containerId":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v1, "successIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.mdm.VPN_BIND_RESULT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string/jumbo v5, "vpn_bind_vendor"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string/jumbo v5, "vpn_bind_cid"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string/jumbo v5, "vpn_bind_status"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "Sending bind success intent to User 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    return-void

    .line 259
    .end local v0    # "containerId":I
    .end local v1    # "successIntent":Landroid/content/Intent;
    .end local v4    # "vendorName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private sendMessageToHandler(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "map"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 2689
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    if-eqz v1, :cond_0

    .line 2690
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    invoke-static {v1, p1, v2, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2691
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2693
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private declared-synchronized setActivate(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "activateState"    # I

    .prologue
    .line 3686
    monitor-enter p0

    const/4 v7, 0x0

    .line 3687
    .local v7, "status":Z
    const/4 v4, 0x0

    .line 3688
    .local v4, "oldActivateState":I
    const/4 v1, 0x0

    .line 3690
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 3691
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_start_0
    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3695
    .local v6, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 3696
    if-nez v5, :cond_0

    .line 3697
    const/4 v9, 0x0

    .line 3731
    :goto_0
    monitor-exit p0

    return v9

    .line 3699
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v4

    .line 3700
    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setActivateState(I)V

    .line 3704
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3705
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v2, "cv":Landroid/content/ContentValues;
    :try_start_3
    const-string v9, "activateState"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3706
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "profileName"

    aput-object v10, v0, v9

    .line 3709
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 3713
    .local v8, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v10, "VpnProfileInfo"

    invoke-virtual {v9, v10, v0, v8, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v7

    .line 3714
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setActivate : profileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", activateState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    :cond_1
    if-nez v7, :cond_2

    .line 3719
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "setActivate : DB storage failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setActivateState(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3721
    const/4 v9, 0x0

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_0

    .line 3725
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v8    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3727
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception update  profile : updateVPNProfile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3728
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3731
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "values":[Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 3686
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v8    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v9

    :goto_2
    monitor-exit p0

    throw v9

    .line 3725
    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_1

    .line 3686
    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_2
.end method

.method private setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    .locals 17
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidStart"    # I
    .param p3, "uidEnd"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3365
    if-eqz p1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 3366
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  profileName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    :cond_0
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_1

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  uidStart value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    :cond_1
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  uidEnd value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    :cond_2
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  interfaceName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v13

    .line 3371
    .local v13, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/4 v4, 0x0

    .line 3372
    .local v4, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3373
    .local v3, "dnsArray":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 3374
    .local v9, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 3376
    .local v10, "searchDomains":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 3377
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getDnsList()Ljava/util/List;

    move-result-object v4

    .line 3378
    if-eqz v4, :cond_8

    .line 3379
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dnsArray":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 3380
    .restart local v3    # "dnsArray":[Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getSearchDomainList()Ljava/util/List;

    move-result-object v9

    .line 3381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3382
    .local v2, "buffer":Ljava/lang/StringBuilder;
    if-eqz v9, :cond_4

    .line 3383
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3384
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3387
    .end local v5    # "domain":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3389
    :try_start_0
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_6

    .line 3391
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v14, v3

    if-ge v7, v14, :cond_6

    .line 3392
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  dnsArray value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v3, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3395
    .end local v7    # "i":I
    :cond_6
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_7

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  searchDomains value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v11

    .line 3398
    .local v11, "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v3, v10}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v14, v15, v0, v1}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3401
    :try_start_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3411
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "dnsArray":[Ljava/lang/String;
    .end local v4    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "searchDomains":Ljava/lang/String;
    .end local v11    # "token":J
    .end local v13    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_8
    :goto_2
    return-void

    .line 3401
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "dnsArray":[Ljava/lang/String;
    .restart local v4    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "searchDomains":Ljava/lang/String;
    .restart local v11    # "token":J
    .restart local v13    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catchall_0
    move-exception v14

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3404
    .end local v11    # "token":J
    :catch_0
    move-exception v6

    .line 3405
    .local v6, "e":Ljava/lang/Exception;
    const-string v14, "VPN_TESTING"

    const-string/jumbo v15, "setting dns property : Exception "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    const-string v14, "VPN_TESTING"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setVpnInterface(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "vpnInterface"    # Ljava/lang/Object;

    .prologue
    .line 3588
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVpnInterface: vendorName value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "vpnInterface value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    :cond_0
    if-nez p2, :cond_1

    .line 3590
    sget-object p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    .line 3592
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3593
    return-void
.end method

.method private setupIntentFilter()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2558
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setup intent filter is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 2560
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2561
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2562
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2563
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2564
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2565
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2566
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2567
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2568
    const-string v0, "com.sec.enterprise.mdm.MDM_VPN_PRE_ADMIN_REMOVAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2569
    const-string v0, "enterprise.container.uninstalled"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2570
    const-string v0, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2571
    const-string v0, "com.sec.enterprise.mdm.services.vpn.RETRY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2572
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2573
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2576
    const-string v0, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2577
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2578
    return-void
.end method

.method private setupIntentFilterForMigration()V
    .locals 6

    .prologue
    .line 2581
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setup intent filter Migration is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 2583
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2585
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2586
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.sec.knox.migrationagent.permission.RECEIVE_MIGRATION"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2587
    return-void
.end method

.method private startUid(I)I
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 3204
    const/4 v1, -0x1

    .line 3206
    .local v1, "firstUid":I
    const v2, 0x186a0

    mul-int v1, p1, v2

    .line 3207
    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3211
    :cond_0
    :goto_0
    return v1

    .line 3208
    :catch_0
    move-exception v0

    .line 3209
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUidOfPersona Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVpnConnectionForProfile(Ljava/lang/String;)I
    .locals 14
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3302
    const/4 v4, -0x1

    .line 3304
    .local v4, "retVal":I
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 3305
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_0

    move v5, v4

    .line 3361
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v4    # "retVal":I
    .local v5, "retVal":I
    :goto_0
    return v5

    .line 3308
    .end local v5    # "retVal":I
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v4    # "retVal":I
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 3309
    .local v0, "activateState":I
    sget v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v0, v11, :cond_1

    move v5, v4

    .line 3310
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto :goto_0

    .line 3312
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isNetworkConnected()Z

    move-result v11

    if-nez v11, :cond_2

    .line 3313
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "startVpnConnectionForProfile : Network not connected"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 3314
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto :goto_0

    .line 3317
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":I
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageCount()I

    move-result v6

    .line 3319
    .local v6, "size":I
    if-gtz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 3320
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "startVpnConnectionForProfile : No packages in profile. ContainerVpnState = -1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 3321
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto :goto_0

    .line 3324
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v10

    .line 3325
    .local v10, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile: profileName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " vpnInterface = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    if-eqz v10, :cond_8

    .line 3328
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v7

    .line 3329
    .local v7, "state":I
    const/4 v11, 0x4

    if-eq v7, v11, :cond_4

    const/4 v11, 0x2

    if-eq v7, v11, :cond_4

    const/4 v11, 0x3

    if-ne v7, v11, :cond_5

    .line 3330
    :cond_4
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile: getState  profileName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": state = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "startVpnConnectionForProfile: Returning as profile is already connecting/ed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 3332
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto/16 :goto_0

    .line 3335
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":I
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addMangleExceptions(Ljava/lang/String;)V

    .line 3336
    invoke-interface {v10, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->startConnection(Ljava/lang/String;)I

    move-result v4

    .line 3337
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile: start result : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    if-eqz v4, :cond_8

    .line 3341
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_7

    .line 3342
    new-instance v9, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v11, 0x3e8

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v12

    const-string v13, "Knox_Framework"

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 3344
    .local v9, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    invoke-virtual {p0, v9, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getErrorString(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v3

    .line 3345
    .local v3, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/4 v8, 0x0

    .line 3346
    .local v8, "value":Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v11

    if-nez v11, :cond_6

    .line 3347
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "value":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 3348
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 3349
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile: error = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :cond_6
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "startVpnConnectionForProfile : Cannot start vpn, returned error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    .end local v3    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeMangleExceptions(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .line 3354
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto/16 :goto_0

    .line 3358
    .end local v0    # "activateState":I
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v5    # "retVal":I
    .end local v6    # "size":I
    .end local v7    # "state":I
    .end local v10    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .restart local v4    # "retVal":I
    :catch_0
    move-exception v1

    .line 3359
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile : Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    move v5, v4

    .line 3361
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto/16 :goto_0
.end method

.method private startVpnConnectionForProfile(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "retry"    # Z

    .prologue
    .line 3286
    const/4 v0, -0x1

    .line 3288
    .local v0, "result":I
    if-eqz p2, :cond_1

    .line 3289
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    move-result v0

    .line 3290
    if-eqz v0, :cond_0

    .line 3291
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->restartVPN(Ljava/lang/String;)V

    .line 3298
    :cond_0
    :goto_0
    return v0

    .line 3295
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2010
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startVpnForPackage : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    const/4 v5, 0x0

    .line 2015
    .local v5, "retval":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2016
    :cond_0
    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : Param null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2068
    :goto_0
    monitor-exit p0

    return v7

    .line 2020
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v4

    .line 2021
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v4, :cond_2

    .line 2022
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : Profile entry is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    goto :goto_0

    .line 2025
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 2026
    .local v0, "activateState":I
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v0, v7, :cond_3

    .line 2027
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : Profile not activated.. Returning"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    .line 2028
    goto :goto_0

    .line 2030
    :cond_3
    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    move-result-object v3

    .line 2032
    .local v3, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    if-nez v3, :cond_4

    .line 2033
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : Vpn Package Info entry is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    goto :goto_0

    .line 2037
    :cond_4
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add package to profile : VpnPackageInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v6

    .line 2041
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2042
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addMangleExceptions(Ljava/lang/String;)V

    .line 2044
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 2061
    :pswitch_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : VPN State not valid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "activateState":I
    .end local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v6    # "uid":I
    :cond_6
    :goto_1
    move v7, v5

    .line 2068
    goto :goto_0

    .line 2046
    .restart local v0    # "activateState":I
    .restart local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v6    # "uid":I
    :pswitch_1
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 2047
    .local v2, "interfaceValue":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startVpnForPackage : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "interfaceValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :cond_7
    if-eqz v2, :cond_6

    .line 2049
    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2050
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2051
    invoke-direct {p0, p1, v6, v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2064
    .end local v0    # "activateState":I
    .end local v2    # "interfaceValue":Ljava/lang/String;
    .end local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v6    # "uid":I
    :catch_0
    move-exception v1

    .line 2065
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_8
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startVpnForPackage : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2010
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "retval":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2057
    .restart local v0    # "activateState":I
    .restart local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v5    # "retval":I
    .restart local v6    # "uid":I
    :pswitch_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    move-result v5

    .line 2058
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startVpnForPackage : start connection called. profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 2044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopUid(I)I
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    .line 3215
    const/4 v1, -0x1

    .line 3216
    .local v1, "firstUid":I
    const/4 v2, -0x1

    .line 3218
    .local v2, "lastUid":I
    const v3, 0x186a0

    mul-int v1, p1, v3

    .line 3219
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :cond_0
    const v3, 0x1869f

    add-int v2, v1, v3

    .line 3221
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The last uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3225
    :cond_1
    :goto_0
    return v2

    .line 3222
    :catch_0
    move-exception v0

    .line 3223
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUidOfPersona Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopVpnConnectionAfterAdminRemoval(I)V
    .locals 17
    .param p1, "uid"    # I

    .prologue
    .line 2473
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "stopVpnConnectionAfterAdminRemoval :  beginning"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    const/4 v7, 0x0

    .line 2475
    .local v7, "profileName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 2477
    .local v1, "adminUid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v11, "VpnProfileInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "profileName"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "adminUid"

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2479
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  got cvList from DB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    if-eqz v3, :cond_1

    .line 2481
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2482
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v10, "profileName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2483
    const-string v10, "adminUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2484
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  checking profile : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    move/from16 v0, p1

    if-ne v1, v0, :cond_0

    .line 2486
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :   admin matched: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  removing hashmap and db: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z

    .line 2489
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v9

    .line 2490
    .local v9, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  vpnInterface: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    if-eqz v9, :cond_0

    .line 2492
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 2493
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeMangleExceptions(Ljava/lang/String;)V

    .line 2494
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "stopVpnConnectionAfterAdminRemoval :  Calling remove Connection: "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    invoke-interface {v9, v7}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v8

    .line 2496
    .local v8, "removeStatus":I
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval : remove Connection. Status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2501
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v8    # "removeStatus":I
    .end local v9    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v4

    .line 2502
    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stop vpn connection after admin remove : Failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private syncVpnProfile(Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;Ljava/lang/String;)V
    .locals 7
    .param p1, "vpnInterface"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3909
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "Start syncProfile between VPNDB and Vendor\'s"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    const/4 v2, 0x0

    .line 3911
    .local v2, "profileNameinVendor":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3913
    .local v1, "jsonProfile":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3914
    if-eqz v1, :cond_0

    .line 3915
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3916
    invoke-interface {p1, v2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v3

    .line 3917
    .local v3, "removeStatus":I
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile in VendorDB is removed successfullyStatus of remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3923
    .end local v3    # "removeStatus":I
    :cond_0
    :goto_0
    return-void

    .line 3920
    :catch_0
    move-exception v0

    .line 3921
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync the profile : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unsetDnsSystemProperty(Ljava/lang/String;II)V
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidStart"    # I
    .param p3, "uidEnd"    # I

    .prologue
    .line 3414
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsetDnsSystemProperty is reached : whose profileName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "whose start uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " whose stop uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3417
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v1

    .line 3418
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3419
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unsetDnsSystemProperty: interface name is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3421
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p2, p3}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    .line 3422
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3428
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v2    # "token":J
    :cond_0
    :goto_0
    return-void

    .line 3424
    :catch_0
    move-exception v0

    .line 3425
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsetDnsSystemProperty : Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized updateNotification(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "domain"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 3893
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotification profileName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 3899
    const/4 v1, 0x0

    .line 3900
    .local v1, "mConnectivityService":Landroid/net/IConnectivityManager;
    :try_start_1
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 3901
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->updateEnterpriseVpn(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3906
    .end local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 3902
    .restart local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    :catch_0
    move-exception v0

    .line 3903
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotification : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3893
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updatePackageData(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 2441
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2443
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inside updatePackageData : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "profileName"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "packageUid"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2452
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 2453
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "update to package : Cursor not null and data present, so update packageData UID in DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2455
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "packageUid"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2456
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "packageName"

    aput-object v7, v0, v6

    .line 2459
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 2462
    .local v4, "values":[Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : update to package before DB insert:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    invoke-virtual {v6, v7, v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 2469
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 2465
    :catch_0
    move-exception v3

    .line 2466
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2441
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "responseData"    # Landroid/app/enterprise/EnterpriseResponseData;

    .prologue
    const/4 v8, 0x1

    .line 3532
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 3533
    .local v0, "adminId":I
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 3534
    .local v3, "vendorName":Ljava/lang/String;
    iget v1, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 3535
    .local v1, "personaId":I
    invoke-static {v3, v1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 3536
    .local v4, "vendorNameWithCid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3537
    .local v2, "returnValue":I
    if-eqz p2, :cond_0

    if-eqz v3, :cond_0

    if-nez p3, :cond_2

    .line 3538
    :cond_0
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin check null for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :admin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    const/4 v2, -0x1

    .line 3540
    if-eqz p3, :cond_1

    .line 3541
    const/4 v5, 0x7

    invoke-virtual {p3, v8, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 3554
    :cond_1
    :goto_0
    return v2

    .line 3542
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v5, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->checkAdminForProfile(ILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 3543
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin check failed for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :admin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    const/4 v2, 0x1

    .line 3545
    const/16 v5, 0x8

    invoke-virtual {p3, v8, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method private validatePackageList(ILjava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .param p1, "personaId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "packageList"    # [Ljava/lang/String;

    .prologue
    .line 1068
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v8, v1, v4

    .line 1073
    .local v8, "regularPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p1

    invoke-virtual {v11, v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;I)Z

    move-result v2

    .line 1074
    .local v2, "checkIfApplicationHasSystemUID":Z
    if-eqz v2, :cond_0

    .line 1075
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "Package has system uid"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v11, -0x1

    .line 1105
    .end local v2    # "checkIfApplicationHasSystemUID":Z
    .end local v8    # "regularPackageName":Ljava/lang/String;
    :goto_1
    return v11

    .line 1079
    .restart local v2    # "checkIfApplicationHasSystemUID":Z
    .restart local v8    # "regularPackageName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1081
    .local v9, "transformedPackageName":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPackageToVpn : transformed packageName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 1083
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1084
    .local v7, "profileForPackage":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1087
    .local v10, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v9, :cond_1

    if-eqz v7, :cond_2

    .line 1088
    :cond_1
    const/4 v11, -0x1

    goto :goto_1

    .line 1092
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v12, "VpnPackageInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "packageName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "profileName"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1100
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 1101
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "Package already exists in DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/4 v11, -0x1

    goto :goto_1

    .line 1068
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1105
    .end local v2    # "checkIfApplicationHasSystemUID":Z
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileForPackage":Ljava/lang/String;
    .end local v8    # "regularPackageName":Ljava/lang/String;
    .end local v9    # "transformedPackageName":Ljava/lang/String;
    .end local v10    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4
    sget v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    goto :goto_1
.end method

.method private validateProfilesForVendor(Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V
    .locals 11
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;
    .param p2, "vpnInterface"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    .prologue
    .line 3183
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor - vendorNameWithCid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vpnInterface = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v7, "VpnProfileInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "vendorName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3187
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    .line 3188
    .local v5, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 3189
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 3190
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "profileName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3191
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor : profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_2
    invoke-interface {p2, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3193
    .local v4, "jsonProfile":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 3194
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3198
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsonProfile":Ljava/lang/String;
    .end local v5    # "profileName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3199
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor : Failure at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private declared-synchronized writePackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1109
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1110
    .local v2, "adminId":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1111
    .local v3, "containerId":I
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :packageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :containerId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    :cond_0
    const/4 v8, -0x1

    .line 1113
    .local v8, "retvalue":I
    const/4 v7, 0x0

    .line 1116
    .local v7, "resultValidatedPacakgeName":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v12

    .line 1117
    .local v12, "transformedUid":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1119
    .local v11, "transformedPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 1120
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_1

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : Transformed UID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_1
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : Transformed packagename before adding to db : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1131
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v13, "packageName"

    invoke-virtual {v4, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v13, "profileName"

    move-object/from16 v0, p3

    invoke-virtual {v4, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const-string v13, "packageUid"

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    const-string v13, "packageCid"

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v14, "VpnPackageInfo"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v10

    .line 1138
    .local v10, "status":Z
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    if-nez v10, :cond_3

    move v9, v8

    .line 1155
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v8    # "retvalue":I
    .end local v10    # "status":Z
    .end local v11    # "transformedPackageName":Ljava/lang/String;
    .end local v12    # "transformedUid":I
    .local v9, "retvalue":I
    :goto_0
    monitor-exit p0

    return v9

    .line 1143
    .end local v9    # "retvalue":I
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v8    # "retvalue":I
    .restart local v10    # "status":Z
    .restart local v11    # "transformedPackageName":Ljava/lang/String;
    .restart local v12    # "transformedUid":I
    :cond_3
    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 1145
    :try_start_2
    invoke-virtual {v6, v11, v12, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    .line 1147
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_4
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1154
    :cond_5
    :try_start_3
    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    move v9, v8

    .line 1155
    .end local v8    # "retvalue":I
    .restart local v9    # "retvalue":I
    goto :goto_0

    .line 1150
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v9    # "retvalue":I
    .end local v10    # "status":Z
    .end local v11    # "transformedPackageName":Ljava/lang/String;
    .end local v12    # "transformedUid":I
    .restart local v8    # "retvalue":I
    :catch_0
    move-exception v5

    .line 1151
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : Exception occured for adding vpn, package map."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v9, v8

    .line 1152
    .end local v8    # "retvalue":I
    .restart local v9    # "retvalue":I
    goto :goto_0

    .line 1109
    .end local v2    # "adminId":I
    .end local v3    # "containerId":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "resultValidatedPacakgeName":I
    .end local v9    # "retvalue":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method


# virtual methods
.method public declared-synchronized activateVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 22
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 569
    .local v3, "adminId":I
    const/4 v8, -0x1

    .line 571
    .local v8, "iResult":I
    const/4 v7, -0x1

    .line 572
    .local v7, "iNewActivateState":I
    const/16 v16, -0x1

    .line 573
    .local v16, "sVpnTransition":I
    const/4 v15, -0x1

    .line 574
    .local v15, "routeType":I
    const/4 v14, 0x0

    .line 575
    .local v14, "result":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 576
    .local v18, "vendorName":Ljava/lang/String;
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile API called: profileName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v13, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v13}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 578
    .local v13, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 579
    const/16 v19, 0x1

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    if-eqz v18, :cond_0

    if-nez p2, :cond_1

    .line 720
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v13

    .line 586
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v19

    if-nez v19, :cond_0

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v12

    .line 591
    .local v12, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v12, :cond_0

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getRoutType(Ljava/lang/String;)I

    move-result v15

    .line 596
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_2

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : getRoutType(profileName) "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_2
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    .line 598
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : System VPN can\'t be activated"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 715
    .end local v12    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_0
    move-exception v5

    .line 716
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception when activating profile : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 568
    .end local v3    # "adminId":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "iNewActivateState":I
    .end local v8    # "iResult":I
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v14    # "result":Z
    .end local v15    # "routeType":I
    .end local v16    # "sVpnTransition":I
    .end local v18    # "vendorName":Ljava/lang/String;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 604
    .restart local v3    # "adminId":I
    .restart local v7    # "iNewActivateState":I
    .restart local v8    # "iResult":I
    .restart local v12    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v14    # "result":Z
    .restart local v15    # "routeType":I
    .restart local v16    # "sVpnTransition":I
    .restart local v18    # "vendorName":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_6

    :try_start_3
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    .line 605
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v16

    .line 607
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_4

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : Start  "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_4
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    move/from16 v0, v19

    if-ne v7, v0, :cond_c

    .line 614
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_5

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : Activate  "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setActivate(Ljava/lang/String;I)Z

    move-result v14

    .line 617
    if-nez v14, :cond_7

    .line 618
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : Activate result : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 604
    :cond_6
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    goto :goto_1

    .line 623
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v16

    .line 626
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 627
    .local v10, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 628
    .local v11, "packageName":Ljava/lang/String;
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_9

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : Calling start for packageName =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 631
    if-eqz v8, :cond_8

    .line 632
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : Failed to start a vpn  "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 639
    .end local v10    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_a
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    .line 644
    :cond_b
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 645
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 650
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_c
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    move/from16 v0, v19

    if-ne v7, v0, :cond_0

    .line 653
    const/4 v9, 0x0

    .line 654
    .local v9, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v17, -0x1

    .line 658
    .local v17, "stopStatus":I
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_d

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : DeActivate "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setActivate(Ljava/lang/String;I)Z

    move-result v14

    .line 660
    if-nez v14, :cond_e

    .line 661
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : Deactivate result : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 666
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v16

    .line 669
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v19

    if-ne v15, v0, :cond_15

    const/16 v19, 0x66

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    const/16 v19, 0x68

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    const/16 v19, 0x67

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    :cond_f
    const/4 v4, 0x1

    .line 672
    .local v4, "checkForPerApp":Z
    :goto_2
    if-eqz v4, :cond_16

    .line 674
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v9

    .line 675
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 676
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_10

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : STOP status  =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_10
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 683
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v9

    .line 684
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 686
    :cond_11
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_12

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : profile : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " may be in lockup / stop result : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_12
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 701
    :cond_13
    :goto_3
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_14

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : stop profile =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromIpTables(Ljava/lang/String;)V

    .line 707
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 708
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 669
    .end local v4    # "checkForPerApp":Z
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 696
    .restart local v4    # "checkForPerApp":Z
    :cond_16
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v9

    .line 697
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 698
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_13

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : STOP\'2\' status  =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public addAllContainerPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1724
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add all contaienr  packages to vpn : vpnContext.personaId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / containerId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1728
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1729
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 1730
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add all contaienr  packages to vpn : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1732
    invoke-virtual {v0, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1769
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    return-object v0

    .line 1738
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1739
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_2

    .line 1740
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add all contaienr  packages to vpn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1742
    const/16 v3, 0x9

    invoke-virtual {v0, v7, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1745
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1746
    if-eqz v1, :cond_3

    .line 1747
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_3

    .line 1748
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add all contaienr  packages to vpn : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1750
    invoke-virtual {v0, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1768
    :cond_3
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1769
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 20
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1375
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1376
    .local v4, "adminId":I
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    new-instance v9, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v9}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1379
    .local v9, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1380
    const/16 v17, 0x1

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    :try_start_1
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : profileName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v11

    .line 1386
    .local v11, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v11, :cond_1

    .line 1387
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : Error : profileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1464
    .end local v11    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1392
    .restart local v11    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v17

    if-eqz v17, :cond_2

    .line 1393
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : Vendor or admin validation failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1461
    .end local v11    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_0
    move-exception v8

    .line 1462
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1375
    .end local v4    # "adminId":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 1398
    .restart local v4    # "adminId":I
    .restart local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v11    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v13

    .line 1399
    .local v13, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 1400
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : Error : Trying to add per-app packages to a system/user profile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1405
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageExists(I)Z

    move-result v12

    .line 1406
    .local v12, "packageAlreadyExists":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isRangeExists(I)Z

    move-result v14

    .line 1409
    .local v14, "rangeAlreadyExists":Z
    if-nez v12, :cond_4

    if-eqz v14, :cond_5

    .line 1410
    :cond_4
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : VPN already exists for this persona or a package in persona. persona = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1414
    :cond_5
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_6

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : profileInfo = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_6
    move-object/from16 v0, p1

    iget v6, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1417
    .local v6, "containerVpnState":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1418
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v17, "containerVpnState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1419
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "profileName"

    aput-object v18, v5, v17

    .line 1422
    .local v5, "columns":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p2, v16, v17

    .line 1425
    .local v16, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "VpnProfileInfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v5, v2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v15

    .line 1427
    .local v15, "status":Z
    if-eqz v15, :cond_0

    .line 1430
    if-eqz v11, :cond_7

    .line 1431
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : setting container vpn state to 1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-virtual {v11, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setContainerVpnState(I)V

    .line 1435
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 1437
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1438
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 1453
    :pswitch_0
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : VPN State not valid"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_8
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V

    .line 1459
    sget v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1460
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1440
    :pswitch_1
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .line 1441
    .local v10, "interfaceValue":Ljava/lang/String;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : profileName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "interfaceValue = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    if-eqz v10, :cond_8

    .line 1443
    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    goto :goto_1

    .line 1449
    .end local v10    # "interfaceValue":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    .line 1450
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : start connection called. profileName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addAllPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 3
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1775
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add all packages to vpn : vpnContext.personaId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized addContainerPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1540
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1541
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1543
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 1544
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add container packages to vpn : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1546
    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1552
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1553
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_1

    .line 1554
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add container packages to vpn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1556
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1540
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v1    # "isPersona":Z
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1559
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v1    # "isPersona":Z
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1560
    if-eqz v1, :cond_2

    .line 1561
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_2

    .line 1562
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add container packages to vpn : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1564
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1580
    :cond_2
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1581
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v7, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 986
    .local v7, "adminId":I
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v18, :cond_0

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add packages : profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : personaId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    const/4 v4, 0x0

    .local v4, "ALL_PACKAGES_ADDED":I
    const/4 v6, 0x1

    .local v6, "PARTIAL_PACKAGES_ADDED":I
    const/4 v5, 0x2

    .line 988
    .local v5, "NO_PACKAGES_ADDED":I
    new-instance v15, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v15}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 989
    .local v15, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 990
    const/16 v18, 0x1

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v14

    .line 995
    .local v14, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/16 v17, 0x0

    .line 998
    .local v17, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_1

    if-nez v14, :cond_3

    .line 999
    :cond_1
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    .end local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v15

    .line 1004
    .restart local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v18

    if-eqz v18, :cond_4

    .line 1005
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : Vendor or admin validation failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1055
    .end local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v9

    .line 1056
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    sget v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1058
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 985
    .end local v4    # "ALL_PACKAGES_ADDED":I
    .end local v5    # "NO_PACKAGES_ADDED":I
    .end local v6    # "PARTIAL_PACKAGES_ADDED":I
    .end local v7    # "adminId":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1010
    .restart local v4    # "ALL_PACKAGES_ADDED":I
    .restart local v5    # "NO_PACKAGES_ADDED":I
    .restart local v6    # "PARTIAL_PACKAGES_ADDED":I
    .restart local v7    # "adminId":I
    .restart local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isRangeExists(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1011
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : Error : Trying to add per-app packages for a user, for which container vpn already exists"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v17

    .line 1016
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add packages : profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "vpnInterface = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    if-eqz v17, :cond_6

    .line 1018
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1019
    .local v11, "jsonProfile":Ljava/lang/String;
    if-nez v11, :cond_7

    .line 1020
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1025
    .end local v11    # "jsonProfile":Ljava/lang/String;
    :cond_6
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : vpnInterface null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1030
    .restart local v11    # "jsonProfile":Ljava/lang/String;
    :cond_7
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I

    move-result v18

    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1031
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : This api can\'t be used with System VPN"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1034
    :cond_8
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 1038
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validatePackageList(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_9

    .line 1039
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : some package is already used in other profile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1043
    :cond_9
    move-object/from16 v8, p2

    .local v8, "arr$":[Ljava/lang/String;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_b

    aget-object v13, v8, v10

    .line 1044
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->writePackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1045
    .local v16, "tempResponseData":I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1046
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1047
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : fail to update the DB"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1043
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1052
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "tempResponseData":I
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1061
    :try_start_5
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages / success : Returning 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1063
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized addPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 1
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1585
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bindKnoxVpnInterface(Ljava/lang/String;)Z
    .locals 11
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 195
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bind to Vpn Vendor Service : vendorName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 198
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "Sending bind success intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendBindSuccessIntent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    monitor-exit p0

    return v0

    .line 202
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "vendorName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "containerId":I
    const-string v7, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 206
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 207
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->blockProxyService(Ljava/lang/String;I)Z

    .line 211
    :cond_1
    const/4 v0, 0x0

    .line 212
    .local v0, "bindSuccess":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".BIND_SERVICE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "vendorAction":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bind to Vpn Vendor Service : vendorAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " container ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;

    invoke-direct {v6, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    .line 215
    .local v6, "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 217
    .local v2, "token":J
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 219
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bind to Vpn Vendor Service : bindSuccess = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 195
    .end local v0    # "bindSuccess":Z
    .end local v1    # "containerId":I
    .end local v2    # "token":J
    .end local v4    # "vendorAction":Ljava/lang/String;
    .end local v5    # "vendorName":Ljava/lang/String;
    .end local v6    # "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 219
    .restart local v0    # "bindSuccess":Z
    .restart local v1    # "containerId":I
    .restart local v2    # "token":J
    .restart local v4    # "vendorAction":Ljava/lang/String;
    .restart local v5    # "vendorName":Ljava/lang/String;
    .restart local v6    # "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized createVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 24
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 337
    .local v3, "adminId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 338
    .local v16, "vendorName":Ljava/lang/String;
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile API called : vendorName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : personaId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_1

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : adminId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1
    new-instance v13, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v13}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 341
    .local v13, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 342
    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    if-nez p2, :cond_2

    .line 417
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit p0

    return-object v13

    .line 347
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, "profileName":Ljava/lang/String;
    if-nez v10, :cond_4

    .line 349
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_3

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "setting vpn connection : Error / cann\'t find a profile"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 336
    .end local v3    # "adminId":I
    .end local v10    # "profileName":Ljava/lang/String;
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v16    # "vendorName":Ljava/lang/String;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 352
    .restart local v3    # "adminId":I
    .restart local v10    # "profileName":Ljava/lang/String;
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v16    # "vendorName":Ljava/lang/String;
    :cond_4
    :try_start_3
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : profileName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v19, "\\s"

    invoke-static/range {v19 .. v19}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 355
    .local v8, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 356
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 357
    .local v5, "found":Z
    if-eqz v5, :cond_5

    .line 358
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : Profile name contains illegal characters"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 361
    :cond_5
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    .line 362
    .local v6, "len":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v6, v0, :cond_6

    const/16 v19, 0x80

    move/from16 v0, v19

    if-le v6, v0, :cond_7

    .line 363
    :cond_6
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : Profile name exceeds length : 128"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 415
    :try_start_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 366
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v9

    .line 367
    .local v9, "profileExists":Z
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : profileExists = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 368
    if-eqz v9, :cond_8

    .line 415
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    goto/16 :goto_0

    .line 371
    :cond_8
    if-nez v16, :cond_9

    .line 415
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 374
    :cond_9
    :try_start_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 375
    .local v17, "vendorNameWithCid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v18

    .line 376
    .local v18, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : vpnInterface = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 377
    if-nez v18, :cond_a

    .line 415
    :try_start_a
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 381
    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->syncVpnProfile(Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->createConnection(Ljava/lang/String;)I

    move-result v15

    .line 383
    .local v15, "success":I
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : success = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz v15, :cond_b

    .line 385
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 386
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 415
    :try_start_c
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 389
    :cond_b
    const/4 v14, 0x0

    .line 391
    .local v14, "retValue":Z
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addVpnProfileToDatabase(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z

    move-result v14

    .line 392
    if-nez v14, :cond_c

    .line 393
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : DB failure"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v12

    .line 395
    .local v12, "removeStatus":I
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : remove Connection. Status = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 415
    :try_start_e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 399
    .end local v12    # "removeStatus":I
    :cond_c
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addVpnProfileToMap(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z

    move-result v14

    .line 400
    if-nez v14, :cond_d

    .line 401
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : Add to HashMap failure"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v12

    .line 403
    .restart local v12    # "removeStatus":I
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : remove Connection. Status = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "VpnProfileInfo"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "profileName"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v11

    .line 415
    .local v11, "removeProfileStatus":Z
    :try_start_10
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 408
    .end local v11    # "removeProfileStatus":Z
    .end local v12    # "removeStatus":I
    :cond_d
    :try_start_11
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 409
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 410
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setting vpn connection : return value is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 415
    :try_start_12
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 411
    .end local v5    # "found":Z
    .end local v6    # "len":I
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    .end local v9    # "profileExists":Z
    .end local v10    # "profileName":Ljava/lang/String;
    .end local v14    # "retValue":Z
    .end local v15    # "success":I
    .end local v17    # "vendorNameWithCid":Ljava/lang/String;
    .end local v18    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v4

    .line 412
    .local v4, "e":Ljava/lang/Exception;
    :try_start_13
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setting vpn connection : Error at\n "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 413
    const/4 v13, 0x0

    .line 415
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :try_start_14
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    goto/16 :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v19

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    throw v19
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
.end method

.method public getActiveProfilesForVendor(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "vendorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1984
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1986
    .local v1, "activatedProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 1988
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 1989
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v7

    .line 1990
    .local v7, "vendorPkgName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 1991
    .local v0, "activateState":I
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v5

    .line 1993
    .local v5, "persona_id":I
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    if-ne v0, v8, :cond_0

    .line 1995
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfVpnProfileTableIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1996
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v6

    .line 1997
    .local v6, "profileName":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***** VIGNESH profileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2003
    .end local v0    # "activateState":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v5    # "persona_id":I
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "vendorPkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2004
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v1
.end method

.method public getAllContainerPackagesInVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x9

    const/4 v7, 0x1

    .line 1638
    const/4 v0, -0x1

    .line 1639
    .local v0, "cid":I
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1642
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v2

    .line 1643
    .local v2, "isPersona":Z
    if-nez v2, :cond_0

    .line 1644
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "get all container packages in vpn : The container id entered is an invalid id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    invoke-virtual {v1, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1646
    invoke-virtual {v1, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1690
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 1652
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v3

    .line 1653
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v3, :cond_1

    .line 1654
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get all container packages in vpn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-virtual {v1, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1656
    invoke-virtual {v1, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1659
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v2

    .line 1660
    if-eqz v2, :cond_2

    .line 1661
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    if-eq v4, p2, :cond_2

    .line 1662
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "get all container packages in vpn : plz check a containerId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual {v1, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1664
    invoke-virtual {v1, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1681
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 1683
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-ne v0, p2, :cond_3

    .line 1684
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1685
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_0

    .line 1689
    :cond_3
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1690
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_0
.end method

.method public getAllPackagesInVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1698
    const/4 v0, -0x1

    .line 1699
    .local v0, "cid":I
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1700
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1703
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v2, :cond_0

    .line 1704
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 1713
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    if-ne v0, v3, :cond_1

    .line 1714
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    .line 1718
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 1706
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1708
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1718
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized getAllVpnProfiles(Lcom/sec/enterprise/knox/KnoxVpnContext;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 18
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 725
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 726
    .local v1, "adminId":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 727
    .local v12, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 728
    .local v4, "personaId":I
    invoke-static {v12, v4}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 729
    .local v13, "vendorNameWithCid":Ljava/lang/String;
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles API called : vendorNameWithCid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v8, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v8}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 731
    .local v8, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 732
    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    const/4 v11, 0x0

    .line 734
    .local v11, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 737
    .local v9, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v14

    .line 738
    .local v14, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v14, :cond_4

    .line 739
    invoke-interface {v14}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getAllConnections()Ljava/util/List;

    move-result-object v11

    .line 740
    if-eqz v11, :cond_4

    .line 742
    if-nez v9, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 743
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v10

    .line 746
    .end local v10    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 747
    .local v5, "profile":Ljava/lang/String;
    sget-boolean v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v15, :cond_2

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "The Json retrieved is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 749
    .local v7, "profileName":Ljava/lang/String;
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles - profileName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v15, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 751
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getAdminId()I

    move-result v15

    if-eq v1, v15, :cond_3

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    :cond_3
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v15

    if-ne v4, v15, :cond_1

    .line 754
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 761
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "profile":Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v2

    .line 762
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getting all vpn connection : Failure at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 763
    const/4 v8, 0x0

    .line 765
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1
    monitor-exit p0

    return-object v8

    .line 759
    .restart local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4
    :try_start_3
    invoke-virtual {v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 760
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 725
    .end local v1    # "adminId":I
    .end local v4    # "personaId":I
    .end local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "vendorName":Ljava/lang/String;
    .end local v13    # "vendorNameWithCid":Ljava/lang/String;
    .end local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15
.end method

.method public getCACertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 850
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 851
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 852
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 853
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 855
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 870
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_0
    return-object v2

    .line 858
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 859
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 860
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "getting CACertificate : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 861
    goto :goto_0

    .line 863
    :cond_1
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getCACertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 864
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 867
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting CACertificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 868
    goto :goto_0
.end method

.method public getChainingEnabledForProfile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1942
    const/4 v1, 0x0

    .line 1944
    .local v1, "chainingEnabled":I
    if-eqz p2, :cond_1

    .line 1945
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v5

    .line 1946
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getChainingEnabled()I

    move-result v1

    .line 1963
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_0
    :goto_0
    return v1

    .line 1947
    :cond_1
    if-eqz p1, :cond_0

    .line 1949
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 1950
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    .line 1951
    .local v6, "vendorPkgName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 1953
    .local v0, "activateState":I
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    if-ne v0, v7, :cond_2

    .line 1955
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getChainingEnabled()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1956
    goto :goto_0

    .line 1960
    .end local v0    # "activateState":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v6    # "vendorPkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1961
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3849
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getErrorString(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 964
    .local v0, "adminId":I
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getErrorString API called for profileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 967
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 981
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 970
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 971
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 972
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "getting vpn error string : Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 977
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 978
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getting vpn error string : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v2, 0x0

    goto :goto_0

    .line 975
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_1
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getErrorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 976
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getKnoxVpnProfileType(Ljava/lang/String;)I
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1968
    const/4 v2, -0x1

    .line 1970
    .local v2, "profileType":I
    if-eqz p1, :cond_0

    .line 1971
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v1

    .line 1972
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v1, :cond_0

    .line 1973
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1979
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_0
    :goto_0
    return v2

    .line 1976
    :catch_0
    move-exception v0

    .line 1977
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3853
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3854
    .local v4, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3855
    .local v3, "key":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3856
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 3857
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3858
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3856
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3864
    .end local v0    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public getState(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 926
    .local v0, "adminId":I
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getState API called for profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 928
    .local v3, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 929
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 931
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-object v3

    .line 934
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 935
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v2, :cond_0

    .line 938
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v6

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v6, v7, :cond_2

    .line 939
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "Profile in deactivate state : Returning 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 941
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 955
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_0
    move-exception v1

    .line 956
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting vpn state : Failure at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 945
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v5

    .line 946
    .local v5, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v5, :cond_3

    .line 947
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting vpn state : Interface null for profile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 950
    :cond_3
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "getState : Calling getState on vendor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 952
    .local v4, "state":Ljava/lang/Integer;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getState : getState returnValue. profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 954
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getUserCertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 800
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 801
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 802
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 803
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 819
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_0
    monitor-exit p0

    return-object v2

    .line 808
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 809
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 810
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "getting user certificate : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 815
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 816
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting user certificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    .line 817
    goto :goto_0

    .line 813
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_4
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getUserCertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 814
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 800
    .end local v0    # "adminId":I
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getVpnModeOfOperation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1853
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1854
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1855
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1856
    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1858
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1859
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v4, :cond_0

    .line 1860
    invoke-interface {v4, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getVpnModeOfOperation(Ljava/lang/String;)I

    move-result v3

    .line 1861
    .local v3, "ret":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVpnModeOfOperation : profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1863
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1869
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v3    # "ret":I
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1865
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 1866
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting vpn mode : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1867
    const/4 v2, 0x0

    goto :goto_0

    .line 1853
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 422
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 423
    .local v0, "adminId":I
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVpnProfile API called : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 425
    .local v4, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 426
    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :try_start_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 445
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    return-object v4

    .line 431
    .restart local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v5

    .line 432
    .local v5, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v5, :cond_1

    .line 433
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "getting vpn connection : Mocana Service is not started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 441
    .end local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getting vpn connection : Failure at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v6

    .line 443
    goto :goto_0

    .line 436
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_4
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "jsonProfile":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "profil":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profileName got from json = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 440
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 422
    .end local v0    # "adminId":I
    .end local v2    # "jsonProfile":Ljava/lang/String;
    .end local v3    # "profil":Ljava/lang/String;
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    .end local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method handleActionPackageRemoved(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3050
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "handleActionPackageRemoved"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    const-string/jumbo v11, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 3052
    .local v10, "uid":I
    const-string v11, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3053
    .local v7, "originalPackageName":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3054
    .local v1, "cid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3056
    .local v8, "packageName":Ljava/lang/String;
    const-string v11, "new_install_or_update"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 3057
    .local v5, "extraReplacing":Z
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : packageName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : replacing = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->hasVpnInterface(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3060
    if-eqz v5, :cond_1

    .line 3061
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "Package is being reinstalled. Skip remove profile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :cond_0
    :goto_0
    return-void

    .line 3064
    :cond_1
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "handleActionPackageRemoved : packageName is Vpn Vendor"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :try_start_0
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "handleActionPackageRemoved : Getting profile list for vendor from DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v12, "VpnProfileInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "vendorName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3069
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .line 3070
    .local v9, "profileName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 3071
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3072
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "profileName"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3073
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : Remvoing profile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3077
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "profileName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 3078
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : Failure at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3082
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 3083
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1. handleActionPackageRemoved : cisco_proxy_application value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleAnyConnectUninstall(Ljava/lang/String;I)Z

    .line 3089
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v11, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3090
    .restart local v9    # "profileName":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 3092
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->deleteUIDFromPackageData(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3093
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "vpn handle : package remove>> Remove from iptable/hashmap"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    .line 3098
    :cond_4
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 3099
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "2. handleActionPackageRemoved : cisco_proxy_application value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3101
    if-nez v5, :cond_0

    .line 3102
    const-string v11, "com.cisco.anyconnect.vpn.android.avf"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 3103
    const-string v11, "com.cisco.anyconnect.vpn.android.avf"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleAnyConnectUninstall(Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method protected declared-synchronized initializeVpnDataAndVendors()V
    .locals 5

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "initializeVpnDataAndVendors"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z

    move-result v1

    .line 321
    .local v1, "state":Z
    if-eqz v1, :cond_1

    .line 322
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeVpnDataAndVendors : Have to wait until migration done : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setupIntentFilterForMigration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_0
    monitor-exit p0

    return-void

    .line 326
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "init vendor : Normal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v0, "map":Landroid/os/Bundle;
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    .end local v0    # "map":Landroid/os/Bundle;
    .end local v1    # "state":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isProxyOrAnyConnect(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "packageNameEntered"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3020
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isProxyOrAnyConnect : packageName value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "whose container id is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    :cond_0
    const/4 v3, 0x0

    .line 3023
    .local v3, "packageInstalled":Z
    :try_start_0
    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3024
    const/4 v3, 0x1

    move v4, v3

    .line 3046
    .end local v3    # "packageInstalled":Z
    .local v4, "packageInstalled":I
    :goto_0
    return v4

    .line 3027
    .end local v4    # "packageInstalled":I
    .restart local v3    # "packageInstalled":Z
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3028
    .local v1, "i":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3029
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 3030
    .local v6, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 3031
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 3032
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The packageNameEntered having the proxy cisco anyconnect intent is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "whose class name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    :cond_3
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3034
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    sput-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3035
    const/4 v3, 0x1

    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    move v4, v3

    .line 3039
    .restart local v4    # "packageInstalled":I
    goto :goto_0

    .line 3042
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInstalled":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 3043
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at isProxyOrAnyConnect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isProxyOrAnyConnect : packageInstalled value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v4, v3

    .line 3046
    .restart local v4    # "packageInstalled":I
    goto/16 :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 167
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "[onAdminAdded]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 172
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "[onAdminRemoved]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 181
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "[onPreAdminRemoval]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin has VPN Permission : Pre admin remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopVpnConnectionAfterAdminRemoval(I)V

    .line 184
    return-void
.end method

.method public removeAllContainerPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0xb

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1781
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1784
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1785
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1786
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 1787
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove all container packages : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1789
    invoke-virtual {v0, v7, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1824
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    return-object v0

    .line 1795
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1796
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_1

    .line 1797
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove all container packages : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1799
    const/16 v3, 0x9

    invoke-virtual {v0, v7, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1802
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1803
    if-eqz v1, :cond_2

    .line 1804
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_2

    .line 1805
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove all container packages : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1807
    invoke-virtual {v0, v7, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1824
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeAllPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized removeAllPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 17
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1470
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1471
    .local v3, "adminId":I
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "removeAllPackagesFromVpn : "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    new-instance v9, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v9}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1474
    .local v9, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1475
    const/4 v14, 0x1

    const/4 v15, 0x4

    invoke-virtual {v9, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    if-nez p2, :cond_1

    .line 1534
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1481
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v14

    if-eqz v14, :cond_2

    .line 1482
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "removePackagesFromVpn : validate failed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1531
    :catch_0
    move-exception v8

    .line 1532
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : Exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1470
    .end local v3    # "adminId":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 1486
    .restart local v3    # "adminId":I
    .restart local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v10

    .line 1487
    .local v10, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    .line 1488
    :cond_3
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : not container profile :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1491
    :cond_4
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : profileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v6, -0x1

    .line 1494
    .local v6, "containerVpnState":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1495
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v14, "containerVpnState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1496
    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "profileName"

    aput-object v15, v5, v14

    .line 1499
    .local v5, "columns":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    .line 1502
    .local v13, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v15, "VpnProfileInfo"

    invoke-virtual {v14, v15, v5, v13, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v12

    .line 1504
    .local v12, "status":Z
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : profileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "containerVpnState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    if-eqz v12, :cond_0

    .line 1509
    if-eqz v10, :cond_6

    .line 1510
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : profileInfo = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_5
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "removeAllPackagesFromVpn : Setting containerVpnState to 0"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-virtual {v10, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setContainerVpnState(I)V

    .line 1515
    :cond_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1516
    .local v4, "cid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v4, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 1517
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 1518
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v11

    .line 1519
    .local v11, "state":I
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : current state = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1521
    :try_start_4
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1526
    :goto_1
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1527
    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V

    .line 1529
    sget v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1530
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1522
    :catch_1
    move-exception v8

    .line 1523
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized removeContainerPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "enteredProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1590
    monitor-enter p0

    :try_start_0
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1593
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1594
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1595
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 1596
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove container packages to vpn : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1598
    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1604
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1605
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_1

    .line 1606
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove container packages to vpn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1608
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1590
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v1    # "isPersona":Z
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1611
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v1    # "isPersona":Z
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1612
    if-eqz v1, :cond_2

    .line 1613
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_2

    .line 1614
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove container packages to vpn : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1616
    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1632
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized removePackageFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "regularPackageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1231
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1232
    .local v0, "adminId":I
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    const/4 v2, -0x1

    .line 1237
    .local v2, "retvalue":I
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1239
    .local v5, "transformedPackageName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : transformed packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    if-nez v5, :cond_0

    .line 1241
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "remove to package : Error occured for removing vpn, package map."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    .line 1256
    .end local v2    # "retvalue":I
    .end local v5    # "transformedPackageName":Ljava/lang/String;
    .local v3, "retvalue":I
    :goto_0
    monitor-exit p0

    return v3

    .line 1244
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    .restart local v5    # "transformedPackageName":Ljava/lang/String;
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "profileName"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 1247
    .local v4, "success":Z
    if-nez v4, :cond_1

    .line 1248
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "remove to package : Error deleting from DB"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1249
    .end local v2    # "retvalue":I
    .restart local v3    # "retvalue":I
    goto :goto_0

    .line 1251
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    .line 1252
    sget v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "success":Z
    .end local v5    # "transformedPackageName":Ljava/lang/String;
    :goto_1
    move v3, v2

    .line 1256
    .end local v2    # "retvalue":I
    .restart local v3    # "retvalue":I
    goto :goto_0

    .line 1253
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    :catch_0
    move-exception v1

    .line 1254
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : Exception occured for removing vpn, package map:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1231
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "retvalue":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 26
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "enteredProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1159
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v7, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1161
    .local v7, "adminId":I
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "removePackagesFromVpn : personaId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    const/4 v4, 0x0

    .local v4, "ALL_PACKAGES_REMOVED":I
    const/4 v6, 0x1

    .local v6, "PARTIAL_PACKAGES_REMOVED":I
    const/4 v5, 0x2

    .line 1163
    .local v5, "NO_PACKAGES_REMOVED":I
    new-instance v16, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct/range {v16 .. v16}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1164
    .local v16, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1165
    const/16 v19, 0x1

    const/16 v20, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    if-eqz p2, :cond_1

    :try_start_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 1227
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v16

    .line 1170
    :cond_2
    move-object/from16 v8, p2

    .local v8, "arr$":[Ljava/lang/String;
    :try_start_2
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_8

    aget-object v15, v8, v11

    .line 1172
    .local v15, "regularPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1173
    .local v18, "transformedPackageName":Ljava/lang/String;
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "remove to package : transformed packageName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    if-nez v18, :cond_3

    .line 1175
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "remove to package : Error occured for removing vpn, package map."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1220
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "regularPackageName":Ljava/lang/String;
    .end local v18    # "transformedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1221
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception in remove packages for vpn : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1159
    .end local v4    # "ALL_PACKAGES_REMOVED":I
    .end local v5    # "NO_PACKAGES_REMOVED":I
    .end local v6    # "PARTIAL_PACKAGES_REMOVED":I
    .end local v7    # "adminId":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 1179
    .restart local v4    # "ALL_PACKAGES_REMOVED":I
    .restart local v5    # "NO_PACKAGES_REMOVED":I
    .restart local v6    # "PARTIAL_PACKAGES_REMOVED":I
    .restart local v7    # "adminId":I
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v15    # "regularPackageName":Ljava/lang/String;
    .restart local v16    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v18    # "transformedPackageName":Ljava/lang/String;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1180
    .local v14, "profileName":Ljava/lang/String;
    if-nez v14, :cond_5

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1170
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1185
    :cond_5
    if-eqz v14, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    if-eqz p3, :cond_1

    .line 1188
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "remove to package : profileName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v19

    if-eqz v19, :cond_6

    .line 1190
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "removePackagesFromVpn : validate failed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1195
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "VpnPackageInfo"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "packageName"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "profileName"

    aput-object v25, v23, v24

    invoke-virtual/range {v19 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1203
    .local v9, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 1204
    :cond_7
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "Package doesn\'t exist in DB"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1208
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v14    # "profileName":Ljava/lang/String;
    .end local v15    # "regularPackageName":Ljava/lang/String;
    .end local v18    # "transformedPackageName":Ljava/lang/String;
    :cond_8
    move-object/from16 v8, p2

    array-length v12, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_a

    aget-object v13, v8, v11

    .line 1209
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackageFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 1210
    .local v17, "tempResponseData":I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1211
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1212
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "remove to package: partial packages removed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1208
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1217
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v17    # "tempResponseData":I
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1225
    :try_start_5
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "remove to package: all packages removed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized removeVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 19
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 451
    .local v3, "adminId":I
    const/4 v9, -0x1

    .line 452
    .local v9, "removeStatus":I
    const/4 v12, -0x1

    .line 453
    .local v12, "sVpnTransition":I
    const/4 v11, -0x1

    .line 454
    .local v11, "routeType":I
    const/4 v4, 0x0

    .line 455
    .local v4, "checkForPerApp":Z
    const/4 v5, 0x0

    .line 457
    .local v5, "checkForSystem":Z
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_0

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : profileName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : personaId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    new-instance v10, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v10}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 459
    .local v10, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 460
    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    if-eqz v16, :cond_2

    .line 563
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v10

    .line 468
    .restart local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getRoutType(Ljava/lang/String;)I

    move-result v11

    .line 469
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_3

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile getRoutType : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " :  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_3
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v16

    sget v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 471
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_1

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "removeVpnProfile Per App VPN is stil activated "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v6

    .line 560
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove vpn profile : Failure at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 561
    const/4 v10, 0x0

    goto :goto_0

    .line 476
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_4
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_5

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : Check STOP profile =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 479
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_18

    const/16 v16, 0x66

    move/from16 v0, v16

    if-eq v12, v0, :cond_6

    const/16 v16, 0x67

    move/from16 v0, v16

    if-eq v12, v0, :cond_6

    const/16 v16, 0x68

    move/from16 v0, v16

    if-ne v12, v0, :cond_18

    :cond_6
    const/4 v4, 0x1

    .line 482
    :goto_1
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_19

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v12, v0, :cond_7

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v12, v0, :cond_7

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v12, v0, :cond_19

    :cond_7
    const/4 v5, 0x1

    .line 486
    :goto_2
    if-nez v4, :cond_8

    if-eqz v5, :cond_10

    .line 489
    :cond_8
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_9

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : STOP profile =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_9
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v7

    .line 492
    .local v7, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 494
    .local v13, "stopStatus":I
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_a

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : STOP status  =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 499
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_b

    const/16 v16, 0x65

    move/from16 v0, v16

    if-eq v12, v0, :cond_c

    :cond_b
    const/16 v16, 0x69

    move/from16 v0, v16

    if-eq v12, v0, :cond_c

    const/16 v16, 0x67

    move/from16 v0, v16

    if-ne v12, v0, :cond_1a

    :cond_c
    const/4 v4, 0x1

    .line 502
    :goto_3
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_d

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_e

    :cond_d
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v12, v0, :cond_e

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v12, v0, :cond_1b

    :cond_e
    const/4 v5, 0x1

    .line 505
    :goto_4
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    move/from16 v0, v16

    if-ne v13, v0, :cond_f

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 509
    :cond_f
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-eq v11, v0, :cond_10

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromIpTables(Ljava/lang/String;)V

    .line 514
    .end local v7    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v13    # "stopStatus":I
    :cond_10
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_11

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : Delete a profile "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 517
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_12

    const/16 v16, 0x65

    move/from16 v0, v16

    if-eq v12, v0, :cond_13

    :cond_12
    const/16 v16, 0x69

    move/from16 v0, v16

    if-eq v12, v0, :cond_13

    const/16 v16, 0x66

    move/from16 v0, v16

    if-eq v12, v0, :cond_13

    const/16 v16, 0x67

    move/from16 v0, v16

    if-ne v12, v0, :cond_1c

    :cond_13
    const/4 v4, 0x1

    .line 520
    :goto_5
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_15

    :cond_14
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v12, v0, :cond_15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v12, v0, :cond_15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v12, v0, :cond_1d

    :cond_15
    const/4 v5, 0x1

    .line 524
    :goto_6
    if-nez v4, :cond_16

    if-eqz v5, :cond_1

    .line 527
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v15

    .line 528
    .local v15, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v8

    .line 529
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    .line 531
    .local v14, "vendorName":Ljava/lang/String;
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_17

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "removeVpnProfile : check a service "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_17
    if-nez v15, :cond_1e

    .line 533
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "remove vpn profile : VPN Service is not started"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 450
    .end local v3    # "adminId":I
    .end local v4    # "checkForPerApp":Z
    .end local v5    # "checkForSystem":Z
    .end local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v9    # "removeStatus":I
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v11    # "routeType":I
    .end local v12    # "sVpnTransition":I
    .end local v14    # "vendorName":Ljava/lang/String;
    .end local v15    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 479
    .restart local v3    # "adminId":I
    .restart local v4    # "checkForPerApp":Z
    .restart local v5    # "checkForSystem":Z
    .restart local v9    # "removeStatus":I
    .restart local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v11    # "routeType":I
    .restart local v12    # "sVpnTransition":I
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 482
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 499
    .restart local v7    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v13    # "stopStatus":I
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 502
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 517
    .end local v7    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v13    # "stopStatus":I
    :cond_1c
    const/4 v4, 0x0

    goto :goto_5

    .line 520
    :cond_1d
    const/4 v5, 0x0

    goto :goto_6

    .line 536
    .restart local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v14    # "vendorName":Ljava/lang/String;
    .restart local v15    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1e
    :try_start_5
    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v9

    .line 537
    if-nez v9, :cond_21

    .line 538
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_1f

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "removeVpnProfile : removeConnection success"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z

    .line 545
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-eq v11, v0, :cond_20

    .line 552
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeMangleExceptions(Ljava/lang/String;)V

    .line 555
    :cond_20
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 556
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 547
    :cond_21
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove vpn profile : removeConnection failed for profile = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public setAutoRetryOnConnectionError(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1906
    const/4 v0, -0x1

    .line 1907
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 1908
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1909
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1910
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1912
    if-nez p1, :cond_1

    .line 1913
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAutoRetryOnConnectionError : vpnContext is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 1917
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1918
    if-eqz p2, :cond_0

    .line 1920
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1923
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1924
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_2

    .line 1925
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAutoRetryOnConnectionError : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1932
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 1933
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoRetryOnConnectionError : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const/4 v2, 0x0

    goto :goto_0

    .line 1928
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_2
    :try_start_1
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setAutoRetryOnConnectionError(Ljava/lang/String;Z)Z

    move-result v3

    .line 1929
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoRetryOnConnectionError : success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1931
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setCACertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;[B)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 824
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 825
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 826
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 827
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 828
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 830
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 845
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_0
    return-object v2

    .line 833
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 834
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_1

    .line 835
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setting CACertificate : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 842
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting CACertificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v2, 0x0

    goto :goto_0

    .line 838
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_1
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setCACertificate(Ljava/lang/String;[B)Z

    move-result v3

    .line 839
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 840
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enableValidation"    # Z
    .param p4, "condition"    # Ljava/util/List;
    .param p5, "frequency"    # I

    .prologue
    const/4 v5, 0x0

    .line 1875
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1876
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 1877
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1878
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1879
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1880
    if-eqz p2, :cond_0

    .line 1882
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1899
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 1885
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1886
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_2

    .line 1887
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setting server cert validation : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1894
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 1895
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting server cert validation : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const/4 v2, 0x0

    goto :goto_0

    .line 1890
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_2
    :try_start_1
    invoke-interface {v4, p2, p3, p4, p5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ZLjava/util/List;I)Z

    move-result v3

    .line 1892
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1893
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized setUserCertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 772
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 773
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 774
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 775
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    if-eqz p2, :cond_0

    .line 778
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 795
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 781
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 782
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_2

    .line 783
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setting user certificate : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 790
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 791
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting user certificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 792
    const/4 v2, 0x0

    goto :goto_0

    .line 786
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_2
    :try_start_4
    invoke-interface {v4, p2, p3, p4}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3

    .line 788
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 789
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 771
    .end local v0    # "adminId":I
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    .end local v3    # "success":Z
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setVpnFrameworkSystemProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentFramework"    # Ljava/lang/String;

    .prologue
    .line 3611
    const-string v0, "net.vpn.framework"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3612
    return-void
.end method

.method public declared-synchronized setVpnModeOfOperation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1829
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1830
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1831
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1832
    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1833
    if-ltz p3, :cond_0

    if-le p3, v7, :cond_1

    .line 1848
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1837
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1838
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v4, :cond_0

    .line 1839
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setVpnModeOfOperation(Ljava/lang/String;I)I

    move-result v3

    .line 1840
    .local v3, "ret":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setVpnModeOfOperation : profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1842
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1844
    .end local v3    # "ret":I
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 1845
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting vpn mode : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1846
    const/4 v2, 0x0

    goto :goto_0

    .line 1829
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized startConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 875
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 876
    .local v0, "adminId":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startConnection API called for profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 878
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 879
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 895
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit p0

    return-object v2

    .line 884
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 885
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 886
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "starting vpn connection : Mocana Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 887
    goto :goto_0

    .line 889
    :cond_1
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->startConnection(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 890
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 891
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 892
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "starting vpn connection : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    .line 893
    goto :goto_0

    .line 875
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 900
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 901
    .local v0, "adminId":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopConnection API called for profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 903
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 904
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 920
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit p0

    return-object v2

    .line 909
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 910
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 911
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "stopping vpn connection : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 912
    goto :goto_0

    .line 914
    :cond_1
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 915
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 916
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 917
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopping vpn connection : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    .line 918
    goto :goto_0

    .line 900
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method
