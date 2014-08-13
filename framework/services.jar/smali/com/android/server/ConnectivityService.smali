.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$EmergencyHandler;,
        Lcom/android/server/ConnectivityService$EmergencyReceiver;,
        Lcom/android/server/ConnectivityService$CheckMp;,
        Lcom/android/server/ConnectivityService$VpnCallback;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$DefaultNetworkFactory;,
        Lcom/android/server/ConnectivityService$NetworkFactory;,
        Lcom/android/server/ConnectivityService$RouteAttributes;,
        Lcom/android/server/ConnectivityService$RadioAttributes;
    }
.end annotation


# static fields
.field private static final ACTION_CIQ_SERVER_STARTED:Ljava/lang/String; = "com.carrieriq.iqagent.service.ACTION_SERVER_STARTED"

.field protected static final ACTION_PKT_CNT_SAMPLE_INTERVAL_ELAPSED:Ljava/lang/String; = "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

.field protected static final ACTION_SET_PREFERRED_DATA_SLOT:Ljava/lang/String; = "com.samsung.intent.action.SET_PREFERRED_DATA_SLOT"

.field protected static final ADD:Z = true

.field private static final ALL_TETHER_DISABLE:I = 0x1

.field private static final ALL_TETHER_ENABLE:I = 0x3

.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field public static final CISCO_ANYCONNECT_PKG:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field private static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field private static final CMP_RESULT_CODE_CONNECTABLE:I = 0x1

.field private static final CMP_RESULT_CODE_NO_CONNECTION:I = 0x0

.field private static final CMP_RESULT_CODE_NO_DNS:I = 0x2

.field private static final CMP_RESULT_CODE_NO_TCP_CONNECTION:I = 0x3

.field private static final CMP_RESULT_CODE_PROVISIONING_NETWORK:I = 0x5

.field private static final CMP_RESULT_CODE_REDIRECTED:I = 0x4

.field private static final CONNECTED_TO_PROVISIONING_NETWORK_ACTION:Ljava/lang/String; = "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

.field protected static final DBG:Z = true

.field protected static final DEFAULT_FAIL_FAST_TIME_MS:I = 0xea60

.field private static final DEFAULT_NULL_ADDRESS:Ljava/lang/String; = "0.0.0.0"

.field protected static final DEFAULT_SAMPLING_INTERVAL_IN_SECONDS:I = -0x1

.field protected static final DEFAULT_START_SAMPLING_INTERVAL_IN_SECONDS:I = 0x3c

.field protected static final DISABLED:I = 0x0

.field private static final EMERGENCY_MAX_TIMEOUT:I = 0x927c0

.field private static final EMERGENCY_TERMINATE_TIMEOUT:I = 0xea60

.field protected static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x2

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_EMERGENCY_TIMEOUT:I = 0x0

.field private static final EVENT_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0xe

.field private static final EVENT_FAILOVER_FLAG_RESET:I = 0x12

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x4

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x5

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x1

.field private static final EVENT_SAMPLE_INTERVAL_ELAPSED:I = 0xf

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0xb

.field private static final EVENT_SET_DEPENDENCY_MET:I = 0xa

.field private static final EVENT_SET_MOBILE_DATA:I = 0x7

.field private static final EVENT_SET_MOBILE_DATA_EX:I = 0x11

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x3

.field private static final EVENT_SET_POLICY_DATA_ENABLE:I = 0xc

.field private static final EVENT_VPN_STATE_CHANGED:I = 0xd

.field protected static final EXEMPT:Z = true

.field protected static final FAIL_FAST_TIME_MS:Ljava/lang/String; = "persist.radio.fail_fast_time_ms"

.field protected static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field protected static final LOGD_RULES:Z = false

.field protected static final MAX_HOSTROUTE_CYCLE_COUNT:I = 0xa

.field public static final MOCANA_VPN_SERVICE_PKG:Ljava/lang/String; = "com.mocana.vpn.android"

.field protected static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final ONLY_WIFI_AND_BT_TETHER_ENABLE:I = 0x2

.field private static final PER_APP_VPN:I = 0x1

.field private static final PROVISIONING:I = 0x2

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final REDIRECTED_PROVISIONING:I = 0x1

.field protected static final REMOVE:Z = false

.field protected static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field protected static final SAMPLE_INTERVAL_ELAPSED_REQUEST_CODE:I = 0x0

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final TAG_REDIRECTED_URL:Ljava/lang/String; = "redirectedUrl"

.field protected static final TO_DEFAULT_TABLE:Z = true

.field protected static final TO_SECONDARY_TABLE:Z = false

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field private static final UC_ENABLED_SETTING:Ljava/lang/String; = "UC_ENABLED"

.field protected static final UNEXEMPT:Z = false

.field private static final USAGE_CONTROL_DEFAULT:Z = false

.field protected static final VDBG:Z = false

.field public static final VPN_DIALOG_PKG:Ljava/lang/String; = "com.android.vpndialogs"

.field private static final VZW_APPS_APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "vzw.telephony.appsapn-restore"

.field private static final is3LMAllowed:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private bIsFailOverToMobile:Z

.field private emergencyDataOpened:Z

.field private final knoxVpnV2Enabled:Z

.field private mActiveDefaultNetwork:I

.field private mAddedRoutes:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBackupDataPreferSimId:I

.field private mCIQReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mCaptivePortalAllowedNetworkTypes:[I

.field private mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

.field private mCiq:Lcom/android/server/ciq/IPConnectivityCIQ;

.field private mClat:Lcom/android/server/connectivity/Nat464Xlat;

.field private mContext:Landroid/content/Context;

.field private mCurrentLinkProperties:[Landroid/net/LinkProperties;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultConnectionSequence:I

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mDefaultProxy:Landroid/net/ProxyProperties;

.field private mDefaultProxyDisabled:Z

.field private mDnsLock:Ljava/lang/Object;

.field private mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;

.field private mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEnterpriseSytemVPN:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterpriseVpnStoreObj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/EnterpriseVpn;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExemptAddresses:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ConnectivityService$FeatureUser;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalProxy:Landroid/net/ProxyProperties;

.field private mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsMobilePolicyEnabled:Z

.field private volatile mIsNotificationVisible:Z

.field private mIsUcEnabled:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field mLguplusHoClientPolicy:Lcom/lguplus/ho_client/PolicyProxy;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private mNetRequestersPids:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPacManager:Lcom/android/server/connectivity/PacManager;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPriorityList:[I

.field mProtectedNetworks:Ljava/util/List;

.field private mProvisioningReceiver:Landroid/content/BroadcastReceiver;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field private mProxyLock:Ljava/lang/Object;

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

.field private mRouteIdCtr:I

.field private final mRoutesLock:Ljava/lang/Object;

.field private mRulesLock:Ljava/lang/Object;

.field private mSBManager:Lcom/samsung/smartbonding/ISmartBondingService;

.field private mSBService:Lcom/samsung/smartbonding/SmartBondingService;

.field private mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

.field private mSetNetworkPreferenceLog:Ljava/lang/String;

.field private mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field public mVoiceCallStarted:Z

.field private mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfConnectedProfile:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 611
    invoke-direct {p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 309
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    .line 311
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 326
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 328
    new-instance v0, Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 336
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 338
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 340
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 370
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 372
    iput v3, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 373
    iput v3, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 374
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 375
    iput v3, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 377
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 495
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    .line 511
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 518
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    .line 537
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 538
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 539
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 542
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 544
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 556
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    .line 557
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 558
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 559
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 560
    new-instance v0, Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 562
    iput v3, p0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    .line 589
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->mVoiceCallStarted:Z

    .line 592
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 627
    iput v3, p0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    .line 662
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mCiq:Lcom/android/server/ciq/IPConnectivityCIQ;

    .line 665
    iput v3, p0, Lcom/android/server/ConnectivityService;->mBackupDataPreferSimId:I

    .line 1604
    new-instance v0, Lcom/android/server/ConnectivityService$2;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 2636
    new-instance v0, Lcom/android/server/ConnectivityService$3;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 3432
    new-instance v0, Lcom/android/server/ConnectivityService$4;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 5776
    const-string/jumbo v0, "v30"

    const-string v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->knoxVpnV2Enabled:Z

    .line 6452
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7001
    new-instance v0, Lcom/android/server/ConnectivityService$6;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    .line 7038
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->mIsNotificationVisible:Z

    .line 7131
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 7349
    new-instance v0, Lcom/android/server/ConnectivityService$7;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 7835
    new-instance v0, Lcom/android/server/ConnectivityService$8;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$8;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mCIQReceiver:Landroid/content/BroadcastReceiver;

    .line 611
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 671
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Lcom/android/server/ConnectivityService$NetworkFactory;)V

    .line 672
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Lcom/android/server/ConnectivityService$NetworkFactory;)V
    .locals 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;
    .param p5, "netFactory"    # Lcom/android/server/ConnectivityService$NetworkFactory;

    .prologue
    .line 676
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    .line 311
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 326
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 328
    new-instance v2, Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 336
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 338
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 340
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 370
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 372
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 374
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 375
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 377
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 495
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    .line 511
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 518
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    .line 522
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 529
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    .line 537
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 538
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 539
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 542
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 544
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 556
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    .line 557
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 558
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 559
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 560
    new-instance v2, Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 562
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    .line 589
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mVoiceCallStarted:Z

    .line 592
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 597
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 627
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    .line 662
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCiq:Lcom/android/server/ciq/IPConnectivityCIQ;

    .line 665
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mBackupDataPreferSimId:I

    .line 1604
    new-instance v2, Lcom/android/server/ConnectivityService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 2636
    new-instance v2, Lcom/android/server/ConnectivityService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 3432
    new-instance v2, Lcom/android/server/ConnectivityService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 5776
    const-string/jumbo v2, "v30"

    const-string v3, "ro.config.knox"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->knoxVpnV2Enabled:Z

    .line 6452
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7001
    new-instance v2, Lcom/android/server/ConnectivityService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    .line 7038
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mIsNotificationVisible:Z

    .line 7131
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 7349
    new-instance v2, Lcom/android/server/ConnectivityService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 7835
    new-instance v2, Lcom/android/server/ConnectivityService$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$8;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCIQReceiver:Landroid/content/BroadcastReceiver;

    .line 677
    const-string v2, "ConnectivityService starting up"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 679
    new-instance v14, Landroid/os/HandlerThread;

    const-string v2, "ConnectivityServiceThread"

    invoke-direct {v14, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 680
    .local v14, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    .line 681
    new-instance v2, Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 682
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 684
    if-nez p5, :cond_0

    .line 685
    new-instance p5, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;

    .end local p5    # "netFactory":Lcom/android/server/ConnectivityService$NetworkFactory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 689
    .restart local p5    # "netFactory":Lcom/android/server/ConnectivityService$NetworkFactory;
    :cond_0
    const-string v2, "net.hostname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 692
    .local v17, "id":Ljava/lang/String;
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 693
    new-instance v2, Ljava/lang/String;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 694
    .local v26, "name":Ljava/lang/String;
    const-string v2, "net.hostname"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .end local v17    # "id":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 701
    .local v11, "dns":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 702
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 706
    :cond_3
    :try_start_0
    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    const-string v2, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 712
    const-string v2, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 713
    const-string v2, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 714
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 718
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 728
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 729
    new-instance v2, Lcom/android/server/ConnectivityService$EmergencyHandler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$EmergencyHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;

    .line 730
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 731
    .local v13, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    const-string v2, "android.intent.action.EMERGENCY_EMERGENCY_DATA_OPEN_REQ"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v2, "jp.co.nttdocomo.lcsapp.ACTION_STATUS_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/ConnectivityService$EmergencyReceiver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$EmergencyReceiver;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v2, v3, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 742
    .end local v13    # "filter":Landroid/content/IntentFilter;
    :goto_2
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/PowerManager;

    .line 744
    .local v29, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ConnectivityService"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 749
    const/16 v2, 0x1b

    new-array v2, v2, [Landroid/net/NetworkStateTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 751
    const/16 v2, 0x1b

    new-array v2, v2, [Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    .line 753
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 754
    const/16 v2, 0x1b

    new-array v2, v2, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 758
    const/16 v2, 0x1b

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    .line 759
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    const/16 v2, 0x1b

    if-ge v15, v2, :cond_4

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    new-instance v3, Lcom/android/server/ConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$RouteAttributes;-><init>(Lcom/android/server/ConnectivityService;)V

    aput-object v3, v2, v15

    .line 759
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 707
    .end local v15    # "i":I
    .end local v29    # "powerManager":Landroid/os/PowerManager;
    :catch_0
    move-exception v12

    .line 708
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting defaultDns using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 719
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v12

    .line 721
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to register INetworkPolicyListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 736
    .end local v12    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v12

    .line 737
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t register receiver. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 765
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v15    # "i":I
    .restart local v29    # "powerManager":Landroid/os/PowerManager;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v33

    .line 767
    .local v33, "raStrings":[Ljava/lang/String;
    move-object/from16 v8, v33

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    aget-object v32, v8, v16

    .line 768
    .local v32, "raString":Ljava/lang/String;
    new-instance v31, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v31 .. v32}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 770
    .local v31, "r":Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_5

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 767
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 774
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 779
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aput-object v31, v2, v3

    goto :goto_5

    .line 783
    .end local v31    # "r":Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v32    # "raString":Ljava/lang/String;
    :cond_7
    const-string v2, "ro.radio.noril"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 784
    .local v36, "wifiOnly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wifiOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 787
    .local v25, "naStrings":[Ljava/lang/String;
    move-object/from16 v8, v25

    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    aget-object v24, v8, v16

    .line 789
    .local v24, "naString":Ljava/lang/String;
    :try_start_3
    new-instance v22, Landroid/net/NetworkConfig;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 792
    .local v22, "n":Landroid/net/NetworkConfig;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0x1a

    if-le v2, v3, :cond_8

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 787
    .end local v22    # "n":Landroid/net/NetworkConfig;
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 797
    .restart local v22    # "n":Landroid/net/NetworkConfig;
    :cond_8
    if-eqz v36, :cond_9

    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 814
    .end local v22    # "n":Landroid/net/NetworkConfig;
    :catch_3
    move-exception v2

    goto :goto_7

    .line 802
    .restart local v22    # "n":Landroid/net/NetworkConfig;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_a

    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 807
    :cond_a
    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    aget-object v2, v2, v3

    if-nez v2, :cond_b

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 812
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v22, v2, v3

    .line 813
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_7

    .line 820
    .end local v22    # "n":Landroid/net/NetworkConfig;
    .end local v24    # "naString":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 821
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v30

    .line 823
    .local v30, "protectedNetworks":[I
    move-object/from16 v8, v30

    .local v8, "arr$":[I
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    aget v28, v8, v16

    .line 824
    .local v28, "p":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v28

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :goto_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 827
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring protectedNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_9

    .line 832
    .end local v28    # "p":I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 834
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v18, v2, -0x1

    .line 835
    .local v18, "insertionPoint":I
    const/4 v10, 0x0

    .line 836
    .local v10, "currentLowest":I
    const/16 v27, 0x0

    .line 837
    .end local v8    # "arr$":[I
    .local v27, "nextLowest":I
    :goto_a
    const/4 v2, -0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_14

    .line 838
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .local v8, "arr$":[Landroid/net/NetworkConfig;
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    move/from16 v19, v18

    .end local v18    # "insertionPoint":I
    .local v19, "insertionPoint":I
    :goto_b
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    aget-object v23, v8, v16

    .line 839
    .local v23, "na":Landroid/net/NetworkConfig;
    if-nez v23, :cond_f

    move/from16 v18, v19

    .line 838
    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    :goto_c
    add-int/lit8 v16, v16, 0x1

    move/from16 v19, v18

    .end local v18    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    goto :goto_b

    .line 840
    :cond_f
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-ge v2, v10, :cond_10

    move/from16 v18, v19

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    goto :goto_c

    .line 841
    .end local v18    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    :cond_10
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-le v2, v10, :cond_12

    .line 842
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v27

    if-lt v2, v0, :cond_11

    if-nez v27, :cond_1c

    .line 843
    :cond_11
    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v27, v0

    move/from16 v18, v19

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    goto :goto_c

    .line 847
    .end local v18    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    add-int/lit8 v18, v19, -0x1

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput v3, v2, v19

    goto :goto_c

    .line 849
    .end local v18    # "insertionPoint":I
    .end local v23    # "na":Landroid/net/NetworkConfig;
    .restart local v19    # "insertionPoint":I
    :cond_13
    move/from16 v10, v27

    .line 850
    const/16 v27, 0x0

    move/from16 v18, v19

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    goto :goto_a

    .line 855
    .end local v8    # "arr$":[Landroid/net/NetworkConfig;
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 856
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    .line 857
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v8, "arr$":[I
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_d
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    aget v22, v8, v16

    .line 859
    .local v22, "n":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v22

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static/range {v22 .. v22}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 860
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 864
    .end local v22    # "n":I
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    .line 865
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You should set at least one default Network in config.xml!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 857
    .restart local v22    # "n":I
    :cond_16
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 870
    .end local v8    # "arr$":[I
    .end local v22    # "n":I
    :cond_17
    const/16 v2, 0x1b

    new-array v2, v2, [Ljava/util/ArrayList;

    check-cast v2, [Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 872
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .restart local v8    # "arr$":[I
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    aget v15, v8, v16

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v15

    .line 872
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 876
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 878
    const-string v2, "cm.test.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 886
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_10
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_1b

    aget v34, v8, v16

    .line 887
    .local v34, "targetNetworkType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v9, v2, v34

    .line 890
    .local v9, "config":Landroid/net/NetworkConfig;
    :try_start_4
    move-object/from16 v0, p5

    move/from16 v1, v34

    invoke-interface {v0, v1, v9}, Lcom/android/server/ConnectivityService$NetworkFactory;->createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;

    move-result-object v35

    .line 891
    .local v35, "tracker":Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aput-object v35, v2, v34
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 899
    invoke-virtual {v9}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 900
    invoke-interface/range {v35 .. v35}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 886
    .end local v35    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_19
    :goto_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_10

    .line 878
    .end local v9    # "config":Landroid/net/NetworkConfig;
    .end local v34    # "targetNetworkType":I
    :cond_1a
    const/4 v2, 0x0

    goto :goto_f

    .line 892
    .restart local v9    # "config":Landroid/net/NetworkConfig;
    .restart local v34    # "targetNetworkType":I
    :catch_4
    move-exception v12

    .line 893
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 904
    .end local v9    # "config":Landroid/net/NetworkConfig;
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .end local v34    # "targetNetworkType":I
    :cond_1b
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 907
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 908
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 909
    const-string v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 910
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 913
    new-instance v2, Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    .line 916
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 924
    :goto_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 927
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 953
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {v2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 957
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 958
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 962
    const v2, 0xea60

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ConnectivityService;->setAlarm(ILandroid/app/PendingIntent;)V

    .line 964
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 965
    .restart local v13    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v13}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 979
    new-instance v2, Lcom/android/server/connectivity/PacManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 981
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 982
    .restart local v13    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 985
    const-string v2, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 988
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCaptivePortalAllowedNetworkTypes:[I

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectivityService: mCaptivePortalAllowedNetworkTypes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mCaptivePortalAllowedNetworkTypes:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 994
    const-string v2, "create Smart Bonding Service"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 995
    new-instance v2, Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0, v4}, Lcom/samsung/smartbonding/SmartBondingService;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;Landroid/os/INetworkManagementService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSBService:Lcom/samsung/smartbonding/SmartBondingService;

    .line 996
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSBManager:Lcom/samsung/smartbonding/ISmartBondingService;

    .line 1006
    return-void

    .line 919
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v20    # "intent":Landroid/content/Intent;
    :catch_5
    move-exception v12

    .line 920
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_12

    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v18    # "insertionPoint":I
    .local v8, "arr$":[Landroid/net/NetworkConfig;
    .restart local v19    # "insertionPoint":I
    .restart local v23    # "na":Landroid/net/NetworkConfig;
    :cond_1c
    move/from16 v18, v19

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    goto/16 :goto_c
.end method

.method static synthetic access$004(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget v0, p0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isCaptivePortalAllowedNetwork(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/LinkProperties;
    .param p2, "x2"    # Landroid/net/RouteInfo;
    .param p3, "x3"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 258
    invoke-static {p0, p1}, Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->checkCondition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 258
    invoke-static {p0, p1}, Lcom/android/server/ConnectivityService;->makeEthernetStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleNetworkSamplingTimeout()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/ProxyProperties;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZ)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetMobileDataEx(ZI)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 258
    invoke-direct/range {p0 .. p5}, Lcom/android/server/ConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/ProxyProperties;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isMobileDataStateTrackerReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleMobileProvisioningAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$FeatureUser;
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->emergencyOpenDataPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/android/server/ConnectivityService;Lcom/android/server/ciq/IPConnectivityCIQ;)Lcom/android/server/ciq/IPConnectivityCIQ;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ciq/IPConnectivityCIQ;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mCiq:Lcom/android/server/ciq/IPConnectivityCIQ;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method private addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z
    .locals 7
    .param p1, "p"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "toDefaultTable"    # Z
    .param p4, "exempt"    # Z

    .prologue
    .line 2424
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0
.end method

.method private addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z
    .locals 6
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "exempt"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2432
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z

    move-result v0

    return v0
.end method

.method private checkCondition(I)Z
    .locals 5
    .param p1, "nwkType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7531
    const/4 v0, 0x0

    .line 7532
    .local v0, "ret":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_DataKeepMobileEvenWifiOn"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7534
    if-nez v0, :cond_0

    if-ne p1, v2, :cond_4

    :cond_0
    move v0, v2

    .line 7535
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 7536
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->needFlushRoutes()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    move v0, v2

    .line 7539
    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    .line 7534
    goto :goto_0

    :cond_5
    move v0, v1

    .line 7536
    goto :goto_1
.end method

.method private checkCondition(Landroid/net/NetworkInfo;)Z
    .locals 5
    .param p1, "wifiInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7520
    const/4 v0, 0x0

    .line 7521
    .local v0, "ret":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_DataKeepMobileEvenWifiOn"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7523
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    :cond_0
    move v0, v2

    .line 7524
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 7525
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->needFlushRoutes()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    move v0, v2

    .line 7527
    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    .line 7523
    goto :goto_0

    :cond_5
    move v0, v1

    .line 7525
    goto :goto_1
.end method

.method private checkIfKnoxVpnProfileExists(Ljava/lang/String;)Z
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 5513
    const/4 v0, 0x0

    .line 5514
    .local v0, "profileExists":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5516
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 5517
    .local v2, "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5518
    const/4 v0, 0x1

    .line 5520
    :cond_0
    return v0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 5289
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 5290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5292
    :cond_0
    return-object p0
.end method

.method private checkRelatedFeature()Z
    .locals 2

    .prologue
    .line 7515
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DataKeepMobileEvenWifiOn"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkSourceRouteCondition(I)Z
    .locals 4
    .param p1, "netType"    # I

    .prologue
    const/4 v0, 0x1

    .line 4078
    const-string v1, "SPR"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4093
    :cond_0
    :goto_0
    return v0

    .line 4082
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_3

    .line 4083
    :cond_2
    const-string v1, "enabled"

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4089
    :cond_3
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 4093
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 7763
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x2000

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 7764
    .local v0, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 7765
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 7766
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 7768
    return-object v0
.end method

.method private declared-synchronized disconnect(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 26
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 5939
    monitor-enter p0

    const/4 v13, 0x0

    .line 5940
    .local v13, "isSystemVpn":Z
    const/4 v12, 0x0

    .line 5941
    .local v12, "isConnectedProfile":Z
    :try_start_0
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn disconnect : isConnectedProfile = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Profile: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " callingPackageName"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " callingUid"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5942
    if-nez p1, :cond_1

    .line 5943
    const-string v23, "ConnectivityService"

    const-string/jumbo v24, "vpn Profile Name passed is null in disconnect"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6070
    :cond_0
    :goto_0
    const/16 v23, 0x0

    :goto_1
    monitor-exit p0

    return v23

    .line 5946
    :cond_1
    :try_start_1
    new-instance v4, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v4}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 5947
    .local v4, "config":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 5948
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "config.session value is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    const/4 v9, 0x0

    .line 5950
    .local v9, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    .line 5951
    .local v21, "user":I
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "user value is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 5953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/HashMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v9, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5956
    .restart local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_2
    if-nez v9, :cond_5

    .line 5957
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "enterpriseVpn value is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    const/4 v15, 0x0

    .line 5959
    .local v15, "mProfileFound":Z
    const/4 v14, 0x0

    .line 5960
    .local v14, "key":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_3

    .line 5961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 5962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_4

    .line 5963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/HashMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v9, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5964
    .restart local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v9, :cond_4

    .line 5965
    const/4 v15, 0x1

    .line 5966
    move/from16 v21, v14

    .line 5971
    :cond_3
    if-nez v15, :cond_5

    .line 5972
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 5960
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 5977
    .end local v10    # "i":I
    .end local v14    # "key":I
    .end local v15    # "mProfileFound":Z
    :cond_5
    if-eqz v9, :cond_0

    .line 5978
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "enterpriseVpn value is not null "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5979
    const/4 v3, 0x1

    .line 5980
    .local v3, "bVpnDialogCall":Z
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->isConnectedProfile()Z

    move-result v12

    .line 5981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 5982
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 5983
    .local v19, "token":J
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->prepare()Z

    .line 5984
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5985
    const-string v23, "com.android.vpndialogs"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const/16 v23, 0x3e8

    move/from16 v0, p3

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 5986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 5987
    const/4 v3, 0x0

    .line 5989
    :cond_6
    const/4 v13, 0x1

    .line 5990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 5996
    .end local v19    # "token":J
    :goto_3
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn Initial numberOfConnectedProfile value is"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5997
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn isConnectedProfile value is"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5998
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_10

    .line 5999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 6000
    .local v17, "showIdentity":J
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v4, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Lcom/android/internal/net/VpnConfig;Z)V

    .line 6001
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->knoxVpnV2Enabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 6002
    if-eqz v13, :cond_9

    .line 6004
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v6

    .line 6005
    .local v6, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6007
    if-eqz v6, :cond_f

    .line 6008
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6009
    .local v5, "domain":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/ConnectivityService;->hasInterfaceAsUser(I)Z

    move-result v23

    if-nez v23, :cond_7

    .line 6010
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The connected Vpn is not exists in user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6011
    invoke-virtual {v9, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 6066
    .end local v3    # "bVpnDialogCall":Z
    .end local v4    # "config":Lcom/android/internal/net/VpnConfig;
    .end local v5    # "domain":I
    .end local v6    # "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "showIdentity":J
    .end local v21    # "user":I
    :catch_0
    move-exception v8

    .line 6067
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 5939
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    monitor-exit p0

    throw v23

    .line 5992
    .restart local v3    # "bVpnDialogCall":Z
    .restart local v4    # "config":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v21    # "user":I
    :cond_8
    :try_start_3
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->closeInterface()V

    .line 5994
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendInterfaceNameToKnoxVpn(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 6016
    .restart local v17    # "showIdentity":J
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 6017
    .local v7, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_b

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_b

    .line 6018
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_f

    .line 6019
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->hasInterfaceAsUser(I)Z

    move-result v23

    if-nez v23, :cond_a

    .line 6020
    const-string v24, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The connected Vpn is not exists in user "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6021
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 6018
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 6026
    .end local v10    # "i":I
    :cond_b
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v16

    .line 6027
    .local v16, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6029
    if-eqz v16, :cond_f

    .line 6030
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6031
    .restart local v5    # "domain":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/ConnectivityService;->hasInterfaceAsUser(I)Z

    move-result v23

    if-nez v23, :cond_c

    .line 6032
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The connected Vpn is not exists in user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6033
    invoke-virtual {v9, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    goto :goto_6

    .line 6040
    .end local v5    # "domain":I
    .end local v7    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v23, v0

    if-lez v23, :cond_e

    .line 6041
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    .line 6043
    :cond_e
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn Final numberOfConnectedProfile value is"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v23, v0

    if-nez v23, :cond_f

    .line 6045
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn numberOfConnectedProfile value check if 0"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6046
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification()V

    .line 6050
    :cond_f
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6053
    .end local v17    # "showIdentity":J
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    .line 6054
    .local v22, "vpnStoreObj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    if-nez v3, :cond_11

    .line 6055
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6056
    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v23

    if-eqz v23, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 6057
    :cond_12
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "disconnect - deleting vpnStoreObj : user = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 6064
    :goto_7
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 6060
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7
.end method

.method private emergencyOpenDataPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7508
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Never flush data path. reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    .line 7510
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V

    .line 7512
    :cond_0
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    return-void
.end method

.method private enforceMarkNetworkSocketPermission()V
    .locals 3

    .prologue
    .line 2913
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f5

    if-ne v0, v1, :cond_0

    .line 2919
    :goto_0
    return-void

    .line 2916
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MARK_NETWORK_SOCKET"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforcePreference()V
    .locals 3

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1262
    :cond_0
    return-void

    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    .line 1253
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearing down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in enforcePreference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1259
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 1252
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    return-void
.end method

.method private enforceVzw800ApnPermission(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 7754
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7755
    .local v1, "mPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 7756
    .local v0, "callingPackageName":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "VZW800APN"

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->isPackageAvsAuthorized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7757
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The caller do not have APN permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7760
    :cond_0
    return-void
.end method

.method private flushVmDnsCache()V
    .locals 5

    .prologue
    .line 4278
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4279
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4283
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4286
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4288
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4290
    return-void

    .line 4288
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getConnectivityChangeDelay()I
    .locals 4

    .prologue
    .line 1219
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1222
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "conn.connectivity_change_delay"

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1225
    .local v1, "defaultDelay":I
    const-string v2, "connectivity_change_delay"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private declared-synchronized getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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
    .line 5865
    monitor-enter p0

    :try_start_0
    const-string v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 5867
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_1
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5868
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 5876
    :goto_0
    monitor-exit p0

    return-object v2

    .line 5870
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 5872
    :catch_0
    move-exception v0

    .line 5873
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5876
    const/4 v2, 0x0

    goto :goto_0

    .line 5865
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;
    .locals 4
    .param p1, "tracker"    # Landroid/net/NetworkStateTracker;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1301
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1302
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1304
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1305
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1307
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v2, :cond_1

    .line 1308
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1310
    :cond_1
    return-object v0
.end method

.method private getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .locals 2

    .prologue
    .line 5715
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-nez v1, :cond_0

    .line 5716
    const-string v1, "knox_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5718
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 5720
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v1
.end method

.method private getNetworkInfo(II)Landroid/net/NetworkInfo;
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1393
    const/4 v0, 0x0

    .line 1395
    .local v0, "info":Landroid/net/NetworkInfo;
    const-string v3, "VZW"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1396
    if-eqz p1, :cond_0

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1399
    const/16 p1, 0xc

    .line 1404
    :cond_1
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1405
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v3, p1

    .line 1406
    .local v2, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v2, :cond_2

    .line 1407
    invoke-direct {p0, v2, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1410
    .end local v2    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1411
    if-nez p1, :cond_4

    .line 1412
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->checkCondition(Landroid/net/NetworkInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    if-eqz v3, :cond_4

    .line 1413
    :cond_3
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1414
    .local v1, "mInfo":Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    move-object v0, v1

    .line 1419
    .end local v1    # "mInfo":Landroid/net/NetworkInfo;
    :cond_4
    return-object v0
.end method

.method private getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    .locals 5
    .param p1, "networkType"    # I

    .prologue
    .line 1534
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1536
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1537
    new-instance v1, Landroid/net/NetworkState;

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    .line 1541
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersistedNetworkPreference()I
    .locals 4

    .prologue
    .line 1230
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1232
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1235
    .local v1, "networkPrefSetting":I
    return v1
.end method

.method private declared-synchronized getProfilesByDomain(I)Ljava/util/List;
    .locals 5
    .param p1, "domain"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5880
    monitor-enter p0

    :try_start_0
    const-string v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 5882
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_1
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5883
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 5891
    :goto_0
    monitor-exit p0

    return-object v2

    .line 5885
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 5887
    :catch_0
    move-exception v0

    .line 5888
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5891
    const/4 v2, 0x0

    goto :goto_0

    .line 5880
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getProvisioningNetworkInfo()Landroid/net/NetworkInfo;
    .locals 7

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1336
    const/4 v4, 0x0

    .line 1338
    .local v4, "provNi":Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworkInfoEx()[Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1339
    .local v3, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1340
    move-object v4, v3

    .line 1344
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProvisioningNetworkInfo: X provNi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1345
    return-object v4

    .line 1338
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getProvisioningUrlBaseFromFile(I)Ljava/lang/String;
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/4 v9, 0x0

    .line 7148
    const/4 v3, 0x0

    .line 7149
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v7, 0x0

    .line 7150
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7153
    .local v0, "config":Landroid/content/res/Configuration;
    packed-switch p1, :pswitch_data_0

    .line 7161
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getProvisioningUrlBaseFromFile: Unexpected parameter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 7155
    :pswitch_0
    const-string v8, "provisioningUrl"

    .line 7166
    .local v8, "tagType":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7167
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 7168
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 7169
    const-string v10, "provisioningUrls"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 7172
    :cond_0
    :goto_1
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7174
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 7175
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 7202
    if-eqz v4, :cond_1

    .line 7204
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_2
    move-object v3, v4

    .line 7208
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :cond_2
    :goto_3
    return-object v9

    .line 7158
    .end local v8    # "tagType":Ljava/lang/String;
    :pswitch_1
    const-string v8, "redirectedUrl"

    .line 7159
    .restart local v8    # "tagType":Ljava/lang/String;
    goto :goto_0

    .line 7177
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :cond_3
    :try_start_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7178
    const/4 v10, 0x0

    const-string v11, "mcc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 7180
    .local v5, "mcc":Ljava/lang/String;
    if-eqz v5, :cond_0

    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v10, v11, :cond_0

    .line 7181
    const/4 v10, 0x0

    const-string v11, "mnc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7182
    .local v6, "mnc":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v10, v11, :cond_0

    .line 7183
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 7184
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 7185
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v9

    .line 7202
    if-eqz v4, :cond_4

    .line 7204
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_4
    :goto_4
    move-object v3, v4

    .line 7185
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 7189
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "mnc":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 7190
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 7195
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 7196
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_5
    :try_start_7
    const-string v10, "Carrier Provisioning Urls file not found"

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 7202
    if-eqz v3, :cond_2

    .line 7204
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 7205
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    goto :goto_3

    .line 7197
    :catch_3
    move-exception v1

    .line 7198
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 7202
    if-eqz v3, :cond_2

    .line 7204
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_3

    .line 7199
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v1

    .line 7200
    .local v1, "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 7202
    if-eqz v3, :cond_2

    .line 7204
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_3

    .line 7202
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v3, :cond_5

    .line 7204
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 7202
    :cond_5
    :goto_9
    throw v9

    .line 7205
    :catch_5
    move-exception v10

    goto :goto_9

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_6
    move-exception v10

    goto/16 :goto_2

    .restart local v5    # "mcc":Ljava/lang/String;
    .restart local v6    # "mnc":Ljava/lang/String;
    :catch_7
    move-exception v10

    goto :goto_4

    .line 7202
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_8

    .line 7199
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .line 7197
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 7195
    :catch_a
    move-exception v1

    goto :goto_5

    .line 7153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRestoreDefaultNetworkDelay(I)I
    .locals 6
    .param p1, "networkType"    # I

    .prologue
    .line 4415
    const-string v4, "VZW"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4416
    const/16 v4, 0xc

    if-ne p1, v4, :cond_1

    .line 4417
    const-string/jumbo v4, "vzw.telephony.appsapn-restore"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4418
    .local v2, "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 4420
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 4450
    .end local v2    # "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 4421
    .restart local v2    # "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 4428
    .end local v2    # "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    :cond_1
    const-string v4, "android.telephony.apn-restore"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4432
    .local v1, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    const/16 v4, 0xb

    if-eq p1, v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 4436
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 4437
    :catch_1
    move-exception v0

    .line 4438
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 4443
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const v3, 0xea60

    .line 4446
    .local v3, "ret":I
    const/16 v4, 0x1a

    if-gt p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, p1

    if-eqz v4, :cond_0

    .line 4448
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, p1

    iget v3, v4, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_0
.end method

.method private getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 3

    .prologue
    .line 5703
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v1, :cond_1

    .line 5704
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5706
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 5707
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5709
    :cond_0
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 5711
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    .line 5150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SBM"

    const-string v1, "ro.csc.sales_code"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5153
    :cond_1
    const/4 p1, 0x0

    .line 5155
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v1

    .line 5169
    :goto_0
    return-void

    .line 5157
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-ne v0, p1, :cond_4

    monitor-exit v1

    goto :goto_0

    .line 5168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5158
    :cond_4
    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proxy properties, ignoring: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5160
    monitor-exit v1

    goto :goto_0

    .line 5162
    :cond_5
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 5164
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_6

    monitor-exit v1

    goto :goto_0

    .line 5165
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_7

    .line 5166
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    .line 5168
    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Captive portal check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 3666
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, v2

    .line 3667
    .local v1, "thisNet":Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 3669
    .local v0, "isWifiOverEthernet":Z
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3670
    const-string v3, "Captive check skipped due to previously connected Ethernet"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3671
    const/4 v0, 0x1

    .line 3675
    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3676
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v3, v2, :cond_1

    if-nez v0, :cond_1

    .line 3677
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip Captive check on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3693
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCaptivePortalTrackerCheck: call captivePortalCheckComplete ni="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3694
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    .line 3695
    :goto_0
    return-void

    .line 3686
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tear down low priority net "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3687
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .locals 13
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3453
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 3458
    .local v1, "newNetType":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(I)V

    .line 3461
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 3462
    .local v0, "isFailover":Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v5, v1

    .line 3463
    .local v4, "thisNet":Landroid/net/NetworkStateTracker;
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3472
    .local v3, "thisIface":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3473
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v1, :cond_2

    .line 3478
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3480
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v5, v6

    .line 3483
    .local v2, "otherNet":Landroid/net/NetworkStateTracker;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " teardown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3488
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DataKeepMobileEvenWifiOn"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3490
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eqz v5, :cond_1

    .line 3491
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3492
    const-string v5, "Network declined teardown request"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3493
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 3661
    .end local v2    # "otherNet":Landroid/net/NetworkStateTracker;
    :cond_0
    :goto_0
    return-void

    .line 3497
    .restart local v2    # "otherNet":Landroid/net/NetworkStateTracker;
    :cond_1
    const-string v5, "Mobile Network not teardown bcz we support both "

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3498
    iput v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Default network as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3500
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5, v11}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3501
    const-string v5, "Mobile Network route table entried flushed out forcefully "

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3604
    .end local v2    # "otherNet":Landroid/net/NetworkStateTracker;
    :cond_2
    :goto_1
    monitor-enter p0

    .line 3608
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3609
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v7, 0x8

    iget v8, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3614
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3617
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DataKeepMobileEvenWifiOn"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3620
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v5, v11, :cond_b

    if-nez v1, :cond_b

    .line 3621
    const-string v5, "no need to set Mobile as default if Wifi is active....."

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3637
    :goto_2
    iput v10, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3638
    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 3639
    iput-boolean v10, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 3643
    :cond_4
    invoke-interface {v4, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3644
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 3647
    invoke-direct {p0, v1, v10}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3651
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 3654
    if-eqz v3, :cond_0

    .line 3656
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v3, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3657
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 3504
    .restart local v2    # "otherNet":Landroid/net/NetworkStateTracker;
    :cond_5
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v5, v11, :cond_6

    if-ne v1, v12, :cond_6

    .line 3505
    const-string v5, "Do not teardown wifi when ethernet is connected"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3506
    iput v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Default network as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3508
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5, v11}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3509
    const-string v5, "Mobile Network route table entried flushed out forcefully "

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3511
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3512
    const-string v5, "Network declined teardown request"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3513
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto/16 :goto_0

    .line 3549
    .end local v2    # "otherNet":Landroid/net/NetworkStateTracker;
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DataKeepMobileEvenWifiOn"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3552
    if-eqz v1, :cond_8

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v5, v11, :cond_8

    .line 3553
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto/16 :goto_0

    .line 3555
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Just update the Network settings for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3557
    invoke-interface {v4, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3558
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 3559
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3560
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5, v11}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed route table entries for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Send Connected broadcast delayed instent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3563
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    goto/16 :goto_0

    .line 3566
    :cond_9
    if-ne v1, v11, :cond_a

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v5, v12, :cond_a

    .line 3567
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Just update the Network settings for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3569
    invoke-interface {v4, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3570
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 3571
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3572
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5, v11}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3573
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed route table entries for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Send Connected broadcast delayed instent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3575
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    goto/16 :goto_0

    .line 3577
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto/16 :goto_0

    .line 3614
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 3622
    :cond_b
    iput v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    goto/16 :goto_2

    .line 3624
    :cond_c
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v5, v12, :cond_d

    if-ne v1, v11, :cond_d

    .line 3625
    const-string v5, "no need to set Wifi as default if Ethernet is active....."

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3626
    :cond_d
    iput v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    goto/16 :goto_2
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3306
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v7, v9}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3308
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    .line 3309
    .local v4, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 3312
    .local v0, "extraInfo":Ljava/lang/String;
    if-nez v4, :cond_7

    .line 3313
    const-string v5, "."

    .line 3317
    .local v5, "reasonText":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3319
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3322
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "VZW"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_8

    .line 3324
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3325
    .local v3, "ni":Landroid/net/NetworkInfo;
    const-string v7, "networkInfo"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3331
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :goto_1
    const-string v7, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3332
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-nez v7, :cond_0

    .line 3333
    const-string v7, "noConnectivity"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3335
    :cond_0
    if-eqz v4, :cond_1

    .line 3336
    const-string v7, "reason"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3338
    :cond_1
    if-eqz v0, :cond_2

    .line 3339
    const-string v7, "extraInfo"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3341
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3342
    const-string v7, "isFailover"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3343
    invoke-virtual {p1, v9}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3346
    :cond_3
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3347
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 3348
    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v7, v11, :cond_9

    .line 3349
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v8, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v7, v7, v8

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 3350
    .local v6, "switchTo":Landroid/net/NetworkInfo;
    const-string v7, "otherNetwork"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3357
    .end local v6    # "switchTo":Landroid/net/NetworkInfo;
    :cond_4
    :goto_2
    const-string v7, "inetCondition"

    iget v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3359
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3360
    .local v1, "immediateIntent":Landroid/content/Intent;
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3361
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3362
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3364
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_DataKeepMobileEvenWifiOn"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3366
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3373
    :cond_5
    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v7, v11, :cond_6

    .line 3374
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v8, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v7, v7, v8

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 3376
    :cond_6
    return-void

    .line 3315
    .end local v1    # "immediateIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "reasonText":Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "reasonText":Ljava/lang/String;
    goto/16 :goto_0

    .line 3327
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v7, "networkInfo"

    new-instance v8, Landroid/net/NetworkInfo;

    invoke-direct {v8, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 3352
    :cond_9
    iput v9, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3353
    const-string v7, "noConnectivity"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method

.method private handleConnectivityChange(IZ)V
    .locals 19
    .param p1, "netType"    # I
    .param p2, "doReset"    # Z

    .prologue
    .line 3772
    if-eqz p2, :cond_3

    const/4 v14, 0x3

    .line 3773
    .local v14, "resetMask":I
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeExempt(I)Z

    move-result v5

    .line 3783
    .local v5, "exempt":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 3785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    move-object/from16 v16, v0

    aget-object v3, v16, p1

    .line 3786
    .local v3, "curLp":Landroid/net/LinkProperties;
    const/4 v12, 0x0

    .line 3788
    .local v12, "newLp":Landroid/net/LinkProperties;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v16

    if-eqz v16, :cond_4

    if-nez p1, :cond_4

    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->checkCondition(I)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 3791
    const-string v16, "handleConnectivityChange: remove Mobile Connection route table info "

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3882
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    move-object/from16 v16, v0

    aput-object v12, v16, p1

    .line 3884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v3, v1, v5}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZZ)Z

    move-result v13

    .line 3887
    .local v13, "resetDns":Z
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v3, v1}, Lcom/android/server/ConnectivityService;->updateSourceRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 3889
    const/4 v13, 0x0

    .line 3905
    if-nez v14, :cond_1

    if-eqz v13, :cond_13

    .line 3907
    :cond_1
    if-eqz v3, :cond_13

    .line 3909
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3910
    .local v8, "iface":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_12

    .line 3911
    if-eqz v14, :cond_11

    .line 3912
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "resetConnections("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3913
    invoke-static {v8, v14}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 3917
    and-int/lit8 v16, v14, 0x1

    if-eqz v16, :cond_11

    .line 3918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3919
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_10

    .line 3920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/connectivity/Vpn;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3919
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3772
    .end local v3    # "curLp":Landroid/net/LinkProperties;
    .end local v5    # "exempt":Z
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "iface":Ljava/lang/String;
    .end local v12    # "newLp":Landroid/net/LinkProperties;
    .end local v13    # "resetDns":Z
    .end local v14    # "resetMask":I
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 3792
    .restart local v3    # "curLp":Landroid/net/LinkProperties;
    .restart local v5    # "exempt":Z
    .restart local v12    # "newLp":Landroid/net/LinkProperties;
    .restart local v14    # "resetMask":I
    :cond_4
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 3795
    const-string v16, "handleConnectivityChange: remove Wifi Connection route table info "

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3800
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 3801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    .line 3809
    if-eqz v3, :cond_a

    .line 3810
    invoke-virtual {v3, v12}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 3811
    invoke-virtual {v3, v12}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v2

    .line 3812
    .local v2, "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v0, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v16

    if-nez v16, :cond_6

    iget-object v0, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v16

    if-eqz v16, :cond_c

    .line 3813
    :cond_6
    iget-object v0, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/LinkAddress;

    .line 3814
    .local v9, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 3815
    or-int/lit8 v14, v14, 0x1

    .line 3817
    :cond_8
    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/net/Inet6Address;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 3818
    or-int/lit8 v14, v14, 0x2

    goto :goto_4

    .line 3822
    .end local v9    # "linkAddr":Landroid/net/LinkAddress;
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " resetMask="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n   car="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3842
    .end local v2    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 3843
    const-string v16, "handleConnectivityChange: setting default proxy info "

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3845
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v16

    if-eqz v16, :cond_e

    if-nez p1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->checkCondition(I)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 3847
    const-string v16, "handleConnectivityChange: No need to set default proxy info for mobile bcz wifi active already"

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3861
    :cond_b
    :goto_6
    const-string v16, "CMCC"

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 3862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/NetworkConfig;->type:I

    move/from16 v16, v0

    const/16 v17, 0x16

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 3863
    const/4 v10, 0x0

    .line 3865
    .local v10, "mapn_destination":Landroid/net/LinkAddress;
    :try_start_1
    new-instance v11, Landroid/net/LinkAddress;

    const-string v16, "10.0.0.172"

    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    const/16 v17, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v10    # "mapn_destination":Landroid/net/LinkAddress;
    .local v11, "mapn_destination":Landroid/net/LinkAddress;
    move-object v10, v11

    .line 3869
    .end local v11    # "mapn_destination":Landroid/net/LinkAddress;
    .restart local v10    # "mapn_destination":Landroid/net/LinkAddress;
    :goto_7
    new-instance v16, Landroid/net/RouteInfo;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto/16 :goto_1

    .line 3828
    .end local v10    # "mapn_destination":Landroid/net/LinkAddress;
    .restart local v2    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_c
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " resetMask="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3834
    .end local v2    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_d
    const/4 v14, 0x3

    .line 3836
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " resetMask="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3848
    :cond_e
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 3850
    const-string v16, "handleConnectivityChange: No need to set default proxy info for wifi bcz ethernet active already"

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3857
    :cond_f
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_6

    .line 3866
    .restart local v10    # "mapn_destination":Landroid/net/LinkAddress;
    :catch_0
    move-exception v4

    .line 3867
    .local v4, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_7

    .line 3922
    .end local v4    # "e":Ljava/net/UnknownHostException;
    .end local v10    # "mapn_destination":Landroid/net/LinkAddress;
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "iface":Ljava/lang/String;
    .restart local v13    # "resetDns":Z
    :cond_10
    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3925
    .end local v6    # "i":I
    :cond_11
    if-eqz v13, :cond_2

    .line 3926
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    .line 3929
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 3930
    :catch_1
    move-exception v4

    .line 3932
    .local v4, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception resetting dns cache: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3922
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "i":I
    :catchall_0
    move-exception v16

    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v16

    .line 3936
    .end local v6    # "i":I
    :cond_12
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Can\'t reset connection for type "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3943
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "iface":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v16, v0

    aget-object v15, v16, p1

    .line 3944
    .local v15, "tracker":Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 3951
    invoke-static {v3}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v16

    if-eqz v16, :cond_14

    invoke-static {v12}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v16

    if-nez v16, :cond_14

    .line 3952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    .line 3955
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v16

    if-eqz v16, :cond_17

    if-nez p1, :cond_17

    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->checkCondition(I)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 3958
    const-string v16, "handleConnectivityChange: Skip startClat if checkCondition is true in Emergency Mode"

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3971
    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v16

    const-string v17, "linkPropertiesChanged"

    invoke-static/range {v16 .. v17}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_16

    .line 3973
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v16

    if-eqz v16, :cond_16

    .line 3974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange()V

    .line 3987
    :cond_16
    return-void

    .line 3961
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v16

    if-eqz v16, :cond_18

    .line 3962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/server/connectivity/Nat464Xlat;->startClat(Landroid/net/NetworkStateTracker;)V

    goto :goto_8

    .line 3964
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    goto :goto_8
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5172
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5174
    .local v3, "proxy":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5175
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5176
    .local v0, "data":[Ljava/lang/String;
    array-length v6, v0

    if-nez v6, :cond_1

    .line 5192
    .end local v0    # "data":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5180
    .restart local v0    # "data":[Ljava/lang/String;
    :cond_1
    aget-object v4, v0, v8

    .line 5181
    .local v4, "proxyHost":Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 5182
    .local v5, "proxyPort":I
    array-length v6, v0

    if-le v6, v9, :cond_2

    .line 5184
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 5189
    :cond_2
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v6, v0, v8

    const-string v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5190
    .local v2, "p":Landroid/net/ProxyProperties;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 5185
    .end local v2    # "p":Landroid/net/ProxyProperties;
    :catch_0
    move-exception v1

    .line 5186
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 26
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 2930
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    .line 2932
    .local v18, "prevNetType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    aget-object v21, v21, v18

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2935
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(I)V

    .line 2944
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v21, v0

    aget-object v21, v21, v18

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v21

    if-nez v21, :cond_0

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v17, v21, v18

    .line 2946
    .local v17, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 2950
    .local v16, "pid":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2954
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v16    # "pid":Ljava/lang/Integer;
    .end local v17    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    .line 2955
    .local v5, "e":Ljava/util/ConcurrentModificationException;
    invoke-virtual {v5}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 2958
    .end local v5    # "e":Ljava/util/ConcurrentModificationException;
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v21, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2961
    .local v8, "intent":Landroid/content/Intent;
    const-string v21, "VZW"

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    const/16 v22, 0x18

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 2963
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v14

    .line 2964
    .local v14, "ni":Landroid/net/NetworkInfo;
    const-string v21, "networkInfo"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2970
    .end local v14    # "ni":Landroid/net/NetworkInfo;
    :goto_1
    const-string v21, "networkType"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2972
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 2973
    const-string v21, "isFailover"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2974
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2976
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_2

    .line 2977
    const-string v21, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2979
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 2980
    const-string v21, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2984
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v21, v0

    aget-object v21, v21, v18

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2985
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 2986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    invoke-interface/range {v21 .. v21}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    .line 2988
    .local v19, "switchTo":Landroid/net/NetworkInfo;
    const-string v21, "otherNetwork"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2994
    .end local v19    # "switchTo":Landroid/net/NetworkInfo;
    :cond_4
    :goto_2
    const-string v21, "inetCondition"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2997
    const/4 v4, 0x1

    .line 2998
    .local v4, "doReset":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    aget-object v21, v21, v18

    invoke-interface/range {v21 .. v21}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v11

    .line 2999
    .local v11, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v11, :cond_9

    .line 3000
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    .line 3001
    .local v15, "oldIface":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 3002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v3, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v10, :cond_9

    aget-object v13, v3, v6

    .line 3003
    .local v13, "networkStateTracker":Landroid/net/NetworkStateTracker;
    if-nez v13, :cond_8

    .line 3002
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2966
    .end local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v4    # "doReset":Z
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "linkProperties":Landroid/net/LinkProperties;
    .end local v13    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .end local v15    # "oldIface":Ljava/lang/String;
    :cond_6
    const-string v21, "networkInfo"

    new-instance v22, Landroid/net/NetworkInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 2990
    :cond_7
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2991
    const-string v21, "noConnectivity"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 3004
    .restart local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .restart local v4    # "doReset":Z
    .restart local v6    # "i$":I
    .restart local v10    # "len$":I
    .restart local v11    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v13    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .restart local v15    # "oldIface":Ljava/lang/String;
    :cond_8
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 3005
    .local v12, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 3006
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 3007
    .local v9, "l":Landroid/net/LinkProperties;
    if-eqz v9, :cond_5

    .line 3008
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 3009
    const/4 v4, 0x0

    .line 3043
    .end local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v6    # "i$":I
    .end local v9    # "l":Landroid/net/LinkProperties;
    .end local v10    # "len$":I
    .end local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v13    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .end local v15    # "oldIface":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3045
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3046
    .local v7, "immediateIntent":Landroid/content/Intent;
    const-string v21, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3049
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3050
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 3054
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_RIL_DataKeepMobileEvenWifiOn"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 3057
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 3058
    monitor-enter p0

    .line 3062
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 3063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v22

    const-wide/16 v23, 0x3e8

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3068
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v22, v0

    aget-object v20, v21, v22

    .line 3070
    .local v20, "thisNet":Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 3071
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3073
    .end local v20    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_b
    const-string v21, "Sending Broadcast intent after updating Route table"

    invoke-static/range {v21 .. v21}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3074
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3075
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 3076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x12

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3080
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 3081
    monitor-enter p0

    .line 3085
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v22

    const-wide/16 v23, 0x3e8

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3091
    :cond_d
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v22, v0

    aget-object v20, v21, v22

    .line 3093
    .restart local v20    # "thisNet":Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 3094
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3113
    .end local v20    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 3114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    invoke-interface/range {v21 .. v21}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 3117
    :cond_f
    return-void

    .line 3068
    :catchall_0
    move-exception v21

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v21

    .line 3091
    :catchall_1
    move-exception v21

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v21
.end method

.method private handleDnsConfigurationChange(I)V
    .locals 18
    .param p1, "netType"    # I

    .prologue
    .line 4353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v1, p1

    .line 4355
    .local v13, "nt":Landroid/net/NetworkStateTracker;
    const/4 v8, 0x0

    .line 4357
    .local v8, "dnsCount":I
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4358
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v14

    .line 4359
    .local v14, "p":Landroid/net/LinkProperties;
    if-nez v14, :cond_1

    .line 4408
    .end local v14    # "p":Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-void

    .line 4360
    .restart local v14    # "p":Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {v14}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    .line 4362
    .local v4, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4363
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 4364
    .local v2, "network":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 4365
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    .line 4368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dns Setting is skipped becauuse mActiveDefaultNetwork = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4370
    :cond_2
    invoke-virtual {v14}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 4371
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4406
    .end local v2    # "network":Ljava/lang/String;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    goto :goto_0

    .line 4371
    .restart local v2    # "network":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4374
    .end local v2    # "network":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 4375
    .local v7, "dns":Ljava/net/InetAddress;
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    .line 4376
    .local v9, "dnsString":Ljava/lang/String;
    const-string v1, "0.0.0.0"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4377
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4380
    .end local v7    # "dns":Ljava/net/InetAddress;
    .end local v9    # "dnsString":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 4381
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4382
    .restart local v4    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4385
    :cond_8
    new-instance v11, Ljava/io/File;

    const-string v1, "/data/data/com.test.LTEfunctionality/files/blockdns"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4386
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    .line 4389
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v14}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4397
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v16, v1, p1

    .line 4398
    .local v16, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 4400
    .local v15, "pid":Ljava/lang/Integer;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v14}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 4401
    :catch_0
    move-exception v10

    .line 4402
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception setting interface for pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4391
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "pid":Ljava/lang/Integer;
    .end local v16    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v10

    .line 4392
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception setting dns servers: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleInetConditionChange(II)V
    .locals 6
    .param p1, "netType"    # I
    .param p2, "condition"    # I

    .prologue
    .line 4985
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 4986
    const-string v1, "handleInetConditionChange: no active default network - ignore"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5018
    :cond_0
    :goto_0
    return-void

    .line 4989
    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_2

    .line 4990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionChange: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4999
    :cond_2
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 5001
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_0

    .line 5004
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    .line 5005
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5011
    .local v0, "delay":I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 5012
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 5008
    .end local v0    # "delay":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "delay":I
    goto :goto_1
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 3
    .param p1, "netType"    # I
    .param p2, "sequence"    # I

    .prologue
    .line 5022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionHoldEnd: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5026
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 5028
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5029
    const-string v1, "handleInetConditionHoldEnd: no active default network - ignoring"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5050
    :goto_0
    return-void

    .line 5032
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 5033
    const-string v1, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5043
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5044
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5045
    const-string v1, "handleInetConditionHoldEnd: default network not connected - ignoring"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5048
    :cond_2
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 5049
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleMobileProvisioningAction(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 7012
    const/4 v4, 0x5

    invoke-direct {p0, v5, v4, v6, v6}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 7016
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 7017
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7018
    const-string v4, "handleMobileProvisioningAction: on provisioning network"

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7019
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v5

    check-cast v1, Landroid/net/MobileDataStateTracker;

    .line 7021
    .local v1, "mdst":Landroid/net/MobileDataStateTracker;
    invoke-virtual {v1, p1}, Landroid/net/MobileDataStateTracker;->enableMobileProvisioning(Ljava/lang/String;)V

    .line 7035
    .end local v1    # "mdst":Landroid/net/MobileDataStateTracker;
    :goto_0
    return-void

    .line 7023
    :cond_0
    const-string v4, "handleMobileProvisioningAction: on default network"

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7024
    const-string v4, "android.intent.action.MAIN"

    const-string v5, "android.intent.category.APP_BROWSER"

    invoke-static {v4, v5}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 7026
    .local v2, "newIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7027
    const/high16 v4, 0x10400000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7030
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7031
    :catch_0
    move-exception v0

    .line 7032
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMobileProvisioningAction: startActivity failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNetworkSamplingTimeout()V
    .locals 11

    .prologue
    .line 7410
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 7412
    .local v4, "mapIfaceToSample":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/SamplingDataTracker$SamplingSnapshot;>;"
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v7, v0, v1

    .line 7413
    .local v7, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_0

    .line 7414
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 7415
    .local v2, "ifaceName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 7416
    const/4 v8, 0x0

    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7412
    .end local v2    # "ifaceName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7422
    .end local v7    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1
    invoke-static {v4}, Landroid/net/SamplingDataTracker;->getSamplingSnapshots(Ljava/util/Map;)V

    .line 7425
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v7, v0, v1

    .line 7426
    .restart local v7    # "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_2

    .line 7427
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 7428
    .restart local v2    # "ifaceName":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 7429
    .local v6, "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    if-eqz v6, :cond_2

    .line 7431
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 7433
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 7425
    .end local v2    # "ifaceName":Ljava/lang/String;
    .end local v6    # "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7438
    .end local v7    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_3
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "connectivity_sampling_interval_in_seconds"

    const/4 v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 7445
    .local v5, "samplingIntervalInSeconds":I
    if-lez v5, :cond_4

    .line 7446
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting timer for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7449
    mul-int/lit16 v8, v5, 0x3e8

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ConnectivityService;->setAlarm(ILandroid/app/PendingIntent;)V

    .line 7451
    :cond_4
    return-void
.end method

.method private handleSetDependencyMet(IZ)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 2630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDependencyMet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2632
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setDependencyMet(Z)V

    .line 2634
    :cond_0
    return-void
.end method

.method private handleSetMobileData(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 2824
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2828
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 2830
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 2834
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 2836
    :cond_1
    return-void
.end method

.method private handleSetMobileDataEx(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 2840
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2844
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Landroid/net/NetworkStateTracker;->setUserDataEnableEx(ZI)V

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 2850
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Landroid/net/NetworkStateTracker;->setUserDataEnableEx(ZI)V

    .line 2852
    :cond_1
    return-void
.end method

.method private handleSetNetworkPreference(I)V
    .locals 1
    .param p1, "preference"    # I

    .prologue
    .line 1202
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, p1, :cond_0

    .line 1210
    monitor-enter p0

    .line 1211
    :try_start_0
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 1212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 1216
    :cond_0
    return-void

    .line 1212
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleSetPolicyDataEnable(IZ)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 2866
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2867
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 2868
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 2869
    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setPolicyDataEnable(Z)V

    .line 2872
    if-nez p1, :cond_0

    .line 2873
    iput-boolean p2, p0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 2878
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_0
    return-void
.end method

.method private hasInterfaceAsUser(I)Z
    .locals 11
    .param p1, "user"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5779
    const-string v6, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasInterfaceAsUser : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5781
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getProfilesByDomain(I)Ljava/util/List;

    move-result-object v5

    .line 5782
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 5784
    .local v1, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    const-string v6, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasInterfaceAsUser > profiles.size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 5786
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 5787
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 5788
    .local v4, "key":I
    const-string v9, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasInterfaceAsUser > vpn key : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", profileName : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5789
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 5790
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5791
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v1, :cond_1

    .line 5792
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 5793
    const-string v6, "ConnectivityService"

    const-string v9, "hasInterfaceAsUser : return true"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 5819
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "key":I
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return v6

    .line 5796
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "key":I
    .restart local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "ConnectivityService"

    const-string v9, "hasInterfaceAsUser : interface name is null"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5786
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5799
    :cond_2
    const-string v6, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasInterfaceAsUser : mEnterpriseVpnStoreObj is null "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 5817
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "key":I
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 5818
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 5819
    goto :goto_2

    .line 5785
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 5805
    .end local v3    # "j":I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 5806
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5807
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v1, :cond_5

    .line 5808
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 5809
    const-string v6, "ConnectivityService"

    const-string v9, "hasInterfaceAsUser : return true"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 5810
    goto :goto_2

    .line 5815
    :cond_5
    const-string v6, "ConnectivityService"

    const-string v7, "hasInterfaceAsUser : return false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v8

    .line 5816
    goto :goto_2
.end method

.method private isAddressUnderVpn(Ljava/net/InetAddress;)Z
    .locals 11
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v7, 0x0

    .line 2259
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8

    .line 2260
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2262
    .local v5, "uid":I
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Vpn;

    .line 2263
    .local v6, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v6, :cond_0

    .line 2264
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2284
    :goto_0
    return v7

    .line 2268
    :cond_0
    :try_start_3
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2269
    .local v2, "destination":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2273
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    .line 2274
    .local v4, "prefix":I
    invoke-static {p1, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 2275
    .local v0, "addrMasked":Ljava/net/InetAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-static {v10, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v1

    .line 2278
    .local v1, "destMasked":Ljava/net/InetAddress;
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2279
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v8

    goto :goto_0

    .line 2286
    .end local v0    # "addrMasked":Ljava/net/InetAddress;
    .end local v1    # "destMasked":Ljava/net/InetAddress;
    .end local v2    # "destination":Landroid/net/LinkAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "prefix":I
    .end local v5    # "uid":I
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 2284
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "uid":I
    .restart local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_2
    :try_start_5
    invoke-virtual {v6, p1}, Lcom/android/server/connectivity/Vpn;->isAddressCovered(Ljava/net/InetAddress;)Z

    move-result v7

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 2285
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private isCaptivePortalAllowedNetwork(Landroid/net/NetworkInfo;)Z
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 7621
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCaptivePortalAllowedNetworkTypes:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method private isIpv4Connected(Landroid/net/LinkProperties;)Z
    .locals 7
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2233
    const/4 v4, 0x0

    .line 2235
    .local v4, "ret":Z
    if-eqz p1, :cond_1

    .line 2236
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 2237
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2238
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 2239
    check-cast v3, Ljava/net/Inet4Address;

    .line 2240
    .local v3, "i4addr":Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2242
    const/4 v4, 0x1

    .line 2249
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "i4addr":Ljava/net/Inet4Address;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIpv4Connected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2251
    return v4
.end method

.method private isIpv6Connected(Landroid/net/LinkProperties;)Z
    .locals 7
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2211
    const/4 v4, 0x0

    .line 2213
    .local v4, "ret":Z
    if-eqz p1, :cond_1

    .line 2214
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 2215
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2216
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 2217
    check-cast v3, Ljava/net/Inet6Address;

    .line 2218
    .local v3, "i6addr":Ljava/net/Inet6Address;
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2220
    const/4 v4, 0x1

    .line 2227
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "i6addr":Ljava/net/Inet6Address;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIpv6Connected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2229
    return v4
.end method

.method private isMobileDataStateTrackerReady()Z
    .locals 3

    .prologue
    .line 6407
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v2, 0x5

    aget-object v0, v1, v2

    check-cast v0, Landroid/net/MobileDataStateTracker;

    .line 6409
    .local v0, "mdst":Landroid/net/MobileDataStateTracker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/MobileDataStateTracker;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z
    .locals 7
    .param p1, "tracker"    # Landroid/net/NetworkStateTracker;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1278
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1282
    .local v0, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1283
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1284
    .local v1, "networkCostly":Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1285
    .local v2, "uidRules":I
    monitor-exit v4

    .line 1287
    if-eqz v1, :cond_0

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 1288
    const/4 v3, 0x1

    .line 1292
    :cond_0
    return v3

    .line 1285
    .end local v1    # "networkCostly":Z
    .end local v2    # "uidRules":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isNetworkMeteredUnchecked(I)Z
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1575
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1576
    .local v0, "state":Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1578
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1582
    :goto_0
    return v1

    .line 1579
    :catch_0
    move-exception v1

    .line 1582
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewNetTypePreferredOverCurrentNetType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 3444
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/net/NetworkConfig;->priority:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v0, v1, :cond_2

    .line 3447
    :cond_1
    const/4 v0, 0x0

    .line 3449
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPackageAvsAuthorized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "api"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 7722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageAvsAuthorized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7723
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7744
    :cond_0
    :goto_0
    return v8

    .line 7726
    :cond_1
    const/4 v8, 0x0

    .line 7727
    .local v8, "result":Z
    const/4 v6, 0x0

    .line 7728
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7731
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://com.verizon.vzwavs.provider/apis"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7733
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7734
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 7740
    :cond_2
    if-eqz v6, :cond_3

    .line 7741
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7743
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageAvsAuthorized result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 7736
    :catch_0
    move-exception v7

    .line 7738
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7740
    if-eqz v6, :cond_3

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 7741
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7740
    :cond_4
    throw v1
.end method

.method private isSprintSignedApplication(I)Z
    .locals 13
    .param p1, "uid"    # I

    .prologue
    .line 7774
    const/4 v0, 0x0

    .line 7775
    .local v0, "callingPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v9, 0x0

    .line 7777
    .local v9, "permissionPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 7778
    .local v6, "mPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 7780
    .local v1, "callingPackageName":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7783
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v1, v11

    const/16 v12, 0x40

    invoke-virtual {v6, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 7784
    const-string v11, "com.sec.sprextension"

    const/16 v12, 0x40

    invoke-virtual {v6, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 7793
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7795
    .local v2, "callingPackageSignatures":[Landroid/content/pm/Signature;
    if-eqz v2, :cond_2

    .line 7796
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7798
    .local v10, "permissionPackageSignatures":[Landroid/content/pm/Signature;
    array-length v7, v2

    .line 7799
    .local v7, "numberOfCallingPackageSignatures":I
    array-length v8, v10

    .line 7801
    .local v8, "numberOfPermissionPackageSignatures":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 7802
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 7803
    aget-object v11, v2, v4

    aget-object v12, v10, v5

    invoke-virtual {v11, v12}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 7804
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Signature of the calling post loaded application matched with provided signatures "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v2, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7805
    const/4 v11, 0x1

    .line 7817
    .end local v2    # "callingPackageSignatures":[Landroid/content/pm/Signature;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "numberOfCallingPackageSignatures":I
    .end local v8    # "numberOfPermissionPackageSignatures":I
    .end local v10    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :goto_2
    return v11

    .line 7786
    :catch_0
    move-exception v3

    .line 7788
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 7789
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handling NameNotFoundException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7790
    const/4 v11, 0x0

    goto :goto_2

    .line 7802
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "callingPackageSignatures":[Landroid/content/pm/Signature;
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "numberOfCallingPackageSignatures":I
    .restart local v8    # "numberOfPermissionPackageSignatures":I
    .restart local v10    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7801
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7811
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "numberOfCallingPackageSignatures":I
    .end local v8    # "numberOfPermissionPackageSignatures":I
    .end local v10    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :cond_2
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    .line 7812
    const-string v11, "Its a preloaded application"

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7813
    const/4 v11, 0x1

    goto :goto_2

    .line 7816
    :cond_3
    const-string v11, "It is neither a preloaded app nor a post loaded app with correct signature"

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7817
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private isVzwAppsApnPermissionGranted(I)Z
    .locals 21
    .param p1, "uid"    # I

    .prologue
    .line 7627
    const-string v19, "Entered into isVzwAppsApnPermissionGranted"

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7629
    const/4 v3, 0x0

    .line 7630
    .local v3, "callingPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v15, 0x0

    .line 7632
    .local v15, "permissionPackageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 7633
    .local v11, "mPackageManager":Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 7635
    .local v4, "callingPackageName":[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "package: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v4, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7636
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 7639
    .local v17, "token":J
    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v4, v19

    const/16 v20, 0x40

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 7640
    const-string v19, "com.verizon.permissions.vzwappapn"

    const/16 v20, 0x40

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 7646
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7656
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7658
    .local v5, "callingPackageSignatures":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_2

    .line 7660
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "signature: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v5, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7662
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    .line 7664
    .local v16, "permissionPackageSignatures":[Landroid/content/pm/Signature;
    array-length v13, v5

    .line 7665
    .local v13, "numberOfCallingPackageSignatures":I
    move-object/from16 v0, v16

    array-length v14, v0

    .line 7667
    .local v14, "numberOfPermissionPackageSignatures":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_2

    .line 7668
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "signature: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7669
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v14, :cond_1

    .line 7671
    aget-object v19, v5, v7

    aget-object v20, v16, v10

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 7673
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Signature of the calling post loaded application matched with verizon provided signatures "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7674
    const/16 v19, 0x1

    .line 7710
    .end local v5    # "callingPackageSignatures":[Landroid/content/pm/Signature;
    .end local v7    # "i":I
    .end local v10    # "j":I
    .end local v13    # "numberOfCallingPackageSignatures":I
    .end local v14    # "numberOfPermissionPackageSignatures":I
    .end local v16    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :goto_2
    return v19

    .line 7641
    :catch_0
    move-exception v6

    .line 7642
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 7643
    const-string v19, "ConnectivityService"

    const-string v20, "isVzwAppsApnPermissionGranted calling package NameNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7644
    const/16 v19, 0x0

    .line 7646
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19

    .line 7669
    .restart local v5    # "callingPackageSignatures":[Landroid/content/pm/Signature;
    .restart local v7    # "i":I
    .restart local v10    # "j":I
    .restart local v13    # "numberOfCallingPackageSignatures":I
    .restart local v14    # "numberOfPermissionPackageSignatures":I
    .restart local v16    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 7667
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7679
    .end local v7    # "i":I
    .end local v10    # "j":I
    .end local v13    # "numberOfCallingPackageSignatures":I
    .end local v14    # "numberOfPermissionPackageSignatures":I
    .end local v16    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 7681
    .local v8, "identity":J
    :try_start_2
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_5

    .line 7683
    const-string v19, "It is a preloaded application"

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7684
    const/16 v19, 0x0

    aget-object v19, v4, v19

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 7687
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_3

    .line 7688
    const-string v19, "This preloaded application does not have the meta-data tag."

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7689
    const/16 v19, 0x0

    .line 7706
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 7692
    :cond_3
    :try_start_3
    const-string v19, "com.verizon.VZWAPPAPN"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 7694
    .local v12, "metaDataValue":Ljava/lang/String;
    if-eqz v12, :cond_5

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "VerizonDefinedPermission"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 7695
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Its a preloaded application with metadata "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7696
    const/16 v19, 0x1

    goto :goto_3

    .line 7700
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v12    # "metaDataValue":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 7703
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 7704
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7706
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7709
    const-string v19, "It is neither a preloaded app nor a post loaded app with correct signature"

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7710
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 7706
    :catchall_1
    move-exception v19

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method private loadGlobalProxy()V
    .locals 8

    .prologue
    .line 5115
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 5116
    .local v5, "res":Landroid/content/ContentResolver;
    const-string v6, "global_http_proxy_host"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5117
    .local v1, "host":Ljava/lang/String;
    const-string v6, "global_http_proxy_port"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 5118
    .local v3, "port":I
    const-string v6, "global_http_proxy_exclusion_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5120
    .local v0, "exclList":Ljava/lang/String;
    const-string v6, "global_proxy_pac_url"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5121
    .local v2, "pacFileUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5123
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5124
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;)V

    .line 5128
    .local v4, "proxyProperties":Landroid/net/ProxyProperties;
    :goto_0
    invoke-virtual {v4}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v6

    if-nez v6, :cond_3

    .line 5129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid proxy properties, ignoring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5137
    .end local v4    # "proxyProperties":Landroid/net/ProxyProperties;
    :cond_1
    :goto_1
    return-void

    .line 5126
    :cond_2
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v1, v3, v0}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v4    # "proxyProperties":Landroid/net/ProxyProperties;
    goto :goto_0

    .line 5133
    :cond_3
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5134
    :try_start_0
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 5135
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 5232
    const-string v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 5236
    const-string v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    return-void
.end method

.method private static makeEthernetStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackerHandler"    # Landroid/os/Handler;

    .prologue
    .line 1059
    const-string v7, "ConnectivityService"

    const-string v8, "Starting Ethernet Service."

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v1, 0x0

    .line 1063
    .local v1, "est":Ljava/lang/Object;
    :try_start_0
    const-string v7, "android.net.ethernet.EthernetStateTracker"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1064
    .local v2, "estClass":Ljava/lang/Class;
    const-string v7, "com.android.server.EthernetService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1066
    .local v5, "ethernetserviceClass":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Handler;

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1067
    .local v3, "estConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 1069
    .local v6, "ethernetserviceConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1070
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 1072
    .local v4, "ethernetService":Landroid/os/IBinder;
    const-string v7, "ethernet"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    check-cast v1, Landroid/net/NetworkStateTracker;

    .end local v1    # "est":Ljava/lang/Object;
    .end local v2    # "estClass":Ljava/lang/Class;
    .end local v3    # "estConstructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "ethernetService":Landroid/os/IBinder;
    .end local v5    # "ethernetserviceClass":Ljava/lang/Class;
    .end local v6    # "ethernetserviceConstructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v1

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ConnectivityService"

    const-string v8, "Could not load EthernetStateTracker"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v1

    goto :goto_0
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    .line 3258
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_0

    .line 3259
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 3262
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3263
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3264
    const-string v1, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3265
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3266
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3267
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3269
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3270
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3272
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3273
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3276
    :cond_3
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3277
    return-object v0
.end method

.method private static makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackerHandler"    # Landroid/os/Handler;

    .prologue
    .line 1098
    const/4 v13, 0x0

    .line 1099
    .local v13, "wimaxStateTrackerClass":Ljava/lang/Class;
    const/4 v10, 0x0

    .line 1107
    .local v10, "wimaxServiceClass":Ljava/lang/Class;
    const/4 v12, 0x0

    .line 1109
    .local v12, "wimaxStateTracker":Landroid/net/NetworkStateTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x111004c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1112
    .local v3, "isWimaxEnabled":Z
    if-eqz v3, :cond_0

    .line 1114
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104006e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1116
    .local v6, "wimaxJarLocation":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104006f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1118
    .local v7, "wimaxLibLocation":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040070

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1120
    .local v9, "wimaxManagerClassName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040071

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1122
    .local v11, "wimaxServiceClassName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040072

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1125
    .local v14, "wimaxStateTrackerClassName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "wimaxJarLocation: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1126
    new-instance v5, Ldalvik/system/DexClassLoader;

    new-instance v17, Landroid/content/ContextWrapper;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v6, v0, v7, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1131
    .local v5, "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v5, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1132
    .local v8, "wimaxManagerClass":Ljava/lang/Class;
    invoke-virtual {v5, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 1133
    invoke-virtual {v5, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 1144
    :try_start_2
    const-string v17, "Starting Wimax Service... "

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1146
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Landroid/os/Handler;

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 1148
    .local v16, "wmxStTrkrConst":Ljava/lang/reflect/Constructor;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p0, v17, v18

    const/16 v18, 0x1

    aput-object p1, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v12, v0

    .line 1151
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 1153
    .local v15, "wmxSrvConst":Ljava/lang/reflect/Constructor;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1154
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p0, v17, v18

    const/16 v18, 0x1

    aput-object v12, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 1155
    .local v4, "svcInvoker":Landroid/os/IBinder;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1157
    const-string v17, "WiMax"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v12

    .line 1168
    .end local v4    # "svcInvoker":Landroid/os/IBinder;
    .end local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .end local v6    # "wimaxJarLocation":Ljava/lang/String;
    .end local v7    # "wimaxLibLocation":Ljava/lang/String;
    .end local v8    # "wimaxManagerClass":Ljava/lang/Class;
    .end local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .end local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .end local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    .end local v15    # "wmxSrvConst":Ljava/lang/reflect/Constructor;
    .end local v16    # "wmxStTrkrConst":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v17

    .line 1134
    .restart local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v6    # "wimaxJarLocation":Ljava/lang/String;
    .restart local v7    # "wimaxLibLocation":Ljava/lang/String;
    .restart local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .restart local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .restart local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception finding Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1136
    const/16 v17, 0x0

    goto :goto_0

    .line 1138
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .end local v6    # "wimaxJarLocation":Ljava/lang/String;
    .end local v7    # "wimaxLibLocation":Ljava/lang/String;
    .end local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .end local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .end local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1139
    .local v2, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v17, "Wimax Resources does not exist!!! "

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1140
    const/16 v17, 0x0

    goto :goto_0

    .line 1159
    .end local v2    # "ex":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v6    # "wimaxJarLocation":Ljava/lang/String;
    .restart local v7    # "wimaxLibLocation":Ljava/lang/String;
    .restart local v8    # "wimaxManagerClass":Ljava/lang/Class;
    .restart local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .restart local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .restart local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1160
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception creating Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1161
    const/16 v17, 0x0

    goto :goto_0

    .line 1164
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .end local v6    # "wimaxJarLocation":Ljava/lang/String;
    .end local v7    # "wimaxLibLocation":Ljava/lang/String;
    .end local v8    # "wimaxManagerClass":Ljava/lang/Class;
    .end local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .end local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .end local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :cond_0
    const-string v17, "Wimax is not enabled or not added to the network attributes!!! "

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1165
    const/16 v17, 0x0

    goto :goto_0
.end method

.method private modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z
    .locals 10
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "cycleCount"    # I
    .param p4, "doAdd"    # Z
    .param p5, "toDefaultTable"    # Z
    .param p6, "exempt"    # Z

    .prologue
    .line 2475
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2476
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRoute got unexpected null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2477
    const/4 v0, 0x0

    .line 2565
    :goto_0
    return v0

    .line 2480
    :cond_1
    const/16 v0, 0xa

    if-le p3, v0, :cond_2

    .line 2481
    const-string v0, "Error modifying route - too much recursion"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2482
    const/4 v0, 0x0

    goto :goto_0

    .line 2485
    :cond_2
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v9

    .line 2486
    .local v9, "ifaceName":Ljava/lang/String;
    if-nez v9, :cond_3

    .line 2487
    const-string v0, "Error modifying route - no interface name"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2488
    const/4 v0, 0x0

    goto :goto_0

    .line 2490
    :cond_3
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2491
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 2492
    .local v2, "bestRoute":Landroid/net/RouteInfo;
    if-eqz v2, :cond_4

    .line 2493
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2495
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 2503
    :goto_1
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    .line 2506
    .end local v2    # "bestRoute":Landroid/net/RouteInfo;
    :cond_4
    if-eqz p4, :cond_8

    .line 2509
    if-eqz p5, :cond_7

    .line 2510
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2512
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2513
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 2514
    if-eqz p6, :cond_5

    .line 2515
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    .line 2516
    .local v7, "dest":Landroid/net/LinkAddress;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2517
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v7}, Landroid/os/INetworkManagementService;->setHostExemption(Landroid/net/LinkAddress;)V

    .line 2518
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2521
    .end local v7    # "dest":Landroid/net/LinkAddress;
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2565
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2499
    .restart local v2    # "bestRoute":Landroid/net/RouteInfo;
    :cond_6
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_1

    .line 2521
    .end local v2    # "bestRoute":Landroid/net/RouteInfo;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2525
    :catch_0
    move-exception v8

    .line 2527
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception trying to add a route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2528
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2523
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 2533
    :cond_8
    if-eqz p5, :cond_a

    .line 2534
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2535
    :try_start_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2536
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-nez v0, :cond_9

    .line 2539
    :try_start_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 2540
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    .line 2541
    .restart local v7    # "dest":Landroid/net/LinkAddress;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2542
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v7}, Landroid/os/INetworkManagementService;->clearHostExemption(Landroid/net/LinkAddress;)V

    .line 2543
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2553
    .end local v7    # "dest":Landroid/net/LinkAddress;
    :cond_9
    :try_start_7
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 2545
    :catch_1
    move-exception v8

    .line 2548
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 2557
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 2558
    :catch_2
    move-exception v8

    .line 2561
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z
    .locals 11
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "doAdd"    # Z
    .param p4, "toDefaultTable"    # Z
    .param p5, "exempt"    # Z

    .prologue
    .line 2442
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2443
    const/4 v9, 0x0

    .line 2444
    .local v9, "isPossibleToAddRoute":Z
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 2445
    .local v10, "linkAddress":Ljava/net/InetAddress;
    invoke-static {v10, p2}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2446
    const/4 v9, 0x1

    goto :goto_0

    .line 2449
    .end local v10    # "linkAddress":Ljava/net/InetAddress;
    :cond_1
    if-nez v9, :cond_2

    .line 2450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRouteToAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no IP address for the same IP type of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2451
    const/4 v0, 0x0

    .line 2470
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "isPossibleToAddRoute":Z
    :goto_1
    return v0

    .line 2456
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 2457
    .local v2, "bestRoute":Landroid/net/RouteInfo;
    if-nez v2, :cond_3

    .line 2458
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 2470
    :goto_2
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    goto :goto_1

    .line 2460
    :cond_3
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v8

    .line 2461
    .local v8, "iface":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2463
    invoke-static {p2, v8}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_2

    .line 2467
    :cond_4
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0, v8}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_2
.end method

.method private static native native_CWServiceConfigureRoutingTable_JNI(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private declared-synchronized onUserStart(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 7324
    monitor-enter p0

    :try_start_0
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserStart for userid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7325
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7326
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 7327
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    .line 7328
    const-string v1, "Starting user already has a VPN"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7329
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7336
    :goto_0
    monitor-exit p0

    return-void

    .line 7331
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/server/connectivity/Vpn;

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V

    .line 7332
    .restart local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userVpn value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7333
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7334
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 7335
    monitor-exit v6

    goto :goto_0

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7324
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 7339
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 7340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 7341
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    .line 7342
    const-string v1, "Stopping user has no VPN"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7343
    monitor-exit v2

    .line 7347
    :goto_0
    return-void

    .line 7345
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 7346
    monitor-exit v2

    goto :goto_0

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reassessPidDns(IZ)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "doBump"    # Z

    .prologue
    .line 4244
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 4245
    .local v5, "myPid":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v2, v0, v3

    .line 4246
    .local v2, "i":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4245
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4249
    :cond_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v8, v2

    .line 4251
    .local v6, "nt":Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4254
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 4255
    .local v7, "p":Landroid/net/LinkProperties;
    if-eqz v7, :cond_0

    .line 4256
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v8, v2

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4258
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p1}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4272
    .end local v2    # "i":I
    .end local v6    # "nt":Landroid/net/NetworkStateTracker;
    .end local v7    # "p":Landroid/net/LinkProperties;
    :goto_1
    return-void

    .line 4259
    .restart local v2    # "i":I
    .restart local v6    # "nt":Landroid/net/NetworkStateTracker;
    .restart local v7    # "p":Landroid/net/LinkProperties;
    :catch_0
    move-exception v1

    .line 4260
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception reasseses pid dns: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4268
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v6    # "nt":Landroid/net/NetworkStateTracker;
    .end local v7    # "p":Landroid/net/LinkProperties;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p1}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForPid(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4269
    :catch_1
    move-exception v1

    .line 4270
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception clear interface from pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeAllMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7501
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;

    if-eqz v0, :cond_0

    .line 7502
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$EmergencyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7503
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove all timeout msg reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7505
    :cond_0
    return-void
.end method

.method private removeDataActivityTracking(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 3752
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 3753
    .local v1, "net":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 3755
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 3759
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3763
    :cond_1
    :goto_0
    return-void

    .line 3760
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 7
    .param p1, "p"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "toDefaultTable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2428
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0
.end method

.method private removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 6
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x0

    .line 2436
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z

    move-result v0

    return v0
.end method

.method private routeTableFlush(Z)V
    .locals 9
    .param p1, "flush"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 7549
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-nez v3, :cond_0

    .line 7550
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->needFlushRoutes()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7551
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v3, v4

    .line 7552
    .local v2, "thisNet":Landroid/net/NetworkStateTracker;
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7553
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v3, v4

    .line 7556
    .local v1, "otherNet":Landroid/net/NetworkStateTracker;
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-nez v3, :cond_0

    .line 7557
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 7558
    const-string v3, "ConnectivityService"

    const-string v4, "Mobile Network route table entried flushed out forcefully "

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7584
    .end local v1    # "otherNet":Landroid/net/NetworkStateTracker;
    .end local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 7585
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 7586
    :cond_1
    return-void

    .line 7561
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_2
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Just update the Network settings for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7563
    invoke-interface {v2, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 7564
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 7565
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-direct {p0, v3, v8}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 7566
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 7567
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed route table entries for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7568
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send Connected broadcast delayed instent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7571
    .end local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_3
    monitor-enter p0

    .line 7572
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7573
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x8

    iget v6, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7578
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7579
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v3, v4

    .line 7580
    .restart local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 7581
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3, v8}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    goto/16 :goto_0

    .line 7578
    .end local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "delayMs"    # I

    .prologue
    .line 3241
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    .line 3243
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3244
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3245
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    .line 3251
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 3247
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3248
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private sendDataActivityBroadcast(IZ)V
    .locals 11
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z

    .prologue
    .line 3289
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3290
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "deviceType"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3291
    const-string v0, "isActive"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3294
    .local v9, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3297
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3299
    return-void

    .line 3297
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private sendDnsToKnoxVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5753
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDnsToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dnsList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5757
    .local v1, "token":J
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5758
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5759
    const-string v3, "extra_action"

    const-string v4, "dns_info"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5760
    const-string v3, "extra_profile_name"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5761
    if-eqz p2, :cond_0

    .line 5762
    const-string v3, "dnsList"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5764
    :cond_0
    if-eqz p3, :cond_1

    .line 5765
    const-string/jumbo v3, "searchDomainList"

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5767
    :cond_1
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDnsToKnoxVpn : Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5768
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5770
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5772
    return-void

    .line 5770
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    .line 3281
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3282
    return-void
.end method

.method private sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;
    .param p3, "delayMs"    # I

    .prologue
    .line 3285
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 3286
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3254
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3255
    return-void
.end method

.method private sendInterfaceNameToKnoxVpn(Ljava/lang/String;I)V
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 5732
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendInterfaceNameToKnoxVpn : profileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5733
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5734
    .local v1, "interfaceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5737
    .local v2, "token":J
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5738
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5739
    const-string v4, "extra_action"

    const-string/jumbo v5, "tun_info"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5740
    const-string v4, "extra_profile_name"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5741
    const-string v4, "extra_tun_id"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5742
    const-string v4, "extra_state"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5743
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendInterfaceNameToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5747
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5749
    return-void

    .line 5747
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    .locals 6
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    .line 5195
    if-nez p1, :cond_0

    new-instance p1, Landroid/net/ProxyProperties;

    .end local p1    # "proxy":Landroid/net/ProxyProperties;
    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct {p1, v3, v4, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5196
    .restart local p1    # "proxy":Landroid/net/ProxyProperties;
    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyProperties;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5208
    :goto_0
    return-void

    .line 5197
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending Proxy Broadcast for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5198
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5199
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5201
    const-string v3, "proxy"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5204
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3379
    monitor-enter p0

    .line 3380
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 3381
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 3383
    :cond_0
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3390
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3392
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3394
    monitor-exit p0

    .line 3395
    return-void

    .line 3392
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3394
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delayMs"    # I

    .prologue
    .line 3398
    if-gtz p2, :cond_0

    .line 3399
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3408
    :goto_0
    return-void

    .line 3405
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 5
    .param p1, "bufferSizes"    # Ljava/lang/String;

    .prologue
    .line 4218
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4220
    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 4221
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 4222
    .local v1, "prefix":Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4223
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4225
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4226
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4234
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :goto_0
    return-void

    .line 4229
    .restart local v2    # "values":[Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffersize string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4231
    .end local v2    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4232
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDnsToVpnV10(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5671
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDnsToVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dnsList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5672
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5674
    .local v1, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->setDnsToVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5678
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5680
    return-void

    .line 5675
    :catch_0
    move-exception v0

    .line 5676
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5678
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setEnableFailFastMobileData(I)V
    .locals 4
    .param p1, "enabled"    # I

    .prologue
    .line 6397
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 6398
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 6402
    .local v0, "tag":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6404
    return-void

    .line 6400
    .end local v0    # "tag":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .restart local v0    # "tag":I
    goto :goto_0
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 6322
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 6323
    .local v0, "existing":Lcom/android/server/net/LockdownVpnTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 6324
    if-eqz v0, :cond_0

    .line 6325
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 6329
    :cond_0
    if-eqz p1, :cond_1

    .line 6330
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 6331
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "lo"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 6332
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 6333
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 6340
    :goto_0
    return-void

    .line 6335
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6337
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 7043
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setProvNotificationVisible: E visible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networkType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " extraInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7047
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 7048
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 7051
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    .line 7056
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 7057
    .local v4, "notification":Landroid/app/Notification;
    packed-switch p2, :pswitch_data_0

    .line 7086
    :pswitch_0
    const v9, 0x10406d5

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7087
    .local v8, "title":Ljava/lang/CharSequence;
    const v9, 0x10406d6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7089
    .local v1, "details":Ljava/lang/CharSequence;
    const v2, 0x10807f9

    .line 7090
    .local v2, "icon":I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7091
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10400000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7093
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 7097
    :goto_0
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Landroid/app/Notification;->when:J

    .line 7098
    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 7099
    const/16 v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 7100
    iput-object v8, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 7101
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v9, v8, v1, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 7104
    :try_start_0
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7117
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mIsNotificationVisible:Z

    .line 7118
    :cond_0
    return-void

    .line 7059
    .restart local v4    # "notification":Landroid/app/Notification;
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->showCaptivePortalCheckNotification(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7064
    :cond_1
    const v9, 0x10406d0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7065
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const v9, 0x10406d6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7067
    .restart local v1    # "details":Ljava/lang/CharSequence;
    const v2, 0x1080801

    .line 7068
    .restart local v2    # "icon":I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7069
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10400000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7071
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 7075
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v9, 0x10406d5

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7078
    .restart local v8    # "title":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 7079
    .restart local v1    # "details":Ljava/lang/CharSequence;
    const v2, 0x10807f9

    .line 7080
    .restart local v2    # "icon":I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7081
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v9, "EXTRA_URL"

    move-object/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7082
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7083
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 7105
    :catch_0
    move-exception v6

    .line 7106
    .local v6, "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setNotificaitionVisible: visible notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7107
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 7111
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_2
    :try_start_1
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 7112
    :catch_1
    move-exception v6

    .line 7113
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setNotificaitionVisible: cancel notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7114
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 7057
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setupDataActivityTracking(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 3720
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, p1

    .line 3721
    .local v1, "thisNet":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 3725
    .local v0, "iface":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3726
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_activity_timeout_mobile"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3730
    .local v2, "timeout":I
    const/4 p1, 0x0

    .line 3740
    :goto_0
    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 3742
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3746
    :cond_0
    :goto_1
    return-void

    .line 3731
    .end local v2    # "timeout":I
    :cond_1
    const/4 v3, 0x1

    if-ne v3, p1, :cond_2

    .line 3732
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_activity_timeout_wifi"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "timeout":I
    goto :goto_0

    .line 3737
    .end local v2    # "timeout":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "timeout":I
    goto :goto_0

    .line 3743
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private showCaptivePortalCheckNotification(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 7823
    const-string v0, "\"gogoinflight\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\"Carnival-WiFi\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7827
    :cond_0
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung captive portal check is skipped. Show only notification when connecting to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7828
    const/4 v0, 0x1

    .line 7830
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 14
    .param p1, "u"    # Lcom/android/server/ConnectivityService$FeatureUser;
    .param p2, "ignoreDups"    # Z

    .prologue
    .line 2093
    iget v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 2094
    .local v4, "networkType":I
    iget-object v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 2095
    .local v2, "feature":Ljava/lang/String;
    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 2096
    .local v5, "pid":I
    iget v9, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 2099
    .local v9, "uid":I
    const/4 v8, 0x0

    .line 2100
    .local v8, "tracker":Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 2108
    .local v0, "callTeardown":Z
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2110
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "stopUsingNetworkFeature: net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", net is invalid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2113
    const/4 v12, -0x1

    .line 2201
    :goto_0
    return v12

    .line 2118
    :cond_0
    monitor-enter p0

    .line 2120
    :try_start_0
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2125
    const/4 v12, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2191
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 2128
    :cond_1
    :try_start_1
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2130
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 2131
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v13, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v13, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2139
    if-nez p2, :cond_3

    .line 2140
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2141
    .local v11, "x":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v11, p1}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2143
    const/4 v12, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2149
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "x":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_3
    invoke-virtual {p0, v4, v2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v10

    .line 2151
    .local v10, "usedNetworkType":I
    const-string v12, "VZW"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2152
    const/4 v12, 0x5

    if-ne v10, v12, :cond_4

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->isVzwAppsApnPermissionGranted(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2154
    const/16 v10, 0xc

    .line 2158
    :cond_4
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v12, v10

    .line 2159
    if-nez v8, :cond_5

    .line 2161
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "stopUsingNetworkFeature: net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " no known tracker for used net type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2164
    const/4 v12, -0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 2166
    :cond_5
    if-eq v10, v4, :cond_7

    .line 2167
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 2168
    .local v1, "currentPid":Ljava/lang/Integer;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v10

    invoke-interface {v12, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 2172
    .local v6, "token":J
    const/4 v12, 0x1

    :try_start_2
    invoke-direct {p0, v5, v12}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2174
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2176
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    .line 2177
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v10

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_6

    .line 2182
    const/4 v12, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 2174
    :catchall_1
    move-exception v12

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 2184
    :cond_6
    const/4 v0, 0x1

    .line 2191
    .end local v1    # "currentPid":Ljava/lang/Integer;
    .end local v6    # "token":J
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2193
    if-eqz v0, :cond_8

    .line 2195
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "stopUsingNetworkFeature: teardown net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2197
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 2199
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2187
    :cond_7
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "stopUsingNetworkFeature: net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not a known feature - dropping"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2201
    :cond_8
    const/4 v12, -0x1

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 2
    .param p1, "netTracker"    # Landroid/net/NetworkStateTracker;

    .prologue
    const/4 v0, 0x1

    .line 1265
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    invoke-interface {p1, v0}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfLockdownEnabled()V
    .locals 2

    .prologue
    .line 6343
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_0

    .line 6344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6346
    :cond_0
    return-void
.end method

.method private tryFailover(I)V
    .locals 9
    .param p1, "prevNetType"    # I

    .prologue
    const/16 v8, 0x1a

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 3125
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3126
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, p1, :cond_0

    .line 3128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryFailover: set mActiveDefaultNetwork=-1, prevNetType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3130
    iput v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3138
    :cond_0
    const/4 v3, -0x1

    .line 3139
    .local v3, "currentPriority":I
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v4, v7, :cond_3

    .line 3140
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v4, v4, v5

    iget v3, v4, Landroid/net/NetworkConfig;->priority:I

    .line 3158
    :cond_1
    const/4 v2, 0x0

    .local v2, "checkType":I
    :goto_0
    if-gt v2, v8, :cond_b

    .line 3159
    if-ne v2, p1, :cond_6

    .line 3158
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3142
    .end local v2    # "checkType":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "checkType":I
    :goto_2
    if-gt v2, v8, :cond_1

    .line 3143
    if-ne v2, p1, :cond_5

    .line 3142
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3144
    :cond_5
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4

    .line 3145
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3146
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4

    .line 3147
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/net/NetworkConfig;->priority:I

    if-gt v3, v4, :cond_4

    .line 3149
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v2

    .line 3150
    .local v1, "checkTracker":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3151
    .local v0, "checkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3152
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    iget v3, v4, Landroid/net/NetworkConfig;->priority:I

    goto :goto_3

    .line 3160
    .end local v0    # "checkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "checkTracker":Landroid/net/NetworkStateTracker;
    :cond_6
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 3161
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3162
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 3176
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/net/NetworkConfig;->priority:I

    if-gt v3, v4, :cond_2

    .line 3178
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v2

    .line 3179
    .restart local v1    # "checkTracker":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3186
    .restart local v0    # "checkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3187
    :cond_7
    invoke-virtual {v0, v6}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3188
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 3219
    :cond_8
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to switch to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3191
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_DataKeepMobileEvenWifiOn"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    if-ne p1, v6, :cond_a

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, v7, :cond_a

    .line 3195
    iput v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3196
    const-string v4, "active_net set to Mobile"

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3197
    iput-boolean v6, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    .line 3198
    const-string v4, "net.isfailover.inprogress"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3201
    :cond_a
    const/16 v4, 0x9

    if-ne p1, v4, :cond_8

    if-ne v2, v6, :cond_8

    .line 3202
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3203
    const-string v4, "active_net set to Wifi"

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3204
    iput v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    goto :goto_4

    .line 3222
    .end local v0    # "checkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "checkTracker":Landroid/net/NetworkStateTracker;
    .end local v2    # "checkType":I
    .end local v3    # "currentPriority":I
    :cond_b
    return-void
.end method

.method private updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p4, "domains"    # Ljava/lang/String;
    .param p5, "defaultDns"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 4295
    .local p3, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v6, 0x0

    .line 4298
    .local v6, "last":I
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/data/com.test.LTEfunctionality/files/blockdns"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4299
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4301
    const-string v8, "net.dns1"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4302
    const-string v8, "net.dns2"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4303
    const-string v8, "adding dns null for IOT TEST (block dns)"

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4349
    :goto_0
    return-void

    .line 4307
    :cond_0
    const-string v8, "KDI"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4308
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    if-eqz v8, :cond_1

    .line 4309
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4310
    .restart local p3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-interface {p3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no dns provided for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4318
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, p2, v9, p4}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4319
    if-eqz p5, :cond_2

    .line 4320
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p2}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 4333
    :cond_2
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 4334
    .local v0, "dns":Ljava/net/InetAddress;
    add-int/lit8 v6, v6, 0x1

    .line 4335
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4336
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 4337
    .local v7, "value":Ljava/lang/String;
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4346
    .end local v0    # "dns":Ljava/net/InetAddress;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4347
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception setting default dns interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4339
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v3, v6, 0x1

    .local v3, "i":I
    :goto_2
    :try_start_1
    iget v8, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v3, v8, :cond_4

    .line 4340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4341
    .restart local v5    # "key":Ljava/lang/String;
    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4339
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4345
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    iput v6, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateMtuSizeSettings(Landroid/net/NetworkStateTracker;)V
    .locals 6
    .param p1, "nt"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 4166
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 4167
    .local v1, "iface":Ljava/lang/String;
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    .line 4169
    .local v2, "mtu":I
    const/16 v3, 0x44

    if-lt v2, v3, :cond_0

    const/16 v3, 0x2710

    if-le v2, v3, :cond_1

    .line 4170
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected mtu value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4180
    :goto_0
    return-void

    .line 4176
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1, v2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4177
    :catch_0
    move-exception v0

    .line 4178
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in setMtu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    .locals 3
    .param p1, "nt"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 4188
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .line 4189
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 4191
    .local v0, "bufferSizes":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4195
    const-string v1, "net.tcp.buffersize.default"

    .line 4196
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4205
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setBufferSize(Ljava/lang/String;)V

    .line 4207
    :cond_1
    return-void

    .line 4189
    .end local v0    # "bufferSizes":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZZ)Z
    .locals 14
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "curLp"    # Landroid/net/LinkProperties;
    .param p3, "isLinkDefault"    # Z
    .param p4, "exempt"    # Z

    .prologue
    .line 3999
    const/4 v10, 0x0

    .line 4000
    .local v10, "routesToAdd":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v1, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v1}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4001
    .local v1, "dnsDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v8, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v8}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4002
    .local v8, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_5

    .line 4004
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v8

    .line 4005
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v1

    .line 4011
    :cond_0
    :goto_0
    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_6

    :cond_1
    const/4 v9, 0x1

    .line 4013
    .local v9, "routesChanged":Z
    :goto_1
    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 4014
    .local v7, "r":Landroid/net/RouteInfo;
    if-nez p3, :cond_3

    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-nez v11, :cond_4

    .line 4016
    :cond_3
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 4018
    :cond_4
    if-nez p3, :cond_2

    .line 4020
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 4006
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "r":Landroid/net/RouteInfo;
    .end local v9    # "routesChanged":Z
    :cond_5
    if-eqz p1, :cond_0

    .line 4007
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v11

    iput-object v11, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 4008
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    iput-object v11, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 4011
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 4024
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "routesChanged":Z
    :cond_7
    if-nez p3, :cond_b

    .line 4026
    if-eqz v9, :cond_9

    .line 4028
    if-eqz p2, :cond_8

    .line 4029
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 4030
    .local v6, "oldDns":Ljava/net/InetAddress;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_3

    .line 4033
    .end local v6    # "oldDns":Ljava/net/InetAddress;
    :cond_8
    if-eqz p1, :cond_b

    .line 4034
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 4035
    .local v5, "newDns":Ljava/net/InetAddress;
    move/from16 v0, p4

    invoke-direct {p0, p1, v5, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_4

    .line 4040
    .end local v5    # "newDns":Ljava/net/InetAddress;
    :cond_9
    iget-object v11, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 4041
    .restart local v6    # "oldDns":Ljava/net/InetAddress;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_5

    .line 4043
    .end local v6    # "oldDns":Ljava/net/InetAddress;
    :cond_a
    iget-object v11, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 4044
    .restart local v5    # "newDns":Ljava/net/InetAddress;
    move/from16 v0, p4

    invoke-direct {p0, p1, v5, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_6

    .line 4049
    .end local v5    # "newDns":Ljava/net/InetAddress;
    :cond_b
    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 4050
    .restart local v7    # "r":Landroid/net/RouteInfo;
    if-nez p3, :cond_c

    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-nez v11, :cond_d

    .line 4051
    :cond_c
    const/4 v11, 0x1

    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v11, v0}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    goto :goto_7

    .line 4054
    :cond_d
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, p1, v7, v11, v12}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    .line 4058
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 4059
    .local v4, "ifaceName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4060
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v11, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_e

    .line 4063
    :try_start_1
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v4, v7}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4069
    :cond_e
    :goto_8
    :try_start_2
    monitor-exit v12

    goto :goto_7

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 4064
    :catch_0
    move-exception v2

    .line 4066
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception trying to remove a route: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 4073
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "ifaceName":Ljava/lang/String;
    .end local v7    # "r":Landroid/net/RouteInfo;
    :cond_f
    return v9
.end method

.method private updateSourceRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .locals 14
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "curLp"    # Landroid/net/LinkProperties;
    .param p3, "netType"    # I

    .prologue
    .line 4097
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->checkSourceRouteCondition(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 4098
    const-string/jumbo v10, "updateSourceRoutes : no source routing conditions"

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4158
    :cond_0
    return-void

    .line 4102
    :cond_1
    new-instance v7, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v7}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4103
    .local v7, "localAddrDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz p2, :cond_3

    .line 4104
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v7

    .line 4109
    :cond_2
    :goto_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    aget-object v9, v10, p3

    .line 4112
    .local v9, "ra":Lcom/android/server/ConnectivityService$RouteAttributes;
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-eqz v10, :cond_4

    .line 4113
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 4116
    .local v6, "la":Landroid/net/LinkAddress;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v12

    invoke-interface {v10, v11, v12}, Landroid/os/INetworkManagementService;->delSrcRoute([BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4117
    :catch_0
    move-exception v1

    .line 4118
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while trying to remove src route: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4105
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "la":Landroid/net/LinkAddress;
    .end local v9    # "ra":Lcom/android/server/ConnectivityService$RouteAttributes;
    :cond_3
    if-eqz p1, :cond_2

    .line 4106
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v10

    iput-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 4123
    .restart local v9    # "ra":Lcom/android/server/ConnectivityService$RouteAttributes;
    :cond_4
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 4124
    const/4 v2, 0x0

    .local v2, "gw4Addr":Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 4125
    .local v3, "gw6Addr":Ljava/net/InetAddress;
    if-eqz p1, :cond_0

    .line 4126
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 4127
    .local v5, "ifaceName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4128
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 4129
    .local v8, "r":Landroid/net/RouteInfo;
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet4Address;

    if-eqz v10, :cond_5

    .line 4130
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_2

    .line 4132
    :cond_5
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_2

    .line 4135
    .end local v8    # "r":Landroid/net/RouteInfo;
    :cond_6
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 4137
    .restart local v6    # "la":Landroid/net/LinkAddress;
    :try_start_1
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet4Address;

    if-eqz v10, :cond_8

    .line 4139
    if-eqz v2, :cond_7

    .line 4140
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v13

    invoke-interface {v10, v5, v11, v12, v13}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 4150
    :catch_1
    move-exception v1

    .line 4152
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while trying to add src route: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 4145
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    if-eqz v3, :cond_7

    .line 4146
    :try_start_2
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v13

    invoke-interface {v10, v5, v11, v12, v13}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method


# virtual methods
.method public ResetCwDefaultService(Ljava/lang/String;)V
    .locals 0
    .param p1, "strCWInterfaceName"    # Ljava/lang/String;

    .prologue
    .line 4546
    return-void
.end method

.method public SetCwDefaultService(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "strInterfaceName"    # Ljava/lang/String;
    .param p2, "strWagIPAddr"    # Ljava/lang/String;
    .param p3, "nWagDestPort"    # I
    .param p4, "strWagSignalingIPAddr"    # Ljava/lang/String;

    .prologue
    .line 4541
    return-void
.end method

.method public captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3700
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captivePortalCheckComplete: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3702
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    .line 3703
    return-void
.end method

.method public captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 3708
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captivePortalCheckCompleted: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " captive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3710
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->captivePortalCheckCompleted(Z)V

    .line 3711
    return-void
.end method

.method public checkMobileProvisioning(I)I
    .locals 10
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 6456
    const/4 v3, -0x1

    .line 6457
    .local v3, "timeOutMs":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMobileProvisioning: E suggestedTimeOutMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6458
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6462
    .local v4, "token":J
    move v3, p1

    .line 6463
    const v6, 0xea60

    if-le p1, v6, :cond_0

    .line 6464
    const v3, 0xea60

    .line 6468
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 6470
    :cond_1
    const-string v6, "checkMobileProvisioning: X no mobile network"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6540
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6541
    const-string v6, "checkMobileProvisioning: X"

    :goto_0
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6543
    return v3

    .line 6476
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6477
    const-string v6, "checkMobileProvisioning: X already checking ignore for the moment"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6540
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6541
    const-string v6, "checkMobileProvisioning: X"

    goto :goto_0

    .line 6482
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 6484
    new-instance v1, Lcom/android/server/ConnectivityService$CheckMp;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, p0}, Lcom/android/server/ConnectivityService$CheckMp;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V

    .line 6485
    .local v1, "checkMp":Lcom/android/server/ConnectivityService$CheckMp;
    new-instance v0, Lcom/android/server/ConnectivityService$5;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$5;-><init>(Lcom/android/server/ConnectivityService;)V

    .line 6535
    .local v0, "cb":Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    new-instance v2, Lcom/android/server/ConnectivityService$CheckMp$Params;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$CheckMp;->getDefaultUrl()Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v3

    invoke-direct {v2, v6, v7, v8, v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;-><init>(Ljava/lang/String;JLcom/android/server/ConnectivityService$CheckMp$CallBack;)V

    .line 6537
    .local v2, "params":Lcom/android/server/ConnectivityService$CheckMp$Params;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMobileProvisioning: params="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6538
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/server/ConnectivityService$CheckMp$Params;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v1, v6}, Lcom/android/server/ConnectivityService$CheckMp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6540
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6541
    const-string v6, "checkMobileProvisioning: X"

    goto :goto_0

    .line 6540
    .end local v0    # "cb":Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    .end local v1    # "checkMp":Lcom/android/server/ConnectivityService$CheckMp;
    .end local v2    # "params":Lcom/android/server/ConnectivityService$CheckMp$Params;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6541
    const-string v7, "checkMobileProvisioning: X"

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6540
    throw v6
.end method

.method public convertFeatureToNetworkType(ILjava/lang/String;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 5240
    move v0, p1

    .line 5242
    .local v0, "usedNetworkType":I
    if-nez p1, :cond_e

    .line 5243
    const-string v1, "enableMMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5244
    const/4 v0, 0x2

    .line 5285
    :goto_0
    return v0

    .line 5245
    :cond_0
    const-string v1, "enableSUPL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5246
    const/4 v0, 0x3

    goto :goto_0

    .line 5247
    :cond_1
    const-string v1, "enableDUN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "enableDUNAlways"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5249
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 5250
    :cond_3
    const-string v1, "enableHIPRI"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5251
    const/4 v0, 0x5

    goto :goto_0

    .line 5252
    :cond_4
    const-string v1, "enableFOTA"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5253
    const/16 v0, 0xa

    goto :goto_0

    .line 5254
    :cond_5
    const-string v1, "enableIMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5255
    const/16 v0, 0xb

    goto :goto_0

    .line 5256
    :cond_6
    const-string v1, "enableCBS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5257
    const/16 v0, 0xc

    goto :goto_0

    .line 5259
    :cond_7
    const-string v1, "enableCMDM"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5260
    const/16 v0, 0x14

    goto :goto_0

    .line 5261
    :cond_8
    const-string v1, "enableCMMAIL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5262
    const/16 v0, 0x15

    goto :goto_0

    .line 5263
    :cond_9
    const-string v1, "enableWAP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5264
    const/16 v0, 0x16

    goto :goto_0

    .line 5265
    :cond_a
    const-string v1, "enableBIP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5266
    const/16 v0, 0x17

    goto :goto_0

    .line 5268
    :cond_b
    const-string v1, "enable800APN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5269
    const/16 v0, 0x18

    goto :goto_0

    .line 5270
    :cond_c
    const-string v1, "enableMMS2"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5271
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 5274
    :cond_d
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any mobile netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5276
    :cond_e
    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    .line 5277
    const-string v1, "p2p"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5278
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 5280
    :cond_f
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any wifi netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5283
    :cond_10
    const-string v1, "ConnectivityService"

    const-string v2, "Unexpected network type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public declared-synchronized createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 5484
    monitor-enter p0

    :try_start_0
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside create enterprise vpn: profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5486
    :cond_0
    const-string v1, "ConnectivityService"

    const-string v2, "Package Name or Profile Name passed is null in createEnterpriseVpn"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v8

    .line 5508
    :goto_0
    monitor-exit p0

    return v1

    .line 5490
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 5491
    .local v5, "user":I
    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/EnterpriseVpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Ljava/lang/String;Landroid/os/INetworkManagementService;I)V

    .line 5492
    .local v0, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->checkIfKnoxVpnProfileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5493
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 5494
    .local v7, "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    if-nez v7, :cond_2

    .line 5495
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 5497
    .restart local v7    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    :cond_2
    invoke-virtual {v7, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5498
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5499
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside create enterprise vpn: Storing obj for user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5508
    const/4 v1, 0x1

    goto :goto_0

    .line 5501
    .end local v7    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    :cond_3
    const-string v1, "ConnectivityService"

    const-string v2, " createEnterpriseVpn : Profile exists with same name. Cannot create a new one."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v8

    .line 5502
    goto :goto_0

    .line 5504
    .end local v0    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v5    # "user":I
    :catch_0
    move-exception v6

    .line 5505
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v8

    .line 5506
    goto :goto_0

    .line 5484
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .param p2, "isConnectedProfile"    # Z

    .prologue
    .line 5933
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5934
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5935
    .local v0, "callingApp":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ConnectivityService;->disconnect(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 5933
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "callingUid":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized disconnectSystemVpn(I)V
    .locals 6
    .param p1, "user"    # I

    .prologue
    .line 6076
    monitor-enter p0

    :try_start_0
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectSystemVpn: user going to be removed is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6077
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6078
    .local v2, "systemVPNProfile":Ljava/lang/String;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectSystemVpn: systemVPNProfile is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6079
    if-eqz v2, :cond_0

    .line 6080
    const-string v3, "ConnectivityService"

    const-string v4, "disconnect is called from disconnectSystemVpn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6082
    .local v1, "callingUid":I
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The callingUid value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6083
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 6084
    .local v0, "callingApp":Ljava/lang/String;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The callingApp value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6085
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ConnectivityService;->disconnect(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6087
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "callingUid":I
    :cond_0
    monitor-exit p0

    return-void

    .line 6076
    .end local v2    # "systemVPNProfile":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4455
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4456
    .local v10, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_0

    .line 4459
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4533
    :goto_0
    return-void

    .line 4466
    :cond_0
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4467
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v12, v12

    if-ge v2, v12, :cond_3

    .line 4468
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v12, v2

    .line 4469
    .local v7, "nst":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_2

    .line 4470
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkStateTracker for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4471
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4472
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4473
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Active network: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4476
    :cond_1
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4477
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4478
    invoke-virtual {v10, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4479
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4480
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4467
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4484
    .end local v7    # "nst":Landroid/net/NetworkStateTracker;
    :cond_3
    const-string v12, "Network Requester Pids:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4485
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4486
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_5

    aget v6, v1, v4

    .line 4487
    .local v6, "net":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4488
    .local v9, "pidString":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v6

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 4489
    .local v8, "pid":Ljava/lang/Integer;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 4491
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4486
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_2

    .line 4493
    .end local v6    # "net":I
    .end local v9    # "pidString":Ljava/lang/String;
    :cond_5
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4494
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4496
    const-string v12, "FeatureUsers:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4497
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4498
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 4499
    .local v11, "requester":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 4501
    .end local v11    # "requester":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_6
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4502
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4504
    monitor-enter p0

    .line 4505
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkTranstionWakeLock is currently "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, ""

    :goto_5
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "held."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4507
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "It was last requested for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4508
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4509
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4511
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p3

    invoke-virtual {v12, p1, v10, v0}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4513
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v12, :cond_9

    .line 4514
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4515
    const-string v12, "Inet condition reports:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4516
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4517
    const/4 v2, 0x0

    :goto_6
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_8

    .line 4518
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4517
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4505
    :cond_7
    :try_start_1
    const-string v12, "not "

    goto :goto_5

    .line 4508
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 4520
    :cond_8
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4525
    :cond_9
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4526
    const-string v12, "Network Preference:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4527
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4528
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mSetNetworkPreferenceLog:Ljava/lang/String;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mSetNetworkPreferenceLog:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4529
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mActiveDefaultNetwork: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4530
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4531
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public declared-synchronized establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 5614
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5615
    :cond_0
    :try_start_0
    const-string v6, "ConnectivityService"

    const-string v8, "Config or Profile Name passed is null in establishEnterpriseVpn"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    .line 5665
    :goto_0
    monitor-exit p0

    return-object v4

    .line 5618
    :cond_1
    :try_start_1
    const-string v6, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "establishEnterpriseVpn : user = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5620
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 5621
    .local v5, "user":I
    const/4 v3, 0x0

    .line 5622
    .local v3, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 5623
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v3, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5629
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :goto_1
    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 5630
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 5631
    .local v1, "callingApp":Ljava/lang/String;
    const-string v6, "com.mocana.vpn.android"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5632
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5638
    .end local v1    # "callingApp":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_7

    .line 5640
    iput-object p2, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 5641
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 5642
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_5

    .line 5645
    iget v6, p0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    .line 5646
    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 5647
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5648
    .local v0, "callerName":Ljava/lang/String;
    const-string v6, "com.mocana.vpn.android"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5649
    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iget-object v8, p1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-direct {p0, p2, v6, v8}, Lcom/android/server/ConnectivityService;->setDnsToVpnV10(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 5652
    :cond_4
    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iget-object v8, p1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-direct {p0, p2, v6, v8}, Lcom/android/server/ConnectivityService;->sendDnsToKnoxVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 5654
    const/4 v6, 0x1

    invoke-direct {p0, p2, v6}, Lcom/android/server/ConnectivityService;->sendInterfaceNameToKnoxVpn(Ljava/lang/String;I)V

    .line 5657
    .end local v0    # "callerName":Ljava/lang/String;
    :cond_5
    const-string v6, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "establishEnterpriseVpn : Returning fd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 5663
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "user":I
    :catch_0
    move-exception v2

    .line 5664
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v7

    .line 5665
    goto/16 :goto_0

    .line 5625
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v5    # "user":I
    :cond_6
    :try_start_4
    const-string v6, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find enterpriseVpn object in hashmap : user = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 5614
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v5    # "user":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 5660
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v5    # "user":I
    :cond_7
    :try_start_5
    const-string v6, "ConnectivityService"

    const-string v8, "establishEnterpriseVpn : Returning fd = null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v7

    .line 5661
    goto/16 :goto_0
.end method

.method public declared-synchronized establishEnterpriseVpnIS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    .line 5685
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 5687
    .local v1, "token":J
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5688
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5689
    const-string v3, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5690
    const-string v3, "extra_profile_name"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5691
    const-string v3, "extra_tun_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5692
    const-string v3, "extra_state"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5693
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendInterfaceNameToKnoxVpn (IS) :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5695
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5697
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5699
    monitor-exit p0

    return-void

    .line 5697
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5685
    .end local v1    # "token":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 5436
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5437
    const-string v8, "ConnectivityService"

    const-string v9, "establishVpn called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 5439
    .local v7, "user":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5440
    .local v6, "transformedVendorName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 5441
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 5442
    .local v2, "callingApp":Ljava/lang/String;
    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5443
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 5446
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getActiveProfilesForVendor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 5447
    .local v1, "activeProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activeProfiles = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tv = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5448
    const/4 v0, 0x0

    .line 5449
    .local v0, "activeAnyConnectProfile":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 5450
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activeProfiles length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5451
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activeAnyConnectProfile":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 5452
    .restart local v0    # "activeAnyConnectProfile":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5453
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activeAnyConnectProfile not null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    iput-object v0, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 5458
    :cond_0
    if-eqz v0, :cond_1

    .line 5459
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I

    move-result v5

    .line 5460
    .local v5, "profileType":I
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 5461
    const/4 v8, 0x0

    iput-object v8, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5469
    .end local v0    # "activeAnyConnectProfile":Ljava/lang/String;
    .end local v1    # "activeProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "profileType":I
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v9

    .line 5470
    :try_start_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v8, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 5471
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5472
    return-object v4

    .line 5464
    :catch_0
    move-exception v3

    .line 5465
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5471
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8
.end method

.method public findConnectionTypeForIface(Ljava/lang/String;)I
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 6358
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6369
    :cond_0
    :goto_0
    return v5

    .line 6361
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 6362
    .local v4, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_2

    .line 6363
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 6364
    .local v3, "lp":Landroid/net/LinkProperties;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6365
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    goto :goto_0

    .line 6361
    .end local v3    # "lp":Landroid/net/LinkProperties;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 1499
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 2

    .prologue
    .line 7381
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 7383
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7384
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 7386
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 1322
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1323
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1324
    .local v0, "uid":I
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1381
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1382
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1370
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v1, v2

    .line 1372
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1373
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1376
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 4

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1550
    .local v1, "token":J
    :try_start_0
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1551
    .local v0, "state":Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1553
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v3, v0}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1559
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1557
    return-object v3

    .line 1554
    :catch_0
    move-exception v3

    .line 1557
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1559
    .end local v0    # "state":Landroid/net/NetworkState;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    .locals 7

    .prologue
    .line 7392
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 7393
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 7394
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkQualityInfo;>;"
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 7395
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    .line 7396
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v3

    .line 7397
    .local v3, "li":Landroid/net/LinkQualityInfo;
    if-eqz v3, :cond_0

    .line 7398
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7394
    .end local v3    # "li":Landroid/net/LinkQualityInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7403
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/LinkQualityInfo;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/LinkQualityInfo;

    return-object v6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 12

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1425
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1426
    .local v6, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1427
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1428
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 1429
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_1

    .line 1431
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1432
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-nez v8, :cond_2

    .line 1433
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 1434
    .local v7, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->checkCondition(Landroid/net/NetworkInfo;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    if-eqz v8, :cond_2

    .line 1435
    :cond_0
    new-instance v3, Landroid/net/NetworkInfo;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1436
    .local v3, "mInfo":Landroid/net/NetworkInfo;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v8, v10, v11}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    .end local v3    # "mInfo":Landroid/net/NetworkInfo;
    .end local v7    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1441
    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1447
    .end local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1444
    .restart local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_3
    :try_start_1
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1447
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_4
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1448
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/net/NetworkInfo;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/net/NetworkInfo;

    return-object v8
.end method

.method public getAllNetworkInfoEx()[Landroid/net/NetworkInfo;
    .locals 12

    .prologue
    .line 1454
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1456
    .local v6, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1457
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 1459
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_1

    .line 1461
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1462
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-nez v8, :cond_2

    .line 1463
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 1464
    .local v7, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->checkCondition(Landroid/net/NetworkInfo;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    if-eqz v8, :cond_2

    .line 1465
    :cond_0
    new-instance v3, Landroid/net/NetworkInfo;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1466
    .local v3, "mInfo":Landroid/net/NetworkInfo;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v8, v10, v11}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    .end local v3    # "mInfo":Landroid/net/NetworkInfo;
    .end local v7    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1471
    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1477
    .end local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1474
    .restart local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_3
    :try_start_1
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1477
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_4
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1478
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/net/NetworkInfo;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/net/NetworkInfo;

    return-object v8
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 11

    .prologue
    .line 1517
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1519
    .local v6, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1520
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1521
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 1522
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    .line 1523
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1524
    .local v2, "info":Landroid/net/NetworkInfo;
    new-instance v7, Landroid/net/NetworkState;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v10

    invoke-direct {v7, v2, v9, v10}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1528
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/NetworkState;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/NetworkState;

    return-object v7

    .line 1528
    .end local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 7255
    const-string v4, "ConnectivityService"

    const-string v6, "getDhcpServerConfiguration()"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7256
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7257
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v3}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 7259
    .local v3, "serverConfig":Landroid/net/DhcpServerConfiguration;
    :try_start_0
    const-string/jumbo v4, "wifiap_local_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 7260
    const-string/jumbo v4, "wifiap_subnet_mask"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 7261
    const-string/jumbo v4, "wifiap_dhcp_enable"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, v3, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 7262
    const-string/jumbo v4, "wifiap_dhcp_start_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 7263
    const-string/jumbo v4, "wifiap_dhcp_end_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 7264
    const-string/jumbo v4, "wifiap_dhcp_lease_time"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 7265
    const-string/jumbo v4, "wifiap_dhcp_max_user"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpServerConfiguration;->maxClient:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7281
    .end local v3    # "serverConfig":Landroid/net/DhcpServerConfiguration;
    :goto_1
    return-object v3

    .line 7261
    .restart local v3    # "serverConfig":Landroid/net/DhcpServerConfiguration;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 7268
    :catch_0
    move-exception v2

    .line 7269
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "ConnectivityService"

    const-string v6, "getWifiApProfileConfiguration AP settings not found, returning"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7270
    new-instance v1, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v1}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 7272
    .local v1, "defaultServerConfig":Landroid/net/DhcpServerConfiguration;
    const-string v4, "192.168.1.1"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 7273
    const-string v4, "255.255.255.0"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 7274
    iput-boolean v5, v1, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 7275
    const-string v4, "192.168.1.100"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 7276
    const-string v4, "192.168.1.254"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 7277
    const/16 v4, 0x5a

    iput v4, v1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 7278
    const/16 v4, 0x64

    iput v4, v1, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 7280
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    move-object v3, v1

    .line 7281
    goto :goto_1
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 5144
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    monitor-exit v1

    return-object v0

    .line 5146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5903
    if-nez p1, :cond_0

    .line 5904
    const-string v3, "ConnectivityService"

    const-string v5, "Profile Name passed is null in getInterfaceName"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 5921
    :goto_0
    return-object v3

    .line 5908
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5909
    .local v2, "user":I
    const/4 v1, 0x0

    .line 5910
    .local v1, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5911
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5913
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_1
    if-eqz v1, :cond_2

    .line 5914
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 5917
    goto :goto_0

    .line 5919
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "user":I
    :catch_0
    move-exception v0

    .line 5920
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 5921
    goto :goto_0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 4833
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4835
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4836
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 4838
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 3

    .prologue
    .line 6117
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 6118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6119
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 6120
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 6121
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1504
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1506
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1508
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1509
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1512
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 7370
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 7372
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7373
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 7375
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2575
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2576
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 2579
    .local v0, "retVal":Z
    :goto_0
    const-string v3, "KOR"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2580
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2581
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 2591
    :cond_0
    :goto_1
    return v0

    .end local v0    # "retVal":Z
    :cond_1
    move v0, v2

    .line 2576
    goto :goto_0

    .restart local v0    # "retVal":Z
    :cond_2
    move v0, v2

    .line 2581
    goto :goto_1
.end method

.method public getMobileDataEnabledEx(I)Z
    .locals 5
    .param p1, "simSlot"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2599
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2600
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 2609
    .local v0, "retVal":Z
    :goto_0
    const-string v3, "KOR"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2610
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2611
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 2616
    :cond_0
    :goto_1
    return v0

    .end local v0    # "retVal":Z
    :cond_1
    move v0, v2

    .line 2600
    goto :goto_0

    .restart local v0    # "retVal":Z
    :cond_2
    move v0, v2

    .line 2611
    goto :goto_1
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 7223
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7224
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v1

    .line 7225
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7226
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7232
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7233
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 7234
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7235
    const-string v0, "0000000000"

    .line 7237
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7243
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 7229
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7213
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7214
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v0

    .line 7215
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7216
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7218
    :cond_0
    return-object v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1389
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1194
    monitor-enter p0

    .line 1195
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 1196
    .local v0, "preference":I
    monitor-exit p0

    .line 1197
    return v0

    .line 1196
    .end local v0    # "preference":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 4

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1358
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1359
    .local v0, "provNi":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 1360
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1361
    .local v1, "uid":I
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1363
    .end local v1    # "uid":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvisioningOrActiveNetworkInfo: X provNi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1364
    return-object v0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 3

    .prologue
    .line 5058
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5059
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 5060
    .local v0, "ret":Landroid/net/ProxyProperties;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 5061
    :cond_0
    monitor-exit v2

    return-object v0

    .line 5062
    .end local v0    # "ret":Landroid/net/ProxyProperties;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4868
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4869
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4870
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4872
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4905
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4906
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4844
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4845
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4852
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4854
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4859
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4860
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4861
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4863
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4910
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4911
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4916
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 6

    .prologue
    .line 6132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6133
    .local v0, "user":I
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVpnConfig > user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6134
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 6136
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 6137
    .local v1, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-nez v1, :cond_0

    .line 6138
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 6143
    :goto_0
    monitor-exit v3

    return-object v1

    .line 6140
    :cond_0
    const-string v2, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVpnConfig > session : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6144
    .end local v1    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isActiveNetworkMetered()Z
    .locals 3

    .prologue
    .line 1565
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1568
    .local v0, "token":J
    :try_start_0
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1568
    return v2

    .line 1570
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isMobilePolicyDataEnable()Z
    .locals 3

    .prologue
    .line 7612
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7613
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 7614
    .local v0, "enabled":Z
    monitor-exit v2

    .line 7615
    return v0

    .line 7614
    .end local v0    # "enabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 1484
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1486
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4923
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4924
    const-string v4, "ro.tether.denied"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 4925
    .local v0, "defaultVal":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "tether_supported"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    .line 4928
    .local v1, "tetherEnabledInSettings":Z
    :goto_1
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultVal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tetherEnabledInSettings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_3

    :goto_2
    return v3

    .end local v0    # "defaultVal":I
    .end local v1    # "tetherEnabledInSettings":Z
    :cond_1
    move v0, v3

    .line 4924
    goto :goto_0

    .restart local v0    # "defaultVal":I
    :cond_2
    move v1, v2

    .line 4925
    goto :goto_1

    .restart local v1    # "tetherEnabledInSettings":Z
    :cond_3
    move v3, v2

    .line 4937
    goto :goto_2
.end method

.method public markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uid"    # I

    .prologue
    .line 5395
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceMarkNetworkSocketPermission()V

    .line 5396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5398
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p2}, Landroid/os/INetworkManagementService;->getMarkForUid(I)I

    move-result v0

    .line 5400
    .local v0, "mark":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 5401
    const/4 v0, 0x0

    .line 5403
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->markSocket(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5406
    .end local v0    # "mark":I
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5408
    return-void

    .line 5406
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5404
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public needFlushRoutes()Z
    .locals 1

    .prologue
    .line 7543
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->needMobileDataBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitchDataNetworkCallback(IZ)V
    .locals 10
    .param p1, "simSlot"    # I
    .param p2, "success"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2013
    invoke-static {p1}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v2

    .line 2014
    .local v2, "logicalSim":I
    if-ne v2, v8, :cond_0

    .line 2015
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "simcard don\'t have"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const/4 v2, 0x1

    .line 2019
    :cond_0
    if-eqz p2, :cond_4

    .line 2020
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.conn.DATA_CONNECTION_CHANGE_SUCCESS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2021
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v4, "simSlot"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2022
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2024
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CTC"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CHN"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2028
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/MultiSimManager;->getPhysicalSimSlot(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 2029
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v7

    check-cast v4, Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v4, v9}, Landroid/net/MultiSimMobileDataStateTracker;->teardown(I)Z

    .line 2030
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v7

    check-cast v4, Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v4, v7}, Landroid/net/MultiSimMobileDataStateTracker;->reconnect(I)Z

    move-result v3

    .line 2035
    .local v3, "reconnect_result":Z
    :goto_0
    if-nez v3, :cond_2

    .line 2036
    const-string v4, "ConnectivityService"

    const-string v5, "onSwitchToSim1DataNetworkCallback re-connection failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.conn.DATA_RECONNECTION_FAIL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2038
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "simSlot"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2039
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2058
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "reconnect_result":Z
    :cond_2
    :goto_1
    return-void

    .line 2032
    .restart local v0    # "i":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v7

    check-cast v4, Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v4, v7}, Landroid/net/MultiSimMobileDataStateTracker;->teardown(I)Z

    .line 2033
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v7

    check-cast v4, Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v4, v9}, Landroid/net/MultiSimMobileDataStateTracker;->reconnect(I)Z

    move-result v3

    .restart local v3    # "reconnect_result":Z
    goto :goto_0

    .line 2043
    .end local v0    # "i":Landroid/content/Intent;
    .end local v3    # "reconnect_result":Z
    :cond_4
    const-string v4, "ConnectivityService"

    const-string v5, "onSwitchToSim1DataNetworkCallback switch failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const-string v4, "persist.sys.dataprefer.simid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/server/ConnectivityService;->mBackupDataPreferSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    const-string v4, "ril.datacross.simid"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_5

    .line 2050
    const-string v4, "ConnectivityService"

    const-string v5, "rollback datacross property"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const-string v4, "ril.datacross.simid"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2055
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "simSlot"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2056
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onSwitchToSim1DataNetworkCallback(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 2009
    return-void
.end method

.method public onSwitchToSim2DataNetworkCallback(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 2008
    return-void
.end method

.method public declared-synchronized prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 7
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "profile"    # Ljava/lang/String;
    .param p4, "type"    # Z
    .param p5, "isConnecting"    # Z

    .prologue
    .line 5528
    monitor-enter p0

    :try_start_0
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareEnterpriseVpn : profile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  :isConnecting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5529
    const/4 v2, 0x1

    .line 5530
    .local v2, "returnVal":Z
    if-eqz p5, :cond_3

    .line 5531
    const/4 v4, 0x1

    if-ne p4, v4, :cond_2

    .line 5532
    const-string v4, "ConnectivityService"

    const-string v5, "prepareEnterpriseVpn : System VPN. Calling prepare"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5535
    .local v3, "user":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getVpnType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5536
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 5538
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/ConnectivityService;->createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5539
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v4, v2

    .line 5550
    .end local v3    # "user":I
    :goto_0
    monitor-exit p0

    return v4

    .line 5543
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/ConnectivityService;->createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 5546
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5547
    .local v1, "callingUid":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5548
    .local v0, "callingApp":Ljava/lang/String;
    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/ConnectivityService;->disconnect(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 5528
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "callingUid":I
    .end local v2    # "returnVal":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 5350
    monitor-enter p0

    :try_start_0
    const-string v7, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepare is called by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5352
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5353
    .local v6, "user":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5354
    .local v1, "callingUid":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5355
    .local v0, "callingApp":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5356
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5357
    .local v2, "enterpriseSystemProfile":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5358
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5359
    .local v3, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v3, :cond_1

    .line 5360
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ConnectivityService;->disconnect(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5366
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5369
    const-string v7, "com.mocana.vpn.android"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v7}, Lcom/android/server/connectivity/Vpn;->getVpnType()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-nez v7, :cond_2

    move v7, v8

    .line 5388
    :goto_0
    monitor-exit p0

    return v7

    .line 5362
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_1
    :try_start_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v8

    .line 5363
    goto :goto_0

    .line 5374
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_2
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5388
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    monitor-exit v8

    goto :goto_0

    .line 5390
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5350
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "callingUid":I
    .end local v2    # "enterpriseSystemProfile":Ljava/lang/String;
    .end local v4    # "token":J
    .end local v6    # "user":I
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public prepareVpnForMvp(Ljava/lang/String;Landroid/os/Messenger;)Z
    .locals 3
    .param p1, "newPackage"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 5416
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5418
    .local v0, "user":I
    if-eqz v0, :cond_0

    .line 5419
    const/4 v1, 0x0

    .line 5423
    :goto_0
    return v1

    .line 5422
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5423
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepareForMvp(Ljava/lang/String;Landroid/os/Messenger;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 5424
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized protectEnterpriseVpn(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .locals 10
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    .line 5562
    monitor-enter p0

    :try_start_0
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "protectEnterpriseVpn : socket = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5563
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 5564
    .local v5, "type":I
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 5565
    :cond_0
    const-string v7, "ConnectivityService"

    const-string v8, "Profile Name passed or socket created is null in protectEnterpriseVpn"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5601
    :cond_1
    :goto_0
    const/4 v7, 0x0

    :goto_1
    monitor-exit p0

    return v7

    .line 5568
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 5570
    .local v6, "user":I
    const/4 v3, 0x0

    .line 5571
    .local v3, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 5572
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/connectivity/EnterpriseVpn;

    move-object v3, v0

    .line 5576
    :cond_3
    invoke-static {v5}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    .line 5578
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v8, v5

    invoke-virtual {v7, v5, v8}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5579
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "protectVpn : DefualtNetwork = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "clat4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5580
    const-string v7, "clat4"

    invoke-virtual {v3, p1, v7}, Lcom/android/server/connectivity/EnterpriseVpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 5595
    :goto_2
    const/4 v7, 0x1

    goto :goto_1

    .line 5582
    :cond_4
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "protectVpn : DefualtNetwork = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v9, v9, v5

    invoke-interface {v9}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5583
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 5584
    .local v1, "callingApp":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v4

    .line 5585
    .local v4, "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    if-eqz v4, :cond_5

    if-eqz v4, :cond_6

    const/4 v7, 0x0

    invoke-interface {v4, v1, v7}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getChainingEnabledForProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    .line 5586
    :cond_5
    const-string v7, "ConnectivityService"

    const-string v8, "No Chaining"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5587
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v5

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lcom/android/server/connectivity/EnterpriseVpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 5597
    .end local v1    # "callingApp":Ljava/lang/String;
    .end local v4    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :catch_0
    move-exception v2

    .line 5598
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 5562
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v5    # "type":I
    .end local v6    # "user":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 5589
    .restart local v1    # "callingApp":Ljava/lang/String;
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v4    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .restart local v5    # "type":I
    .restart local v6    # "user":I
    :cond_6
    :try_start_4
    const-string v7, "ConnectivityService"

    const-string v8, "Chaining enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method public protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    .locals 8
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 5303
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5305
    :try_start_0
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 5306
    .local v2, "type":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5308
    .local v3, "user":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v2

    if-eqz v4, :cond_3

    .line 5310
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5311
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v2

    invoke-virtual {v4, v2, v6}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5312
    const-string v4, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "protectVpn : DefualtNetwork = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " interface: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "clat4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    const-string v6, "clat4"

    invoke-virtual {v4, p1, v6}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 5326
    :goto_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5328
    const/4 v4, 0x1

    .line 5334
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 5339
    .end local v2    # "type":I
    .end local v3    # "user":I
    :goto_1
    return v4

    .line 5315
    .restart local v2    # "type":I
    .restart local v3    # "user":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5316
    .local v0, "callingApp":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    .line 5317
    .local v1, "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    if-eqz v1, :cond_1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getChainingEnabledForProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 5318
    :cond_1
    const-string v4, "ConnectivityService"

    const-string v6, "No chaining"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5319
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v2

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 5324
    :goto_2
    const-string v4, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "protectVpn : DefualtNetwork = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " interface: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v2

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5326
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5330
    .end local v2    # "type":I
    .end local v3    # "user":I
    :catch_0
    move-exception v4

    .line 5334
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 5339
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 5321
    .restart local v0    # "callingApp":Ljava/lang/String;
    .restart local v1    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .restart local v2    # "type":I
    .restart local v3    # "user":I
    :cond_2
    :try_start_6
    const-string v4, "ConnectivityService"

    const-string v6, "Chaining Enabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 5333
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .end local v2    # "type":I
    .end local v3    # "user":I
    :catchall_1
    move-exception v4

    .line 5334
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 5333
    :goto_4
    throw v4

    .line 5335
    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v5

    goto :goto_4

    .restart local v2    # "type":I
    .restart local v3    # "user":I
    :catch_3
    move-exception v5

    goto/16 :goto_1

    .line 5334
    :cond_3
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3
.end method

.method public reportInetCondition(II)V
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 4965
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4970
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 4971
    .local v0, "pid":I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 4972
    .local v2, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x32

    if-le p2, v3, :cond_0

    const-string v3, "connected"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4975
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4976
    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 4977
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 4972
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    const-string v3, "disconnected"

    goto :goto_0

    .line 4980
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4982
    return-void
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 5
    .param p1, "forWhom"    # Ljava/lang/String;

    .prologue
    .line 4948
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4949
    monitor-enter p0

    .line 4950
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 4959
    :goto_0
    return-void

    .line 4951
    :cond_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    .line 4952
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4953
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 4954
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4955
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x8

    iget v3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4954
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestRouteToHost(IILjava/lang/String;)Z
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2301
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 2303
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 2304
    const/4 v1, 0x0

    .line 2307
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(I[BLjava/lang/String;)Z
    .locals 14
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2321
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2322
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2323
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2328
    :cond_0
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2334
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_1

    .line 2335
    const/4 v3, 0x1

    .line 2350
    .local v3, "exempt":Z
    :goto_0
    if-nez v3, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isAddressUnderVpn(Ljava/net/InetAddress;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2351
    const/4 v7, 0x0

    .line 2416
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v3    # "exempt":Z
    :goto_1
    return v7

    .line 2329
    :catch_0
    move-exception v2

    .line 2330
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestRouteToHostAddress got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2331
    const/4 v7, 0x0

    goto :goto_1

    .line 2337
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "addr":Ljava/net/InetAddress;
    :cond_1
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2339
    :try_start_1
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2341
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    const/4 v3, 0x1

    .restart local v3    # "exempt":Z
    :goto_2
    goto :goto_0

    .end local v3    # "exempt":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 2342
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 2343
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Failed to find calling package details"

    invoke-direct {v11, v12, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 2373
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "exempt":Z
    :cond_3
    const-string v11, "VZW"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2374
    if-eqz p1, :cond_4

    const/4 v11, 0x5

    if-ne p1, v11, :cond_6

    :cond_4
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    const/16 v12, 0xc

    aget-object v11, v11, v12

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2378
    const/16 p1, 0xc

    .line 2380
    const-string v11, "ConnectivityService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestRouteToHost: Signed Application:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " using networkType"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_5
    :goto_3
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 2391
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2392
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2383
    :cond_6
    const/16 v11, 0x2000

    if-ne p1, v11, :cond_5

    .line 2385
    const/16 p1, 0x18

    goto :goto_3

    .line 2394
    :cond_7
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v10, v11, p1

    .line 2395
    .local v10, "tracker":Landroid/net/NetworkStateTracker;
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    .line 2397
    .local v6, "netState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v10, :cond_9

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v11, :cond_8

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v11, :cond_9

    :cond_8
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2408
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2410
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2413
    .local v8, "token":J
    :try_start_2
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    .line 2414
    .local v5, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v5, v1, v3}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    move-result v7

    .line 2415
    .local v7, "ok":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestRouteToHostAddress ok="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2418
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v5    # "lp":Landroid/net/LinkProperties;
    .end local v7    # "ok":Z
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z
    .locals 4
    .param p1, "newConfig"    # Landroid/net/DhcpServerConfiguration;

    .prologue
    .line 7287
    const-string v2, "ConnectivityService"

    const-string v3, "saveDhcpServerConfiguration()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7288
    const/4 v0, 0x0

    .line 7289
    .local v0, "changeHappened":Z
    if-nez p1, :cond_0

    .line 7290
    const/4 v0, 0x0

    .line 7305
    :goto_0
    return v0

    .line 7292
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7294
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "wifiap_local_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7295
    const-string/jumbo v2, "wifiap_subnet_mask"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7296
    const-string/jumbo v3, "wifiap_dhcp_enable"

    iget-boolean v2, p1, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7297
    const-string/jumbo v2, "wifiap_dhcp_start_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7298
    const-string/jumbo v2, "wifiap_dhcp_end_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7299
    const-string/jumbo v2, "wifiap_dhcp_lease_time"

    iget v3, p1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7300
    const-string/jumbo v2, "wifiap_dhcp_max_user"

    iget v3, p1, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7302
    const/4 v0, 0x1

    goto :goto_0

    .line 7296
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3225
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3227
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    .line 3229
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3230
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3231
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3237
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 3233
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3234
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAirplaneMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 7310
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7313
    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7314
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7315
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7316
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7317
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7319
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7321
    return-void

    .line 7314
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 7319
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected setAlarm(ILandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "timeoutInMilliseconds"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 7454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 7455
    .local v0, "wakeupTime":J
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 7456
    return-void
.end method

.method public setDataDependency(IZ)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 2621
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2623
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xa

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2625
    return-void

    .line 2623
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 11
    .param p1, "proxyProperties"    # Landroid/net/ProxyProperties;

    .prologue
    .line 5066
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5068
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5069
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-ne p1, v7, :cond_0

    monitor-exit v8

    .line 5112
    :goto_0
    return-void

    .line 5070
    :cond_0
    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v7}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v8

    goto :goto_0

    .line 5106
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 5071
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    monitor-exit v8

    goto :goto_0

    .line 5072
    :cond_2
    const-string v7, "SBM"

    const-string v9, "ro.csc.sales_code"

    const-string v10, "none"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 p1, 0x0

    .line 5074
    :cond_3
    const-string v1, ""

    .line 5075
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .line 5076
    .local v3, "port":I
    const-string v0, ""

    .line 5077
    .local v0, "exclList":Ljava/lang/String;
    const-string v2, ""

    .line 5078
    .local v2, "pacFileUrl":Ljava/lang/String;
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 5080
    :cond_4
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v7

    if-nez v7, :cond_5

    .line 5082
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid proxy properties, ignoring: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5083
    monitor-exit v8

    goto :goto_0

    .line 5085
    :cond_5
    new-instance v7, Landroid/net/ProxyProperties;

    invoke-direct {v7, p1}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    iput-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 5086
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 5087
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    .line 5088
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 5089
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 5090
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 5095
    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5096
    .local v4, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    .line 5098
    .local v5, "token":J
    :try_start_2
    const-string v7, "global_http_proxy_host"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5099
    const-string v7, "global_http_proxy_port"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5100
    const-string v7, "global_http_proxy_exclusion_list"

    invoke-static {v4, v7, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5102
    const-string v7, "global_proxy_pac_url"

    invoke-static {v4, v7, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5104
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5106
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5108
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-nez v7, :cond_7

    .line 5109
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 5111
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    goto/16 :goto_0

    .line 5093
    .end local v4    # "res":Landroid/content/ContentResolver;
    .end local v5    # "token":J
    :cond_8
    const/4 v7, 0x0

    :try_start_4
    iput-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    goto :goto_1

    .line 5104
    .restart local v4    # "res":Landroid/content/ContentResolver;
    .restart local v5    # "token":J
    :catchall_1
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpProxy"    # Ljava/lang/String;
    .param p2, "httpPort"    # Ljava/lang/String;

    .prologue
    .line 4538
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x0

    .line 2717
    const-string v6, "ChinaNalSecurity"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2719
    const/4 v4, 0x1

    .line 2721
    .local v4, "isShowingMobileDataEnableDlg":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2722
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2724
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2725
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v6, "com.sec.android.app.secsetupwizard"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.systemui"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.phone"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.settings"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.mms"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "system"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.sec.android.emergencymode.service"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2732
    :cond_1
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v8

    if-ne v6, v8, :cond_0

    .line 2733
    const/4 v4, 0x0

    .line 2739
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    .line 2740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NAL:DataEnablePopup("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : pid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2742
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2766
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "isShowingMobileDataEnableDlg":Z
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return-void

    .line 2747
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2749
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMobileDataEnabled("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : pid("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", uid("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2754
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2756
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2757
    const-string v6, "ConnectivityService"

    const-string v7, "CellularData is not allowed by admin"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2764
    :cond_4
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v10, 0x7

    if-eqz p1, :cond_5

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v9, v10, v6, v7}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_1
.end method

.method public setMobileDataEnabledEx(ZI)V
    .locals 10
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    .line 2771
    const-string v6, "ChinaNalSecurity"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2773
    const/4 v4, 0x1

    .line 2775
    .local v4, "isShowingMobileDataEnableDlg":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2776
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2778
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2779
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v6, "com.sec.android.app.secsetupwizard"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.systemui"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.phone"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.settings"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.mms"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "system"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.sec.android.emergencymode.service"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2786
    :cond_1
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 2787
    const/4 v4, 0x0

    .line 2793
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    .line 2794
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NAL:DataEnablePopup("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : pid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2796
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2820
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "isShowingMobileDataEnableDlg":Z
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return-void

    .line 2801
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2803
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMobileDataEnabledEx("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : pid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2808
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2810
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2811
    const-string v6, "ConnectivityService"

    const-string v7, "CellularData is not allowed by admin"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2818
    :cond_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v9, 0x11

    if-eqz p1, :cond_5

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8, v9, v6, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setNcmTethering(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4897
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 4898
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setNcmTethering(Z)I

    move-result v0

    return v0
.end method

.method public setNetworkPreference(I)V
    .locals 6
    .param p1, "preference"    # I

    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1181
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1182
    .local v1, "uid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") changed Network Preference to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mSetNetworkPreferenceLog:Ljava/lang/String;

    .line 1184
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mSetNetworkPreferenceLog:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1187
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1189
    return-void
.end method

.method public setPolicyDataEnable(IZ)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xc

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2862
    return-void

    .line 2860
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 7249
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7250
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 7251
    return-void
.end method

.method public setRadio(IZ)Z
    .locals 3
    .param p1, "netType"    # I
    .param p2, "turnOn"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1595
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1597
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1601
    :cond_0
    :goto_0
    return v1

    .line 1600
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 1601
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 6
    .param p1, "turnOn"    # Z

    .prologue
    .line 1586
    const/4 v3, 0x1

    .line 1587
    .local v3, "result":Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1588
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1589
    .local v4, "t":Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1588
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1589
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1591
    .end local v4    # "t":Landroid/net/NetworkStateTracker;
    :cond_2
    return v3
.end method

.method public setUsbTethering(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4877
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 4888
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4889
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 4891
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 6097
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 6098
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 6099
    .local v0, "egress":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    .line 6100
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6102
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 6103
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 6104
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "[Legacy VPN]"

    invoke-virtual {p0, v2, v4}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6105
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 6106
    monitor-exit v3

    .line 6107
    return-void

    .line 6106
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 32
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1686
    const-wide/16 v21, 0x0

    .line 1688
    .local v21, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 1694
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1697
    :try_start_0
    const-string v28, "enableMMS"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_3

    .line 1698
    const/16 v20, 0x0

    .line 1699
    .local v20, "restrictionPolicy":Landroid/app/enterprise/PhoneRestrictionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "enterprise_policy"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1701
    .local v8, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v8, :cond_0

    .line 1702
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v20

    .line 1704
    :cond_0
    const/4 v9, 0x0

    .line 1705
    .local v9, "emergencyCallOnly":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 1706
    .local v23, "token":J
    if-eqz v20, :cond_1

    .line 1707
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v9

    .line 1709
    :cond_1
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1710
    if-eqz v9, :cond_3

    .line 1711
    const-string v28, "ConnectivityService"

    const-string v29, "Administrator blocked this device"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    const/16 v28, 0x3

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .local v11, "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .end local v8    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9    # "emergencyCallOnly":Z
    .end local v20    # "restrictionPolicy":Landroid/app/enterprise/PhoneRestrictionPolicy;
    .end local v23    # "token":J
    :goto_0
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1949
    :cond_2
    return v28

    .line 1719
    .end local v11    # "execTime":J
    :cond_3
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v28, v0

    aget-object v28, v28, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v28, :cond_5

    .line 1721
    :cond_4
    const/16 v28, 0x3

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    .line 1756
    .end local v11    # "execTime":J
    :cond_5
    :try_start_2
    new-instance v13, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1759
    .local v13, "f":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v27

    .line 1761
    .local v27, "usedNetworkType":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    move/from16 v28, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v28, :cond_6

    .line 1764
    const/16 v28, 0x2

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1767
    .end local v11    # "execTime":J
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1768
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1771
    :cond_7
    const-string v28, "VZW"

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 1773
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "startUsingNetworkFeature usedNetworkType "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1774
    const-string/jumbo v28, "startUsingNetworkFeature ConnectivityManager.TYPE_MOBILE_HIPRI 5"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1776
    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->isVzwAppsApnPermissionGranted(I)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1778
    const/16 v27, 0xc

    .line 1785
    :cond_8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "startUsingNetworkFeature usedNetworkType "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1789
    :cond_9
    const-string v28, "VZW"

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v28

    if-eqz v28, :cond_b

    .line 1791
    const/4 v15, 0x1

    .line 1793
    .local v15, "needActivation":Z
    :try_start_4
    const-string v28, "phone"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v15

    .line 1800
    :goto_1
    const/16 v28, 0xc

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v15, v0, :cond_b

    .line 1801
    :try_start_5
    const-string v28, "Device is not activated yet"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1802
    const/16 v28, 0x3

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1794
    .end local v11    # "execTime":J
    :catch_0
    move-exception v10

    .line 1795
    .local v10, "ex":Landroid/os/RemoteException;
    :try_start_6
    const-string v28, "needsOtaServiceProvisioning returned RemoteException"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1951
    .end local v10    # "ex":Landroid/os/RemoteException;
    .end local v13    # "f":Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v15    # "needActivation":Z
    .end local v27    # "usedNetworkType":I
    :catchall_0
    move-exception v28

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_a

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1951
    :cond_a
    throw v28

    .line 1796
    .end local v11    # "execTime":J
    .restart local v13    # "f":Lcom/android/server/ConnectivityService$FeatureUser;
    .restart local v15    # "needActivation":Z
    .restart local v27    # "usedNetworkType":I
    :catch_1
    move-exception v10

    .line 1797
    .local v10, "ex":Ljava/lang/NullPointerException;
    :try_start_7
    const-string v28, "needsOtaServiceProvisioning has NullPointerException"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1807
    .end local v10    # "ex":Ljava/lang/NullPointerException;
    .end local v15    # "needActivation":Z
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z

    move-result v17

    .line 1809
    .local v17, "networkMetered":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1810
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v30

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v26

    .line 1811
    .local v26, "uidRules":I
    monitor-exit v29
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1812
    if-eqz v17, :cond_c

    and-int/lit8 v28, v26, 0x1

    if-eqz v28, :cond_c

    .line 1813
    const/16 v28, 0x3

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1811
    .end local v11    # "execTime":J
    .end local v26    # "uidRules":I
    :catchall_1
    move-exception v28

    :try_start_9
    monitor-exit v29
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v28

    .line 1816
    .restart local v26    # "uidRules":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    aget-object v16, v28, v27

    .line 1817
    .local v16, "network":Landroid/net/NetworkStateTracker;
    if-eqz v16, :cond_1f

    .line 1818
    new-instance v5, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v28

    move/from16 v0, v28

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1819
    .local v5, "currentPid":Ljava/lang/Integer;
    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_1a

    .line 1820
    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 1822
    .local v18, "ni":Landroid/net/NetworkInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v28

    if-nez v28, :cond_e

    .line 1823
    const-string v28, "enableDUNAlways"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_d

    .line 1827
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "special network not available ni="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v13}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1831
    const/16 v28, 0x2

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1835
    .end local v11    # "execTime":J
    :cond_d
    :try_start_b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "special network not available, but try anyway ni="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1841
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay(I)I

    move-result v19

    .line 1843
    .local v19, "restoreTimer":I
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1844
    const/4 v4, 0x1

    .line 1845
    .local v4, "addToList":Z
    if-gez v19, :cond_14

    .line 1848
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1849
    .local v25, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1851
    const/4 v4, 0x0

    .line 1853
    invoke-virtual {v13}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1878
    .end local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_10
    :goto_2
    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1879
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_12

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1883
    :cond_12
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1885
    if-ltz v19, :cond_13

    .line 1886
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1890
    :cond_13
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v28

    if-nez v28, :cond_18

    .line 1892
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 1893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v23

    .line 1896
    .restart local v23    # "token":J
    :try_start_e
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1899
    :try_start_f
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1901
    const/16 v28, 0x0

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1860
    .end local v11    # "execTime":J
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v23    # "token":J
    :cond_14
    const/4 v7, -0x1

    .line 1862
    .local v7, "duplicateIndex":I
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1863
    .restart local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1869
    .end local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_16
    if-ltz v7, :cond_10

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1871
    .local v6, "dupUser":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1872
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1883
    .end local v6    # "dupUser":Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v7    # "duplicateIndex":I
    .end local v14    # "i$":Ljava/util/Iterator;
    :catchall_2
    move-exception v28

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v28

    .line 1899
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v23    # "token":J
    :catchall_3
    move-exception v28

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1904
    .end local v23    # "token":J
    :cond_17
    const/16 v28, 0x1

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1911
    .end local v11    # "execTime":J
    :cond_18
    :try_start_12
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "startUsingNetworkFeature reconnecting to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1914
    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v28

    if-eqz v28, :cond_19

    .line 1915
    const-string/jumbo v28, "startUsingNetworkFeature X: return APN_REQUEST_STARTED"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1916
    const/16 v28, 0x1

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1918
    .end local v11    # "execTime":J
    :cond_19
    :try_start_13
    const-string/jumbo v28, "startUsingNetworkFeature X: return APN_REQUEST_FAILED"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1919
    const/16 v28, 0x3

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1923
    .end local v4    # "addToList":Z
    .end local v11    # "execTime":J
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "ni":Landroid/net/NetworkInfo;
    .end local v19    # "restoreTimer":I
    :cond_1a
    :try_start_14
    monitor-enter p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1925
    const/4 v4, 0x1

    .line 1926
    .restart local v4    # "addToList":Z
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1927
    .restart local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 1928
    const/4 v4, 0x0

    .line 1933
    .end local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_1c
    if-eqz v4, :cond_1e

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1939
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1943
    :cond_1d
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 1944
    :try_start_16
    const-string/jumbo v28, "startUsingNetworkFeature X: return -1 unsupported feature."

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1945
    const/16 v28, -0x1

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1936
    .end local v11    # "execTime":J
    :cond_1e
    :try_start_17
    invoke-virtual {v13}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    goto :goto_3

    .line 1943
    .end local v14    # "i$":Ljava/util/Iterator;
    :catchall_4
    move-exception v28

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v28

    .line 1948
    .end local v4    # "addToList":Z
    .end local v5    # "currentPid":Ljava/lang/Integer;
    :cond_1f
    const-string/jumbo v28, "startUsingNetworkFeature X: return APN_TYPE_NOT_AVAILABLE"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1949
    const/16 v28, 0x2

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1953
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1954
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 8
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2064
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2066
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    .line 2067
    .local v2, "pid":I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v4

    .line 2069
    .local v4, "uid":I
    const/4 v3, 0x0

    .line 2070
    .local v3, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v0, 0x0

    .line 2072
    .local v0, "found":Z
    monitor-enter p0

    .line 2073
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2074
    .local v5, "x":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v5, v2, v4, p1, p2}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2075
    move-object v3, v5

    .line 2076
    const/4 v0, 0x1

    .line 2080
    .end local v5    # "x":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2081
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 2084
    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 2088
    :cond_2
    return v6

    .line 2080
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public supplyMessenger(ILandroid/os/Messenger;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 6349
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6352
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 6353
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->supplyMessenger(Landroid/os/Messenger;)V

    .line 6355
    :cond_0
    return-void
.end method

.method public supplyMessengerEx(ILandroid/os/Messenger;I)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "simSlot"    # I

    .prologue
    .line 1964
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1967
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    check-cast v0, Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v0, p2, p3}, Landroid/net/MultiSimMobileDataStateTracker;->supplyMessenger(Landroid/os/Messenger;I)V

    .line 1970
    :cond_0
    return-void
.end method

.method public switchDataNetwork(I)V
    .locals 3
    .param p1, "simSlot"    # I

    .prologue
    const/4 v1, -0x1

    .line 1983
    const-string v0, "ril.datacross.simid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1985
    const-string v0, "persist.sys.dataprefer.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService;->mBackupDataPreferSimId:I

    .line 1986
    const-string v0, "persist.sys.dataprefer.simid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1996
    :try_start_0
    const-string v0, "phone"

    invoke-static {p1}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 1997
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_1

    .line 1998
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->switchDataNetwork(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    :cond_1
    :goto_0
    return-void

    .line 2000
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchDataNetworkForMMS(I)V
    .locals 3
    .param p1, "simSlot"    # I

    .prologue
    .line 1973
    const-string v0, "persist.sys.dataprefer.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1974
    const-string v0, "ril.datacross.simid"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checking property, simSlot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->switchDataNetwork(I)V

    .line 1980
    return-void

    .line 1976
    :cond_0
    const-string v0, "ril.datacross.simid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchToSim1DataNetwork()V
    .locals 0

    .prologue
    .line 2006
    return-void
.end method

.method public switchToSim2DataNetwork()V
    .locals 0

    .prologue
    .line 2005
    return-void
.end method

.method protected systemReady()V
    .locals 4

    .prologue
    .line 3411
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/net/CaptivePortalTracker;->makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

    .line 3412
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 3414
    monitor-enter p0

    .line 3415
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 3416
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 3417
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3418
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 3420
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3422
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3426
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3427
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3428
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3430
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 3420
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 4811
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 4813
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4814
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 4816
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 4822
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 4824
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4825
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 4827
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected updateBlockedUids(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 6374
    :try_start_0
    const-string v3, "alarm"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService;

    .line 6376
    .local v1, "mAlarmMgrSvc":Lcom/android/server/AlarmManagerService;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->updateBlockedUids(IZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6381
    .end local v1    # "mAlarmMgrSvc":Lcom/android/server/AlarmManagerService;
    :goto_0
    :try_start_1
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    .line 6383
    .local v2, "mPowerMgrSvc":Lcom/android/server/power/PowerManagerService;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateBlockedUids(IZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6387
    .end local v2    # "mPowerMgrSvc":Lcom/android/server/power/PowerManagerService;
    :goto_1
    return-void

    .line 6377
    :catch_0
    move-exception v0

    .line 6378
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could Not Update blocked Uids with alarmManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6384
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 6385
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could Not Update blocked Uids with powerManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateEnterpriseVpn(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "domain"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 5825
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateEnterpriseVpn profileName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , flag : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", domain : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5827
    const/4 v2, 0x0

    .line 5829
    .local v2, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 5830
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 5831
    .local v5, "key":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 5832
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/connectivity/EnterpriseVpn;

    move-object v2, v0

    .line 5833
    if-eqz v2, :cond_2

    .line 5839
    .end local v5    # "key":I
    :cond_0
    if-eqz v2, :cond_4

    .line 5840
    if-nez p3, :cond_3

    .line 5841
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->hasInterfaceAsUser(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5842
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateEnterpriseVpn The connected Vpn is not exists in user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5843
    invoke-virtual {v2, p3, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->refreshNotification(ZI)V

    .line 5844
    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 5862
    :cond_1
    :goto_1
    return-void

    .line 5829
    .restart local v5    # "key":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5847
    .end local v5    # "key":I
    :cond_3
    invoke-virtual {v2, p3, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->refreshNotification(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5859
    :catch_0
    move-exception v1

    .line 5860
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5850
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v7, "ConnectivityService"

    const-string/jumbo v8, "updateEnterpriseVpn enterprisevpn is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 5852
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 5853
    .restart local v5    # "key":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Vpn;

    .line 5854
    .local v6, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v6, :cond_5

    .line 5855
    invoke-virtual {v6, p1, p3, p2}, Lcom/android/server/connectivity/Vpn;->refreshNotification(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5851
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public updateLockdownVpn()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 6288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 6289
    const-string v1, "ConnectivityService"

    const-string v2, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6313
    :goto_0
    return v0

    .line 6294
    :cond_0
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 6295
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v1, :cond_2

    .line 6296
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6297
    const-string v1, "ConnectivityService"

    const-string v2, "KeyStore locked; unable to create LockdownTracker"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6301
    :cond_1
    new-instance v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 6302
    .local v6, "profileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 6304
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 6305
    .local v7, "user":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8

    .line 6306
    :try_start_0
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 6308
    monitor-exit v8

    .line 6313
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6308
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "user":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6310
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    goto :goto_1
.end method
