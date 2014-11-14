.class public Landroid/sec/enterprise/WifiPolicyCache;
.super Ljava/lang/Object;
.source "WifiPolicyCache.java"


# static fields
.field public static final ACTION_WIFI_POLICY_STATE_CHANGED:Ljava/lang/String; = "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "android.app.enterprise.extra.EXTRA_USER_ID"

.field public static final EXTRA_WIFI_TYPE_CHANGED:Ljava/lang/String; = "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

.field public static final NO_USER:I = -0x1

.field public static final TYPE_ALLOW_AUTOMATIC_CONNECTION:Ljava/lang/String; = "ALLOW_AUTOMATIC_CONNECTION"

.field public static final TYPE_ALLOW_USER_CHANGES:Ljava/lang/String; = "ALLOW_USER_CHANGES"

.field public static final TYPE_ALLOW_USER_PROFILES:Ljava/lang/String; = "ALLOW_USER_PROFILES"

.field public static final TYPE_BLACK_SSID_LIST:I = 0x0

.field public static final TYPE_BLOCKED_NETWORKS:Ljava/lang/String; = "BLOCKED_NETWORKS"

.field public static final TYPE_ENTERPRISE_SSIDS:Ljava/lang/String; = "ENTERPRISE_SSIDS"

.field public static final TYPE_MINIMUM_SECURITY_LEVEL:Ljava/lang/String; = "MINIMUM_SECURITY_LEVEL"

.field public static final TYPE_PROMPT_CREDENTIALS_ENABLED:Ljava/lang/String; = "PROMPT_CREDENTIALS_ENABLED"

.field public static final TYPE_WHITE_BLACK_SSID_LIST:Ljava/lang/String; = "WHITE_BLACK_SSID_LIST"

.field public static final TYPE_WHITE_SSID_LIST:I = 0x1

.field public static final TYPE_WIFI_ALLOWED:Ljava/lang/String; = "WIFI_ALLOWED"

.field private static sInstance:Landroid/sec/enterprise/WifiPolicyCache;


# instance fields
.field private mAllowAutomaticConnections:Z

.field private mAllowUserChanges:Z

.field private mAllowUserProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackListedSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnterpriseSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimumSecurityLevel:I

.field private mPromptCredentialsEnabled:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mWhiteListedSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiAllowed:Z

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    .line 66
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    .line 67
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    .line 69
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    .line 73
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    .line 92
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 93
    iput-object p1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    .line 94
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mUserManager:Landroid/os/UserManager;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v1, Landroid/sec/enterprise/WifiPolicyCache$1;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/WifiPolicyCache$1;-><init>(Landroid/sec/enterprise/WifiPolicyCache;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Landroid/sec/enterprise/WifiPolicyCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Landroid/sec/enterprise/WifiPolicyCache;

    invoke-direct {v0, p0}, Landroid/sec/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    .line 88
    :cond_b
    sget-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    return-object v0
.end method

.method public static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 10
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "sec":I
    if-eqz p0, :cond_24

    .line 227
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 230
    :cond_23
    const/4 v1, 0x2

    .line 257
    :cond_24
    :goto_24
    return v1

    .line 231
    :cond_25
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 235
    :cond_47
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 236
    .local v0, "eap":I
    if-nez v0, :cond_51

    .line 237
    const/4 v1, 0x5

    goto :goto_24

    .line 238
    :cond_51
    if-ne v0, v6, :cond_55

    .line 239
    const/4 v1, 0x6

    goto :goto_24

    .line 240
    :cond_55
    if-ne v0, v8, :cond_59

    .line 241
    const/4 v1, 0x3

    goto :goto_24

    .line 242
    :cond_59
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5e

    .line 243
    const/4 v1, 0x4

    goto :goto_24

    .line 244
    :cond_5e
    if-ne v0, v3, :cond_62

    .line 245
    const/4 v1, 0x7

    goto :goto_24

    .line 247
    :cond_62
    const/16 v1, 0x8

    goto :goto_24

    .line 250
    .end local v0    # "eap":I
    :cond_65
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_8d

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-nez v4, :cond_8d

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v6

    if-nez v4, :cond_8d

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v7

    if-nez v4, :cond_8d

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_8f

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_8f

    :cond_8d
    move v1, v3

    :goto_8e
    goto :goto_24

    :cond_8f
    move v1, v2

    goto :goto_8e
.end method

.method private declared-synchronized readVariables(Ljava/lang/String;I)V
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 120
    monitor-enter p0

    if-nez p1, :cond_88

    .line 121
    :try_start_3
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    .line 122
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    .line 123
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    .line 124
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    .line 125
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    .line 126
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v3

    iput v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    .line 127
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    .line 128
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    .line 129
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAutomaticConnectionToWifi()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    .line 131
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 135
    .local v0, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 136
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(ZI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_85

    goto :goto_5c

    .line 120
    .end local v0    # "i":Landroid/content/pm/UserInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_85
    move-exception v3

    monitor-exit p0

    throw v3

    .line 140
    :cond_88
    :try_start_88
    const-string v3, "ENTERPRISE_SSIDS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 141
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;
    :try_end_98
    .catchall {:try_start_88 .. :try_end_98} :catchall_85

    .line 160
    :cond_98
    :goto_98
    monitor-exit p0

    return-void

    .line 142
    :cond_9a
    :try_start_9a
    const-string v3, "BLOCKED_NETWORKS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 143
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    goto :goto_98

    .line 144
    :cond_ab
    const-string v3, "ALLOW_USER_CHANGES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 145
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    goto :goto_98

    .line 146
    :cond_bc
    const-string v3, "ALLOW_USER_PROFILES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 147
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(ZI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_98

    .line 148
    :cond_d9
    const-string v3, "WIFI_ALLOWED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 149
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    goto :goto_98

    .line 150
    :cond_ea
    const-string v3, "PROMPT_CREDENTIALS_ENABLED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 151
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    goto :goto_98

    .line 152
    :cond_fb
    const-string v3, "MINIMUM_SECURITY_LEVEL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 153
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v3

    iput v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    goto :goto_98

    .line 154
    :cond_10c
    const-string v3, "WHITE_BLACK_SSID_LIST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 155
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    .line 156
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    goto/16 :goto_98

    .line 157
    :cond_128
    const-string v3, "ALLOW_AUTOMATIC_CONNECTION"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 158
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAutomaticConnectionToWifi()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z
    :try_end_138
    .catchall {:try_start_9a .. :try_end_138} :catchall_85

    goto/16 :goto_98
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 214
    if-nez p1, :cond_7

    .line 215
    const/4 p1, 0x0

    .line 221
    .end local p1    # "string":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p1

    .line 217
    .restart local p1    # "string":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 218
    .local v0, "length":I
    if-le v0, v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    .line 219
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method


# virtual methods
.method public declared-synchronized getAllowUserChanges()Z
    .registers 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUserProfiles()Z
    .registers 4

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 180
    .local v0, "userId":I
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 181
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    move-result v1

    .line 185
    :goto_21
    monitor-exit p0

    return v1

    :cond_23
    const/4 v1, 0x1

    goto :goto_21

    .line 179
    .end local v0    # "userId":I
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAutomaticConnectionToWifi()Z
    .registers 2

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    return v0
.end method

.method public declared-synchronized getPromptCredentialsEnabled()Z
    .registers 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnterpriseNetwork(Ljava/lang/String;)Z
    .registers 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 163
    monitor-enter p0

    if-eqz p1, :cond_f

    .line 164
    :try_start_3
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 166
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 163
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    monitor-enter p0

    if-nez p1, :cond_7

    .line 201
    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    .line 191
    :cond_7
    :try_start_7
    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    .line 192
    goto :goto_5

    .line 193
    :cond_17
    invoke-static {p1}, Landroid/sec/enterprise/WifiPolicyCache;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    iget v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    if-ge v2, v3, :cond_21

    move v0, v1

    .line 194
    goto :goto_5

    .line 195
    :cond_21
    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 197
    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_49

    move-result v2

    if-eqz v2, :cond_5

    :cond_47
    move v0, v1

    .line 199
    goto :goto_5

    .line 189
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiAllowed(Z)Z
    .registers 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 206
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAllowedFields(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .registers 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "edmConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "newConfigSec"    # I

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-static {p2}, Landroid/sec/enterprise/WifiPolicyCache;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 280
    .local v0, "edmConfigSec":I
    if-ne p3, v0, :cond_9

    if-nez p3, :cond_b

    :cond_9
    move-object p2, v3

    .line 304
    .end local p2    # "edmConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    :goto_a
    return-object p2

    .line 282
    .restart local p2    # "edmConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    packed-switch v0, :pswitch_data_58

    :pswitch_e
    move-object p2, v3

    .line 302
    goto :goto_a

    .line 284
    :pswitch_10
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 285
    .local v1, "index":I
    iput v1, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 286
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    goto :goto_a

    .line 289
    .end local v1    # "index":I
    :pswitch_1d
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_a

    const-string v3, "*"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 290
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v3, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_a

    .line 295
    :pswitch_30
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 296
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 297
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "password":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 299
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_a

    .line 282
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1d
        :pswitch_e
        :pswitch_e
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method
