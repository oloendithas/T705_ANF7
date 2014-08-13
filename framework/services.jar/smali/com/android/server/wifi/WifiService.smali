.class public final Lcom/android/server/wifi/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiService$17;,
        Lcom/android/server/wifi/WifiService$Multicaster;,
        Lcom/android/server/wifi/WifiService$DeathRecipient;,
        Lcom/android/server/wifi/WifiService$LockList;,
        Lcom/android/server/wifi/WifiService$WifiLock;,
        Lcom/android/server/wifi/WifiService$EncryptTool;,
        Lcom/android/server/wifi/WifiService$TdlsTask;,
        Lcom/android/server/wifi/WifiService$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiService$BatchedScanRequest;,
        Lcom/android/server/wifi/WifiService$ApInfo;,
        Lcom/android/server/wifi/WifiService$WifiProfile;,
        Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiService$ClientHandler;,
        Lcom/android/server/wifi/WifiService$HS20_ConType;
    }
.end annotation


# static fields
.field private static AddedWifiProfile:Ljava/lang/String; = null

.field private static final CHECK_IMEI:I = 0xa

.field private static final DBG:Z

.field private static final FILENAME_WIFIVERSION:Ljava/lang/String; = "/data/.wifiver.info"

.field private static final ICON_NETWORKS_HS20_H_CONNECTED:I = 0x10803f9

.field private static final ICON_NETWORKS_HS20_R_CONNECTED:I = 0x10803fa

.field private static OTACount:I = 0x0

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "android.net.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field private static defaultTimeoutValue:I

.field private static filePathDefaultAp:Ljava/io/File;

.field private static filePathGeneralinfo:Ljava/io/File;

.field private static flagForDefaultAp:Z

.field private static flagForNWNameCreate:Z

.field private static mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

.field private static final mConfigPriorAp:Ljava/lang/String;

.field private static mFilePath:Ljava/io/File;

.field private static mFirstScanAddProfile:Z

.field private static mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

.field private static mMatchedNetworkName:Ljava/lang/String;

.field private static mMatchedPrevNetworkName:Ljava/lang/String;

.field private static mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;

.field private static mRemoveWifiProfile:Z

.field private static mWifiProfileLoaded:Z


# instance fields
.field private final CRED_DOWNLOAD_PATH:Ljava/lang/String;

.field private final PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

.field private final PATH_PREVNETWORKNAME:Ljava/lang/String;

.field private final PATH_WIFIPROFILE:Ljava/lang/String;

.field private final PATH_WIFIPROFILE_NAME:Ljava/lang/String;

.field private allowWifi:Z

.field private allowWifiAp:Z

.field private isBootCompleted:Z

.field private isShutdown:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field final mBatchedScanSupported:Z

.field private final mBatchedScanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiService$BatchedScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBcSmsReceived:Z

.field private mBlockScanFromOthers:Z

.field private mChameleonEnabled:Z

.field private mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDeviceManager:Lcom/android/server/DeviceManager3LMService;

.field private mDomRoamMaxUser:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mGsmMaxUser:I

.field private mHotspotTestMode:Z

.field private mHs20Noti:Landroid/app/Notification;

.field private mIntRoamMaxUser:I

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field final mLocks:Lcom/android/server/wifi/WifiService$LockList;

.field private mMaxUser:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field private mNotificationHS20Enabled:Z

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

.field private mPriorityReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestWifiOn:Z

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mSendDhcpRelease:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSsid:Ljava/lang/String;

.field private mTetheredData:I

.field public mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private mWifiEnabled:Z

.field private mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;

.field final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    .line 185
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigPriorAP"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiService;->mConfigPriorAp:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    .line 236
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiService;->filePathDefaultAp:Ljava/io/File;

    .line 241
    sput-boolean v1, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    .line 243
    sput-boolean v1, Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z

    .line 244
    sput-boolean v1, Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z

    .line 245
    sput-boolean v1, Lcom/android/server/wifi/WifiService;->flagForDefaultAp:Z

    .line 246
    sput-boolean v1, Lcom/android/server/wifi/WifiService;->flagForNWNameCreate:Z

    .line 247
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;

    .line 248
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;

    .line 249
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiService;->AddedWifiProfile:Ljava/lang/String;

    .line 250
    sput v1, Lcom/android/server/wifi/WifiService;->OTACount:I

    .line 482
    const-string v0, "1200"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiService;->defaultTimeoutValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 495
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 164
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mBcSmsReceived:Z

    .line 165
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mBlockScanFromOthers:Z

    .line 167
    new-instance v3, Lcom/android/server/wifi/WifiService$LockList;

    invoke-direct {v3, p0, v9}, Lcom/android/server/wifi/WifiService$LockList;-><init>(Lcom/android/server/wifi/WifiService;Lcom/android/server/wifi/WifiService$1;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    .line 177
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_SendSignalDuringPowerOff"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    .line 205
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    .line 206
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->isShutdown:Z

    .line 208
    iput-object v9, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 215
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    .line 219
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 220
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    .line 223
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z

    .line 233
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mIsReceiverRegistered:Z

    .line 237
    const-string v3, "/data/misc/wifi"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_WIFIPROFILE:Ljava/lang/String;

    .line 238
    const-string v3, "default_ap.conf"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_WIFIPROFILE_NAME:Ljava/lang/String;

    .line 239
    const-string v3, "generalinfo_nw.conf"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

    .line 240
    const-string v3, "prev_networkname.conf"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_PREVNETWORKNAME:Ljava/lang/String;

    .line 252
    new-instance v3, Landroid/net/NetworkInfo;

    const-string v4, "WIFI"

    const-string v5, ""

    invoke-direct {v3, v7, v6, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 261
    const-string v3, "/data/misc/wifi/"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->CRED_DOWNLOAD_PATH:Ljava/lang/String;

    .line 264
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mRequestWifiOn:Z

    .line 473
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mChameleonEnabled:Z

    .line 474
    iput v6, p0, Lcom/android/server/wifi/WifiService;->mTetheredData:I

    .line 475
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mSsid:Ljava/lang/String;

    .line 476
    iput v8, p0, Lcom/android/server/wifi/WifiService;->mMaxUser:I

    .line 477
    iput v7, p0, Lcom/android/server/wifi/WifiService;->mGsmMaxUser:I

    .line 478
    iput v8, p0, Lcom/android/server/wifi/WifiService;->mDomRoamMaxUser:I

    .line 479
    iput v8, p0, Lcom/android/server/wifi/WifiService;->mIntRoamMaxUser:I

    .line 490
    iput-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 2082
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    .line 3362
    new-instance v3, Lcom/android/server/wifi/WifiService$14;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$14;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4613
    new-instance v3, Lcom/android/server/wifi/WifiService$16;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$16;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 496
    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    .line 500
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 506
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 507
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    .line 509
    const-string/jumbo v3, "wifi.interface"

    const-string/jumbo v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 511
    new-instance v3, Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 512
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 513
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 514
    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    .line 516
    new-instance v3, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    .line 517
    new-instance v3, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 518
    new-instance v3, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 526
    new-instance v3, Lcom/android/server/wifi/WifiService$WifiProfile;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$WifiProfile;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;

    .line 529
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WifiService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 530
    .local v2, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 531
    new-instance v3, Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiService$ClientHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    .line 532
    new-instance v3, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    .line 533
    new-instance v3, Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 534
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiController;->start()V

    .line 536
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    .line 540
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForScanModeChange()V

    .line 548
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$1;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v3, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v3, "device_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 575
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$2;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$2;-><init>(Lcom/android/server/wifi/WifiService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 648
    const-string v3, "Private"

    sget-object v4, Lcom/android/server/wifi/WifiService;->mConfigPriorAp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 649
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$3;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 715
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mFilter:Landroid/content/IntentFilter;

    .line 716
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mFilter:Landroid/content/IntentFilter;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 718
    new-instance v3, Lcom/android/server/wifi/WifiService$4;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$4;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mPriorityReceiver:Landroid/content/BroadcastReceiver;

    .line 754
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mPriorityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 758
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$5;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$5;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SET_WIFI"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 839
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$6;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$6;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 879
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$7;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$7;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 918
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$8;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$8;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1013
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$11;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$11;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.COEX_INFO"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1034
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$12;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$12;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SET_HOME_AP"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$13;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$13;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1122
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForBroadcasts()V

    .line 1123
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/ScanResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 156
    sget v0, Lcom/android/server/wifi/WifiService;->OTACount:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 156
    sput p0, Lcom/android/server/wifi/WifiService;->OTACount:I

    return p0
.end method

.method static synthetic access$1508()I
    .locals 2

    .prologue
    .line 156
    sget v0, Lcom/android/server/wifi/WifiService;->OTACount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wifi/WifiService;->OTACount:I

    return v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->AddedWifiProfile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 156
    sput-object p0, Lcom/android/server/wifi/WifiService;->AddedWifiProfile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/io/File;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 156
    sput-object p0, Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 156
    sput-boolean p0, Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z

    return p0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 156
    sput-boolean p0, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->flagForDefaultAp:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 156
    sput-boolean p0, Lcom/android/server/wifi/WifiService;->flagForDefaultAp:Z

    return p0
.end method

.method static synthetic access$2100()Ljava/io/File;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->filePathDefaultAp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/io/File;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 156
    sput-object p0, Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 156
    sput-boolean p0, Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z

    return p0
.end method

.method static synthetic access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object v0
.end method

.method static synthetic access$2602([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 0
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiService$ApInfo;

    .prologue
    .line 156
    sput-object p0, Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object p0
.end method

.method static synthetic access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object v0
.end method

.method static synthetic access$2702([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 0
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiService$ApInfo;

    .prologue
    .line 156
    sput-object p0, Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object p0
.end method

.method static synthetic access$2800()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object v0
.end method

.method static synthetic access$2802([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 0
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiService$ApInfo;

    .prologue
    .line 156
    sput-object p0, Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object p0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->mConfigPriorAp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiService;)Landroid/net/wifi/PppoeStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->flagForNWNameCreate:Z

    return v0
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 156
    sput-boolean p0, Lcom/android/server/wifi/WifiService;->flagForNWNameCreate:Z

    return p0
.end method

.method static synthetic access$3100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 156
    sput-object p0, Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiService;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->handleSecurityPolicy()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z
    .locals 6
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiService$WifiLock;

    .prologue
    .line 4307
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->addLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$3900(Lcom/android/server/wifi/WifiService$LockList;Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 4311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4313
    .local v1, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 4314
    iget v3, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 4326
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26006

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4327
    const/4 v3, 0x1

    .line 4331
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4329
    return v3

    .line 4316
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    goto :goto_0

    .line 4328
    :catch_0
    move-exception v0

    .line 4329
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 4319
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4331
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4323
    :pswitch_2
    :try_start_2
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    return-void
.end method

.method private enforceAccessSecuredPermission()V
    .locals 3

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.ACCESS_WIFI_SECURED_INFO"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    return-void
.end method

.method private getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1268
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    const/4 v0, 0x1

    .line 1275
    :goto_0
    return v0

    .line 1270
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1271
    const/4 v0, 0x2

    goto :goto_0

    .line 1272
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1273
    const/4 v0, 0x3

    goto :goto_0

    .line 1275
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1259
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 1265
    :cond_0
    :goto_0
    return v0

    .line 1261
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 1263
    goto :goto_0

    .line 1265
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private handleSecurityPolicy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3455
    const/4 v1, 0x0

    .line 3457
    .local v1, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3464
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 3465
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3469
    :goto_1
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")     allowWifiAp ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    if-nez v3, :cond_0

    .line 3471
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 3472
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 3473
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3474
    .local v2, "wifiToastIntent":Landroid/content/Intent;
    const-string v3, "info_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3475
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3478
    .end local v2    # "wifiToastIntent":Landroid/content/Intent;
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    if-nez v3, :cond_1

    .line 3479
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    .line 3480
    const/4 v3, 0x0

    invoke-virtual {p0, v6, v3}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 3481
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3482
    .restart local v2    # "wifiToastIntent":Landroid/content/Intent;
    const-string v3, "info_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3483
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3486
    .end local v2    # "wifiToastIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 3458
    :catch_0
    move-exception v0

    .line 3459
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiService"

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3460
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3461
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "WifiService"

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3466
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 4650
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4651
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 4652
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4653
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 4652
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 4655
    :cond_0
    return-object v0
.end method

.method private isHotspotTestMode()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1223
    const/4 v6, 0x0

    .line 1224
    .local v6, "isTestMode":Z
    sget-boolean v9, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v9, :cond_2

    .line 1225
    const-string v0, "/data/misc/wifi/hotspot_info"

    .line 1226
    .local v0, "HOTSPOT_INFO_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1227
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 1230
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1232
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1233
    .local v5, "hotspotInfo":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    const-string v9, "ATT_HOTSPOT"

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1234
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-ne v9, v7, :cond_1

    move v6, v7

    :goto_1
    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    .line 1237
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1238
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1241
    if-eqz v1, :cond_2

    .line 1242
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1248
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    if-nez v6, :cond_3

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    if-eqz v9, :cond_4

    :cond_3
    move v8, v7

    :cond_4
    return v8

    .line 1240
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 1241
    :goto_4
    if-eqz v1, :cond_5

    .line 1242
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1240
    :cond_5
    :goto_5
    throw v7

    .line 1243
    :catch_1
    move-exception v4

    .line 1244
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1243
    :catch_2
    move-exception v4

    .line 1244
    .end local v1    # "buf":Ljava/io/BufferedReader;
    :goto_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1241
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :cond_6
    if-eqz v2, :cond_2

    .line 1242
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 1243
    :catch_3
    move-exception v4

    goto :goto_6

    .line 1240
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1237
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private isIMEIWritten()Z
    .locals 4

    .prologue
    .line 1212
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1214
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1216
    const/4 v2, 0x1

    .line 1219
    :goto_0
    return v2

    .line 1218
    :cond_0
    const-string v2, "WifiService"

    const-string v3, "Fail to get IMEI"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSecuredAp(I)Z
    .locals 7
    .param p1, "networkId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4592
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 4593
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 4594
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4595
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_0

    .line 4596
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4610
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v3

    .line 4599
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4603
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-nez v5, :cond_1

    move v3, v4

    .line 4606
    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    move v3, v4

    .line 4610
    goto :goto_0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiService$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4287
    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 4294
    :goto_0
    return-void

    .line 4291
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 4287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiService$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4297
    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 4304
    :goto_0
    return-void

    .line 4301
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 4297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readWifiVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 3576
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 3577
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 3578
    .local v4, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3579
    .local v3, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 3582
    .local v0, "bufLine":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3583
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Not Found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 3597
    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 3603
    :cond_0
    :goto_0
    return-object v7

    .line 3586
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3587
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    if-nez v5, :cond_3

    .line 3588
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Can not open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 3597
    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_1
    move-object v4, v5

    .line 3588
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 3590
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3591
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 3593
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 3594
    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :goto_3
    :try_start_6
    const-string v7, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3597
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 3603
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3597
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_5
    move-object v4, v5

    .line 3601
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 3596
    :catchall_0
    move-exception v7

    .line 3597
    :goto_6
    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 3596
    :cond_7
    :goto_7
    throw v7

    .line 3598
    :catch_1
    move-exception v2

    .line 3599
    .local v2, "e2":Ljava/lang/Exception;
    const-string v8, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3598
    .end local v2    # "e2":Ljava/lang/Exception;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 3599
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v7, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3598
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 3599
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v8, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3598
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .line 3599
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v8, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3598
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 3599
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v7, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3596
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_6

    .line 3593
    :catch_6
    move-exception v1

    goto :goto_3
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 3489
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3490
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3491
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3492
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3493
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3494
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3495
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3497
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3499
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3501
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3506
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3507
    return-void
.end method

.method private registerForScanModeChange()V
    .locals 4

    .prologue
    .line 3440
    new-instance v0, Lcom/android/server/wifi/WifiService$15;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiService$15;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Handler;)V

    .line 3448
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3451
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 4372
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$4200(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;

    move-result-object v3

    .line 4374
    .local v3, "wifiLock":Lcom/android/server/wifi/WifiService$WifiLock;
    sget-boolean v4, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4376
    :cond_0
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 4378
    .local v0, "hadLock":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4380
    .local v1, "ident":J
    if-eqz v0, :cond_1

    .line 4381
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 4382
    iget v4, v3, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 4393
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x26006

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4397
    :cond_1
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4400
    return v0

    .line 4376
    .end local v0    # "hadLock":Z
    .end local v1    # "ident":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 4384
    .restart local v0    # "hadLock":Z
    .restart local v1    # "ident":J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    goto :goto_1

    .line 4395
    :catch_0
    move-exception v4

    goto :goto_2

    .line 4387
    :pswitch_1
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4397
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4390
    :pswitch_2
    :try_start_2
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1252
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1254
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1256
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private removeMulticasterLocked(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "uid"    # I

    .prologue
    .line 4506
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 4508
    .local v2, "removed":Lcom/android/server/wifi/WifiService$Multicaster;
    if-eqz v2, :cond_0

    .line 4509
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 4511
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 4512
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 4515
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4517
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4520
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4522
    return-void

    .line 4520
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4518
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private resolveBatchedScannersLocked()V
    .locals 20

    .prologue
    .line 2165
    new-instance v14, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v14}, Landroid/net/wifi/BatchedScanSettings;-><init>()V

    .line 2166
    .local v14, "setting":Landroid/net/wifi/BatchedScanSettings;
    const/4 v12, 0x0

    .line 2167
    .local v12, "responsibleWorkSource":Landroid/os/WorkSource;
    const/4 v11, 0x0

    .line 2168
    .local v11, "responsibleUid":I
    const-wide/16 v9, 0x0

    .line 2170
    .local v9, "responsibleCsph":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_0

    .line 2171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/net/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    .line 2240
    :goto_0
    return-void

    .line 2174
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    .line 2175
    .local v8, "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    iget-object v13, v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    .line 2182
    .local v13, "s":Landroid/net/wifi/BatchedScanSettings;
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_2

    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 2184
    :cond_2
    const/16 v1, 0x14

    .line 2192
    .local v1, "currentChannelCount":I
    :cond_3
    :goto_2
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 2193
    const/16 v4, 0x1e

    .line 2197
    .local v4, "currentScanInterval":I
    :goto_3
    mul-int/lit16 v15, v1, 0xe10

    div-int/2addr v15, v4

    int-to-double v2, v15

    .line 2199
    .local v2, "currentCsph":D
    cmpl-double v15, v2, v9

    if-lez v15, :cond_4

    .line 2200
    iget v11, v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->uid:I

    .line 2201
    iget-object v12, v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->workSource:Landroid/os/WorkSource;

    .line 2202
    move-wide v9, v2

    .line 2205
    :cond_4
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 2207
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 2209
    :cond_5
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    iget v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 2212
    :cond_6
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 2214
    :cond_7
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 2216
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 2218
    :cond_8
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    iget v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 2221
    :cond_9
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 2223
    :cond_a
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_11

    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    if-eqz v15, :cond_11

    .line 2224
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_b

    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    if-eqz v15, :cond_1

    .line 2225
    :cond_b
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v15, :cond_c

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 2226
    :cond_c
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2227
    .local v5, "i":Ljava/lang/String;
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2186
    .end local v1    # "currentChannelCount":I
    .end local v2    # "currentCsph":D
    .end local v4    # "currentScanInterval":I
    .end local v5    # "i":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_e
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v1

    .line 2188
    .restart local v1    # "currentChannelCount":I
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    const-string v16, "A"

    invoke-interface/range {v15 .. v16}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    add-int/lit8 v1, v1, 0x8

    .line 2189
    :cond_f
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    const-string v16, "B"

    invoke-interface/range {v15 .. v16}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    add-int/lit8 v1, v1, 0xa

    goto/16 :goto_2

    .line 2195
    :cond_10
    iget v4, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .restart local v4    # "currentScanInterval":I
    goto/16 :goto_3

    .line 2231
    .restart local v2    # "currentCsph":D
    :cond_11
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_12

    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    if-eqz v15, :cond_1

    .line 2232
    :cond_12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    goto/16 :goto_1

    .line 2237
    .end local v1    # "currentChannelCount":I
    .end local v2    # "currentCsph":D
    .end local v4    # "currentScanInterval":I
    .end local v8    # "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    .end local v13    # "s":Landroid/net/wifi/BatchedScanSettings;
    :cond_13
    invoke-virtual {v14}, Landroid/net/wifi/BatchedScanSettings;->constrain()V

    .line 2238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    double-to-int v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v14, v11, v0, v12}, Landroid/net/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized setWifiEnabled(ZI)Z
    .locals 13
    .param p1, "enable"    # Z
    .param p2, "cmd"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const v12, 0x2600d

    const/4 v7, 0x0

    .line 2350
    monitor-enter p0

    :try_start_0
    sget-boolean v10, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v10, :cond_0

    .line 2351
    const-string v10, "WifiService"

    const-string v11, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    :cond_0
    if-eqz p1, :cond_1

    .line 2355
    const/4 v5, 0x0

    .line 2357
    .local v5, "userId":I
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v10

    iget v5, v10, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2364
    :goto_0
    :try_start_2
    iget-object v10, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v5}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2367
    :goto_1
    :try_start_3
    iget-boolean p1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 2368
    iget-boolean v10, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    if-nez v10, :cond_1

    .line 2369
    const-string v8, "WifiService"

    const-string v9, "Wi-Fi is not allowed (Policy)a"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2371
    .local v6, "wifiToastIntent":Landroid/content/Intent;
    const-string v8, "info_type"

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2372
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x20130

    invoke-virtual {v8, v9, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2453
    .end local v5    # "userId":I
    .end local v6    # "wifiToastIntent":Landroid/content/Intent;
    :goto_2
    monitor-exit p0

    return v7

    .line 2358
    .restart local v5    # "userId":I
    :catch_0
    move-exception v0

    .line 2359
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v10, "WifiService"

    const-string v11, "Failed getting userId using ActivityManagerNative"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2350
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "userId":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2360
    .restart local v5    # "userId":I
    :catch_1
    move-exception v0

    .line 2361
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_5
    const-string v10, "WifiService"

    const-string v11, "Failed getting userId using ActivityManagerNative"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2389
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v5    # "userId":I
    :cond_1
    if-eqz p1, :cond_4

    .line 2390
    iget-object v11, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne p2, v12, :cond_2

    move v10, v9

    :goto_3
    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiStateMachine;->canEnabledFirmwareType(I)I

    move-result v1

    .line 2391
    .local v1, "enabledFirmwareType":I
    if-ltz v1, :cond_4

    .line 2392
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2393
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "req_type"

    if-ne p2, v12, :cond_3

    move v8, v9

    :goto_4
    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2394
    const-string v8, "extra_type"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2395
    const/high16 v8, 0x14000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2396
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x20130

    invoke-virtual {v8, v9, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    .end local v1    # "enabledFirmwareType":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    move v10, v7

    .line 2390
    goto :goto_3

    .restart local v1    # "enabledFirmwareType":I
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    move v8, v7

    .line 2393
    goto :goto_4

    .line 2403
    .end local v1    # "enabledFirmwareType":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    if-nez p1, :cond_5

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    if-eqz v9, :cond_5

    .line 2404
    const-string v9, "WifiService"

    const-string/jumbo v10, "sendMessage - WifiStateMachine.CMD_SEND_DHCP_RELEASE"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x200a1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2408
    :cond_5
    if-eqz p1, :cond_6

    .line 2409
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    .line 2416
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v2

    .line 2418
    .local v2, "ident":J
    :try_start_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v9

    if-nez v9, :cond_7

    .line 2442
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v8

    .line 2420
    goto :goto_2

    .line 2422
    :cond_7
    if-eqz p1, :cond_8

    .line 2431
    :cond_8
    if-eqz p1, :cond_9

    if-eq p2, v12, :cond_9

    .line 2442
    :cond_9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2445
    if-ne p2, v12, :cond_c

    .line 2446
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    if-eqz p1, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {v9, p2, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    .line 2450
    :goto_5
    if-nez p1, :cond_b

    :cond_b
    move v7, v8

    .line 2453
    goto/16 :goto_2

    .line 2442
    :catchall_1
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 2448
    :cond_c
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v7, p2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 2365
    .end local v2    # "ident":J
    .restart local v5    # "userId":I
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method private stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .prologue
    .line 2147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2148
    .local v0, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiService$BatchedScanRequest;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    monitor-enter v4

    .line 2149
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    .line 2150
    .local v2, "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {p1, v3}, Landroid/net/wifi/BatchedScanSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2151
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    if-eqz p1, :cond_0

    .line 2155
    .end local v2    # "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    .line 2156
    .restart local v2    # "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2161
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2158
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2159
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->resolveBatchedScannersLocked()V

    .line 2161
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2162
    return-void
.end method

.method private writeCredInfo(Ljava/lang/String;)V
    .locals 12
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 4682
    const-string v4, "/data/misc/wifi/"

    .line 4683
    .local v4, "filePath":Ljava/lang/String;
    const/4 v1, 0x1

    .line 4685
    .local v1, "count":I
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cred.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4686
    .local v7, "newFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4687
    new-instance v7, Ljava/io/File;

    .end local v7    # "newFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cred_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4688
    .restart local v7    # "newFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4689
    add-int/lit8 v1, v1, 0x1

    .line 4690
    new-instance v7, Ljava/io/File;

    .end local v7    # "newFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cred_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .restart local v7    # "newFile":Ljava/io/File;
    goto :goto_0

    .line 4694
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 4695
    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File name :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chmod 664  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4697
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 4699
    .local v8, "p":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 4700
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4708
    .end local v0    # "command":Ljava/lang/String;
    .end local v8    # "p":Ljava/lang/Process;
    :goto_1
    const/4 v5, 0x0

    .line 4710
    .local v5, "fw":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4711
    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .local v6, "fw":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4715
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v5, v6

    .line 4722
    .end local v6    # "fw":Ljava/io/FileOutputStream;
    .end local v7    # "newFile":Ljava/io/File;
    :goto_2
    return-void

    .line 4701
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v7    # "newFile":Ljava/io/File;
    .restart local v8    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 4702
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 4704
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "p":Ljava/lang/Process;
    :catch_1
    move-exception v2

    .line 4705
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 4717
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "newFile":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 4718
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v9, "WifiService"

    const-string v10, "File not found"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4712
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v7    # "newFile":Ljava/io/File;
    :catch_3
    move-exception v3

    .line 4713
    .local v3, "e1":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4715
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 4719
    .end local v3    # "e1":Ljava/lang/Exception;
    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .end local v7    # "newFile":Ljava/io/File;
    :catch_4
    move-exception v2

    .line 4720
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4715
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v7    # "newFile":Ljava/io/File;
    :catchall_0
    move-exception v9

    :goto_4
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v9
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v6    # "fw":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 4712
    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v6    # "fw":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 4466
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 4468
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 4469
    :try_start_0
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    .line 4470
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/WifiService$Multicaster;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/wifi/WifiService$Multicaster;-><init>(Lcom/android/server/wifi/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4475
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 4476
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4478
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4479
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4481
    .local v0, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4484
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4486
    return-void

    .line 4476
    .end local v0    # "ident":J
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4484
    .restart local v0    # "ident":J
    .restart local v2    # "uid":I
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4482
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4263
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4264
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    .line 4267
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    sget-boolean v1, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4269
    :cond_0
    const/4 v1, 0x0

    .line 4282
    :goto_0
    return v1

    .line 4271
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 4272
    const/4 p4, 0x0

    .line 4274
    :cond_2
    if-eqz p4, :cond_3

    .line 4275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    .line 4277
    :cond_3
    if-nez p4, :cond_4

    .line 4278
    new-instance p4, Landroid/os/WorkSource;

    .end local p4    # "ws":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 4280
    .restart local p4    # "ws":Landroid/os/WorkSource;
    :cond_4
    new-instance v0, Lcom/android/server/wifi/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiService$WifiLock;-><init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 4281
    .local v0, "wifiLock":Lcom/android/server/wifi/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v2

    .line 4282
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 4283
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 2752
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2753
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v1, v2, :cond_0

    .line 2754
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 2756
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2764
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 2765
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 2772
    :goto_0
    return v0

    .line 2767
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2771
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "bad network configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 3064
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3066
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 3067
    return-void
.end method

.method public callSECApi(Landroid/os/Message;)I
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 3608
    if-nez p1, :cond_1

    move v9, v10

    .line 4038
    :cond_0
    :goto_0
    :pswitch_0
    return v9

    .line 3611
    :cond_1
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    :pswitch_1
    move v9, v10

    .line 4038
    goto :goto_0

    .line 3613
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    goto :goto_0

    .line 3616
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3617
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto :goto_0

    .line 3619
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3620
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto :goto_0

    .line 3623
    :pswitch_5
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v8}, Landroid/os/INetworkManagementService;->getAccessPointNumConnectedSta()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_0

    .line 3624
    :catch_0
    move-exception v3

    .line 3625
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v9, v10

    .line 3626
    goto :goto_0

    .line 3630
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_6
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3631
    .local v0, "args":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v10, "mac"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Landroid/os/INetworkManagementService;->setAccessPointDisassocSta(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    goto :goto_0

    .line 3632
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_1
    move-exception v3

    .line 3633
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3638
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_7
    :try_start_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v8}, Landroid/os/INetworkManagementService;->readWhiteList()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    goto :goto_0

    .line 3639
    :catch_2
    move-exception v3

    .line 3640
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3645
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_8
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3646
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v10, "macaddrAcl"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/os/INetworkManagementService;->setMacaddrAcl(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    goto :goto_0

    .line 3647
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_3
    move-exception v3

    .line 3648
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3652
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_9
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v8

    if-nez v8, :cond_0

    .line 3654
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3655
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v10, "maxClient"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    goto :goto_0

    .line 3656
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_4
    move-exception v3

    .line 3657
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3663
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_a
    :try_start_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 3664
    .local v6, "type":Ljava/lang/String;
    const-string/jumbo v8, "wps_start"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3665
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v8}, Landroid/os/INetworkManagementService;->startWpsPbc()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 3669
    .end local v6    # "type":Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 3670
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v9, v10

    .line 3671
    goto/16 :goto_0

    .line 3666
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "type":Ljava/lang/String;
    :cond_2
    :try_start_6
    const-string/jumbo v8, "wps_cancel"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3667
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v8}, Landroid/os/INetworkManagementService;->cancelWps()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 3677
    .end local v6    # "type":Ljava/lang/String;
    :pswitch_b
    :try_start_7
    iget-object v10, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "att_hotspot_test"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    if-ne v10, v8, :cond_3

    .line 3678
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    .line 3681
    :goto_1
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mHotspotTestMode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    .line 3686
    :goto_2
    iget-boolean v10, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    if-eqz v10, :cond_4

    :goto_3
    move v9, v8

    goto/16 :goto_0

    .line 3680
    :cond_3
    const/4 v10, 0x0

    :try_start_8
    iput-boolean v10, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 3682
    :catch_6
    move-exception v5

    .line 3683
    .local v5, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v9, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    .line 3684
    iget-object v10, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "att_hotspot_test"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .end local v5    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    move v8, v9

    .line 3686
    goto :goto_3

    .line 3698
    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3699
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 3704
    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3705
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_0

    .line 3711
    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3712
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3717
    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3718
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    :pswitch_10
    move v9, v10

    .line 3724
    goto/16 :goto_0

    :pswitch_11
    move v9, v10

    .line 3741
    goto/16 :goto_0

    :pswitch_12
    move v9, v10

    .line 3753
    goto/16 :goto_0

    .line 3763
    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3764
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    :pswitch_14
    move v9, v10

    .line 3770
    goto/16 :goto_0

    .line 3772
    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3773
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3774
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v10, "netId"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiStateMachine;->unlockMobNetwork(I)V

    goto/16 :goto_0

    .line 3779
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3780
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3784
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3786
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v10, "enable"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3787
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 3788
    const-string v8, "WifiService"

    const-string v10, "WiFi Enabled with p2p -> Stop Scan, Stop Assoc"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    :goto_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 3790
    :cond_5
    const-string v8, "WifiService"

    const-string v10, "Start scan, start assoc"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3798
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3799
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v10, "mode"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiStateMachine;->setRvfMode(I)V

    goto/16 :goto_0

    .line 3803
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_19
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v9

    goto/16 :goto_0

    .line 3808
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3809
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3813
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3814
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "channel"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->startPartialScan([I)I

    move-result v9

    goto/16 :goto_0

    .line 3817
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_1c
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3824
    :pswitch_1d
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3828
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3829
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3831
    :pswitch_1f
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3837
    :pswitch_20
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3838
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3840
    :pswitch_21
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3841
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3868
    :pswitch_22
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callSECApi - id : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3871
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v8, :cond_6

    .line 3872
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v8, v9, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3874
    :cond_6
    const-string v8, "WifiService"

    const-string v9, "mWifiStateMachineChannel is not initialized"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 3875
    goto/16 :goto_0

    .line 3884
    :pswitch_23
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callSECApi - id : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3887
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v8, :cond_7

    .line 3888
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v8, v9, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3890
    :cond_7
    const-string v8, "WifiService"

    const-string v9, "mWifiStateMachineChannel is not initialized"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 3891
    goto/16 :goto_0

    .line 3901
    :pswitch_24
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callSECApi - id : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3904
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v8, :cond_8

    .line 3905
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v8, v9, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3907
    :cond_8
    const-string v8, "WifiService"

    const-string v9, "mWifiStateMachineChannel is not initialized"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 3908
    goto/16 :goto_0

    .line 3916
    :pswitch_25
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v9

    goto/16 :goto_0

    .line 3924
    :pswitch_26
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    const-string v10, "mode"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiStateMachine;->setDhcpRenewAfterRoamingMode(I)I

    move-result v9

    goto/16 :goto_0

    .line 3931
    :pswitch_27
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3933
    const-string v8, "persist.service.wifi_band"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_0

    .line 3935
    :pswitch_28
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3937
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3938
    .local v1, "band":I
    if-ltz v1, :cond_9

    const/4 v8, 0x2

    if-le v1, v8, :cond_a

    :cond_9
    move v9, v10

    .line 3939
    goto/16 :goto_0

    .line 3942
    :cond_a
    const-string v8, "persist.service.wifi_band"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3948
    .end local v1    # "band":I
    :pswitch_29
    const-string v8, "WifiService"

    const-string v9, "SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_RIL called"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 3962
    goto/16 :goto_0

    .line 3966
    :pswitch_2a
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3967
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3972
    :pswitch_2b
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3976
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 3980
    :pswitch_2c
    :try_start_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3981
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string/jumbo v9, "txPower"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->setTxPower(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v9

    goto/16 :goto_0

    .line 3982
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_7
    move-exception v3

    .line 3983
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v9, v10

    .line 3985
    goto/16 :goto_0

    .line 3991
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_2d
    :try_start_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 3992
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v8

    if-nez v8, :cond_b

    move v9, v10

    .line 3993
    goto/16 :goto_0

    .line 3996
    :cond_b
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v8

    if-nez v8, :cond_c

    .line 3997
    const-string v8, "WifiService"

    const-string v9, "Resetting an Open HOTSPOT is NOT allowed."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3999
    .local v7, "wifiToastIntent":Landroid/content/Intent;
    const-string v8, "info_type"

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4000
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move v9, v10

    .line 4001
    goto/16 :goto_0

    .line 4003
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "wifiToastIntent":Landroid/content/Intent;
    :catch_8
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    move v9, v10

    .line 4004
    goto/16 :goto_0

    .line 4008
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v10, 0x26016

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v10, v9, v9, v11}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 4011
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_2e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 4012
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    :cond_d
    move v9, v10

    .line 4014
    goto/16 :goto_0

    .line 4016
    :pswitch_2f
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 4017
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessSecuredPermission()V

    .line 4018
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "callSECApi: SEC_COMMAND_ID_CMCC_WLAN_ENABLE_WARN. setWifiEnabled: true pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    goto/16 :goto_0

    .line 4024
    :pswitch_30
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v9

    goto/16 :goto_0

    .line 4027
    :pswitch_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 4028
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v8, "keep_connection"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 4029
    .local v4, "keepConnection":Z
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiStateMachine;->sendUserSelection(Z)V

    goto/16 :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "keepConnection":Z
    :pswitch_32
    move v9, v8

    .line 4033
    goto/16 :goto_0

    .line 3611
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_4
        :pswitch_c
        :pswitch_e
        :pswitch_16
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_1
        :pswitch_14
        :pswitch_d
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_15
        :pswitch_27
        :pswitch_28
        :pswitch_1a
        :pswitch_1
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1
        :pswitch_1
        :pswitch_29
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1
        :pswitch_1
        :pswitch_1e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2a
        :pswitch_2b
        :pswitch_1f
        :pswitch_20
        :pswitch_1
        :pswitch_20
        :pswitch_20
        :pswitch_1
        :pswitch_1
        :pswitch_2f
        :pswitch_2e
        :pswitch_21
        :pswitch_32
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_1
        :pswitch_22
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_22
        :pswitch_22
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_22
        :pswitch_22
        :pswitch_23
        :pswitch_23
        :pswitch_24
        :pswitch_24
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_25
        :pswitch_26
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_2c
        :pswitch_1
        :pswitch_2d
        :pswitch_1
        :pswitch_1
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 4042
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 4147
    :cond_0
    :goto_0
    return-object v1

    .line 4044
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 4045
    const-string v1, ""

    goto :goto_0

    .line 4051
    :sswitch_1
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECStringApi - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 4054
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_1

    .line 4055
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4057
    :cond_1
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4065
    :sswitch_2
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_ID_GET_SCAN_RESULTS_EX"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_2

    .line 4068
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4070
    :cond_2
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4074
    :sswitch_3
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_MSAP_GAS_RESP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4075
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 4077
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_3

    .line 4078
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4080
    :cond_3
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4088
    :sswitch_4
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_MSAP_BSS_INFO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_4

    .line 4091
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4093
    :cond_4
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4101
    :sswitch_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 4103
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessSecuredPermission()V

    .line 4105
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    .line 4110
    const/4 v3, 0x0

    .line 4111
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_5

    .line 4112
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    .line 4118
    const/4 v1, 0x0

    .line 4119
    .local v1, "encryptData":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 4120
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4122
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiService$EncryptTool;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 4114
    .end local v1    # "encryptData":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4123
    .restart local v1    # "encryptData":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4124
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiService"

    const-string v5, "Encryption failure"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4042
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x27 -> :sswitch_5
        0x41 -> :sswitch_3
        0x44 -> :sswitch_4
        0x6c -> :sswitch_1
        0xa0 -> :sswitch_1
    .end sparse-switch
.end method

.method public captivePortalCheckComplete()V
    .locals 1

    .prologue
    .line 3042
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 3043
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->captivePortalCheckComplete()V

    .line 3044
    return-void
.end method

.method public checkAndStartWifi()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1141
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    if-nez v1, :cond_0

    .line 1173
    :goto_0
    return-void

    .line 1145
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiService;->isShutdown:Z

    .line 1148
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    .line 1149
    .local v0, "wifiEnabled":Z
    const-string v2, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 1158
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiIbssToggleEnabled()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1159
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiIbssToggled(Z)V

    .line 1160
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiSettingsStore;->setOrRecoveryScanMode(Z)V

    .line 1165
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto :goto_0

    .line 1149
    :cond_3
    const-string v1, "disabled"

    goto :goto_1
.end method

.method public checkAndStartWifiAp(I)V
    .locals 8
    .param p1, "checkIMEI"    # I

    .prologue
    const/4 v7, 0x1

    .line 1177
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    if-nez v4, :cond_0

    .line 1209
    :goto_0
    return-void

    .line 1179
    :cond_0
    if-lez p1, :cond_1

    .line 1180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 1181
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->isIMEIWritten()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1182
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMEI is written, i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1194
    .local v2, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1195
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1197
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v3

    .line 1198
    .local v3, "wifiState":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1201
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 1203
    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1208
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 1186
    .end local v2    # "mCm":Landroid/net/ConnectivityManager;
    .end local v3    # "wifiState":I
    .restart local v1    # "i":I
    :cond_5
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1180
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 1204
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .restart local v2    # "mCm":Landroid/net/ConnectivityManager;
    .restart local v3    # "wifiState":I
    :catch_1
    move-exception v0

    .line 1205
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public checkWarningPopup()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4664
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wlan_permission_available"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 3074
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3076
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 3077
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2817
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2818
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableNetwork: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 2820
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "invalid netId was used"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    :goto_0
    return v0

    .line 2823
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_2

    .line 2824
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    goto :goto_0

    .line 2826
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 2711
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2712
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 2714
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 3511
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 3513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3573
    :goto_0
    return-void

    .line 3518
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wi-Fi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stay-awake conditions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "stay_on_while_plugged_in"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3522
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMulticastEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMulticastDisabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HS20Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_hotspot20_enable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3529
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3530
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3531
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3532
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3534
    const-string v6, "Latest scan results:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3535
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 3536
    .local v4, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 3537
    const-string v6, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 3539
    .local v3, "r":Landroid/net/wifi/ScanResult;
    const-string v7, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v6, 0x5

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v6, v8, v10

    const/4 v6, 0x1

    iget v9, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v9, 0x4

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v6, ""

    :goto_2
    aput-object v6, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 3547
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locks acquired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full high perf, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3551
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locks released: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full high perf, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3554
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3555
    const-string v6, "Locks held:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3556
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v6, p2}, Lcom/android/server/wifi/WifiService$LockList;->access$3300(Lcom/android/server/wifi/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 3558
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3559
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 3560
    .local v5, "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multicasters held("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_3

    .line 3562
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 3563
    .local v2, "m":Lcom/android/server/wifi/WifiService$Multicaster;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$Multicaster;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 3566
    .end local v2    # "m":Lcom/android/server/wifi/WifiService$Multicaster;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, p1, p2, p3}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3567
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3568
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3569
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wi-Fi version\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/data/.wifiver.info"

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiService;->readWifiVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3572
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 2800
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2801
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2802
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 2806
    :goto_0
    return v0

    .line 2805
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "remoteAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 3157
    new-instance v0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiService$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiService;)V

    .line 3158
    .local v0, "params":Lcom/android/server/wifi/WifiService$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    .line 3159
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->enable:Z

    .line 3160
    new-instance v1, Lcom/android/server/wifi/WifiService$TdlsTask;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiService$TdlsTask;-><init>(Lcom/android/server/wifi/WifiService;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiService$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3161
    return-void
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    .line 3166
    return-void
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 4255
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4260
    :goto_0
    return-void

    .line 4258
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2118
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2119
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2132
    :goto_0
    return-object v5

    .line 2120
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2121
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2122
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2124
    .local v1, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 2126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2135
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2128
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2129
    .local v0, "currentUser":I
    if-eq v4, v0, :cond_2

    .line 2130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2135
    .end local v0    # "currentUser":I
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2132
    .restart local v0    # "currentUser":I
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetBatchedScanResultsList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto :goto_1
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3189
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3190
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2737
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2738
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2739
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 2742
    :goto_0
    return-object v0

    .line 2741
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectableAPList()Landroid/net/wifi/HS20ConnectableList;
    .locals 1

    .prologue
    .line 3312
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3313
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetConnectableAPList()Landroid/net/wifi/HS20ConnectableList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 2836
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2841
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3298
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3299
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 12

    .prologue
    .line 2980
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2981
    iget-object v11, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v2

    .line 2982
    .local v2, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-nez v11, :cond_0

    const/4 v7, 0x0

    .line 3023
    :goto_0
    return-object v7

    .line 2984
    :cond_0
    new-instance v7, Landroid/net/DhcpInfo;

    invoke-direct {v7}, Landroid/net/DhcpInfo;-><init>()V

    .line 2985
    .local v7, "info":Landroid/net/DhcpInfo;
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 2986
    .local v8, "la":Landroid/net/LinkAddress;
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 2987
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v11, v0, Ljava/net/Inet4Address;

    if-eqz v11, :cond_1

    .line 2988
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2992
    .end local v8    # "la":Landroid/net/LinkAddress;
    :cond_2
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/RouteInfo;

    .line 2993
    .local v9, "r":Landroid/net/RouteInfo;
    invoke-virtual {v9}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2994
    invoke-virtual {v9}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    .line 2995
    .local v5, "gateway":Ljava/net/InetAddress;
    instance-of v11, v5, Ljava/net/Inet4Address;

    if-eqz v11, :cond_3

    .line 2996
    check-cast v5, Ljava/net/Inet4Address;

    .end local v5    # "gateway":Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->gateway:I

    goto :goto_1

    .line 2998
    :cond_4
    invoke-virtual {v9}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v11

    if-nez v11, :cond_3

    .line 2999
    invoke-virtual {v9}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v1

    .line 3000
    .local v1, "dest":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_3

    .line 3001
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->netmask:I

    goto :goto_1

    .line 3006
    .end local v1    # "dest":Landroid/net/LinkAddress;
    .end local v9    # "r":Landroid/net/RouteInfo;
    :cond_5
    const/4 v4, 0x0

    .line 3007
    .local v4, "dnsFound":I
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 3008
    .local v3, "dns":Ljava/net/InetAddress;
    instance-of v11, v3, Ljava/net/Inet4Address;

    if-eqz v11, :cond_6

    .line 3009
    if-nez v4, :cond_9

    .line 3010
    check-cast v3, Ljava/net/Inet4Address;

    .end local v3    # "dns":Ljava/net/InetAddress;
    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->dns1:I

    .line 3014
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    if-le v4, v11, :cond_6

    .line 3017
    :cond_7
    iget-object v10, v2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .line 3018
    .local v10, "serverAddress":Ljava/net/InetAddress;
    instance-of v11, v10, Ljava/net/Inet4Address;

    if-eqz v11, :cond_8

    .line 3019
    check-cast v10, Ljava/net/Inet4Address;

    .end local v10    # "serverAddress":Ljava/net/InetAddress;
    invoke-static {v10}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->serverAddress:I

    .line 3021
    :cond_8
    iget v11, v2, Landroid/net/DhcpResults;->leaseDuration:I

    iput v11, v7, Landroid/net/DhcpInfo;->leaseDuration:I

    goto/16 :goto_0

    .line 3012
    .restart local v3    # "dns":Ljava/net/InetAddress;
    :cond_9
    check-cast v3, Ljava/net/Inet4Address;

    .end local v3    # "dns":Ljava/net/InetAddress;
    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->dns2:I

    goto :goto_2
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 2962
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2963
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getFullRoamScanPeriod()I
    .locals 1

    .prologue
    .line 3262
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3263
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 3318
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3319
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 2

    .prologue
    .line 3338
    const-string v0, "pppoe"

    const-string/jumbo v1, "wifiservice: getPPPOEInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    if-eqz v0, :cond_0

    .line 3340
    const-string v0, "pppoe"

    const-string v1, "return getPPPOEInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/PppoeStateMachine;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    .line 3344
    :goto_0
    return-object v0

    .line 3343
    :cond_0
    const-string v0, "pppoe"

    const-string v1, "mPppoeStateMachine is NUll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPartialScanResults([I)Ljava/util/List;
    .locals 1
    .param p1, "channels"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2871
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2872
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncGetPartialScanResultsList([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoamBand()I
    .locals 1

    .prologue
    .line 3280
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3281
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamBand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .locals 1

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3227
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamDelta()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .locals 1

    .prologue
    .line 3244
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3245
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .locals 1

    .prologue
    .line 3208
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3209
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamTrigger()I

    move-result v0

    return v0
.end method

.method public getS69BssInfo(Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1392
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1393
    const-string v0, "WifiService"

    const-string v1, "getS69BssInfo service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->getS69BssInfo(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;

    move-result-object v0

    return-object v0
.end method

.method public getS69PartMsg(II)Ljava/lang/String;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1384
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1385
    const-string v0, "WifiService"

    const-string v1, "Do not support get_s69_part_msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2850
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2851
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2852
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2853
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2855
    .local v1, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2857
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2866
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2863
    return-object v5

    .line 2859
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2860
    .local v0, "currentUser":I
    if-eq v4, v0, :cond_1

    .line 2861
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2866
    .end local v0    # "currentUser":I
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2863
    .restart local v0    # "currentUser":I
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto :goto_0
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netID"    # I

    .prologue
    .line 3307
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3308
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedChannels()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2882
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2883
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2884
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2886
    .local v1, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2887
    .local v0, "currentUser":I
    if-eq v3, v0, :cond_0

    .line 2888
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2893
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2890
    return-object v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetSupportedWifiChannels()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 2893
    .end local v0    # "currentUser":I
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiApConfigTxPower()I
    .locals 1

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfigTxPower()I

    move-result v0

    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 2624
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2625
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 2615
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2616
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2663
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getAccessPointStaList()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2666
    :goto_0
    return-object v1

    .line 2664
    :catch_0
    move-exception v0

    .line 2665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2666
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApTimeOut()I
    .locals 4

    .prologue
    .line 2692
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_time_out_value"

    sget v3, Lcom/android/server/wifi/WifiService;->defaultTimeoutValue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2693
    .local v0, "sec":I
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApTimeOut, sec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 2497
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2498
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiIBSSEnabledState()I
    .locals 1

    .prologue
    .line 2503
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2504
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiIBSSState()I

    move-result v0

    return v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 3173
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3174
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3175
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 3180
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3181
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3182
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 4453
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 4455
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 4457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4458
    monitor-exit v1

    .line 4463
    :goto_0
    return-void

    .line 4460
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 4462
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBatchedScanSupported()Z
    .locals 1

    .prologue
    .line 2085
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 1

    .prologue
    .line 2970
    const/4 v0, 0x1

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 4525
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 4527
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 4528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4529
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 1

    .prologue
    .line 2703
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2704
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public modifyPasspointCred(Ljava/lang/String;)I
    .locals 2
    .param p1, "credInfo"    # Ljava/lang/String;

    .prologue
    .line 4672
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessSecuredPermission()V

    .line 4673
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->writeCredInfo(Ljava/lang/String;)V

    .line 4674
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z

    if-eqz v1, :cond_0

    .line 4675
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4676
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x2f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4677
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 4679
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 1282
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1283
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 1287
    :goto_0
    return v0

    .line 1286
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollBatchedScan()V
    .locals 1

    .prologue
    .line 2089
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2090
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v0, :cond_0

    .line 2092
    :goto_0
    return-void

    .line 2091
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->requestBatchedScanPoll()V

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 2728
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2729
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 2730
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 2720
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2721
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 2722
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 4489
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 4491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4492
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 4493
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    .line 4494
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 4495
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4496
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 4497
    .local v1, "m":Lcom/android/server/wifi/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 4498
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    .line 4495
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4501
    .end local v1    # "m":Lcom/android/server/wifi/WifiService$Multicaster;
    :cond_1
    monitor-exit v5

    .line 4502
    return-void

    .line 4501
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 4363
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4364
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v1

    .line 4365
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 4366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 2783
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2784
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2785
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 2788
    :goto_0
    return v0

    .line 2787
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeNetworkByMDM(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 4727
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 4728
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetworkByMDM(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 4731
    :goto_0
    return v0

    .line 4730
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 4
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v2, 0x0

    .line 2099
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2100
    if-eqz p3, :cond_0

    .line 2101
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceWorkSourcePermission()V

    .line 2104
    invoke-virtual {p3}, Landroid/os/WorkSource;->clearNames()V

    .line 2106
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v3, :cond_1

    .line 2114
    :goto_0
    return v2

    .line 2107
    :cond_1
    new-instance v1, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v1, p1}, Landroid/net/wifi/BatchedScanSettings;-><init>(Landroid/net/wifi/BatchedScanSettings;)V

    .line 2108
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .local v1, "requested":Landroid/net/wifi/BatchedScanSettings;
    invoke-virtual {v1}, Landroid/net/wifi/BatchedScanSettings;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p1, v1

    .end local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_0

    .line 2109
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    :cond_2
    new-instance v0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/server/wifi/WifiService$BatchedScanRequest;-><init>(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 2110
    .local v0, "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    monitor-enter v3

    .line 2111
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2112
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->resolveBatchedScannersLocked()V

    .line 2113
    monitor-exit v3

    .line 2114
    const/4 v2, 0x1

    move-object p1, v1

    .end local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_0

    .line 2113
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 2904
    const/4 v0, 0x1

    .line 2905
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2906
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 2907
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 2910
    :goto_0
    return v1

    .line 2909
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveNetworkByMDM(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4736
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 4737
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncSaveNetworkByMDM(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    .line 4740
    :goto_0
    return v0

    .line 4739
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendS69LocationServiceRequest(Ljava/lang/String;)I
    .locals 2
    .param p1, "location_request"    # Ljava/lang/String;

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1359
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1360
    const-string v0, "WifiService"

    const-string v1, "Do not support ccx_send_location_service_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 2924
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set country code to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 2927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2929
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2933
    return-void

    .line 2931
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 1
    .param p1, "countryRev"    # Ljava/lang/String;

    .prologue
    .line 3289
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3290
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 2945
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2946
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->isDualBandSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2955
    :goto_0
    return-void

    .line 2947
    :cond_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set frequency band to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2951
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2953
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFullRoamScanPeriod(I)Z
    .locals 1
    .param p1, "fullRoamScanPeriod"    # I

    .prologue
    .line 3253
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3254
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setIsFmcNetwork(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3354
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3355
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    if-eqz v1, :cond_0

    .line 3356
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiStateMachine;->setIsFmcNetwork(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setIsFmcNetwork(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3358
    :cond_0
    return v0
.end method

.method public setRoamBand(I)Z
    .locals 1
    .param p1, "roamBand"    # I

    .prologue
    .line 3271
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3272
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamBand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .locals 1
    .param p1, "roamDelta"    # I

    .prologue
    .line 3217
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3218
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 1
    .param p1, "roamScanPeriod"    # I

    .prologue
    .line 3235
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3236
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .locals 1
    .param p1, "roamTrigger"    # I

    .prologue
    .line 3199
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3200
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public setS69DisableLocationService()I
    .locals 2

    .prologue
    .line 1320
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1334
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1335
    const-string v0, "WifiService"

    const-string v1, "Do not support ccx_disable_location_service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setS69EnableLocationService()I
    .locals 2

    .prologue
    .line 1295
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1309
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1310
    const-string v0, "WifiService"

    const-string v1, "Do not support ccx_enable_location_service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiApConfigTxPower(I)V
    .locals 1
    .param p1, "txPowerMode"    # I

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfigTxPower(I)V

    .line 2679
    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2633
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2634
    if-nez p1, :cond_1

    .line 2659
    :cond_0
    :goto_0
    return-void

    .line 2636
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2639
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2644
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    if-nez v1, :cond_3

    .line 2645
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v0

    .line 2647
    .local v0, "state":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2655
    .end local v0    # "state":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 2657
    :cond_4
    const-string v1, "WifiService"

    const-string v2, "Invalid WifiConfiguration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 9
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2514
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2516
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2523
    :cond_0
    if-nez p2, :cond_1

    .line 2531
    :cond_1
    if-eqz p2, :cond_2

    .line 2545
    :cond_2
    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2604
    :goto_0
    return-void

    .line 2519
    :cond_3
    const-string v5, "WifiService"

    const-string v6, "Invalid WifiConfiguration"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2550
    :cond_4
    if-eqz p2, :cond_6

    .line 2551
    if-eqz p1, :cond_5

    move-object v2, p1

    .line 2552
    .local v2, "temp":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    if-eqz v2, :cond_6

    .line 2553
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 2554
    .local v0, "authType":I
    if-nez v0, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2555
    const-string v5, "WifiService"

    const-string v6, "Starting an Open HOTSPOT is NOT allowed."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v4, "wifiToastIntent":Landroid/content/Intent;
    const-string v5, "info_type"

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2558
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2551
    .end local v0    # "authType":I
    .end local v2    # "temp":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "wifiToastIntent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    goto :goto_1

    .line 2564
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2565
    const/4 p1, 0x0

    .line 2570
    :cond_7
    if-eqz p2, :cond_8

    .line 2571
    const/4 v3, 0x0

    .line 2573
    .local v3, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v3, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2580
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v7, 0x0

    invoke-interface {v5, v7, v3}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2583
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    if-nez v5, :cond_8

    .line 2584
    const-string v5, "WifiService"

    const-string v6, "Wi-Fi AP is not allowed (Policy)"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2586
    .restart local v4    # "wifiToastIntent":Landroid/content/Intent;
    const-string v5, "info_type"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2587
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x20130

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2574
    .end local v4    # "wifiToastIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 2575
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "WifiService"

    const-string v7, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2576
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2577
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "WifiService"

    const-string v7, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2603
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v3    # "userId":I
    :cond_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v8, 0x2600a

    if-eqz p2, :cond_9

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v7, v8, v5, v6, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_9
    move v5, v6

    goto :goto_4

    .line 2581
    .restart local v3    # "userId":I
    :catch_2
    move-exception v5

    goto :goto_3
.end method

.method public setWifiApTimeOut(I)V
    .locals 4
    .param p1, "sec"    # I

    .prologue
    .line 2685
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_time_out_value"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2686
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiApTimeOut, sec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2688
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2689
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2690
    return-void
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2313
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2314
    const-string v1, "WifiService"

    const-string v2, "Wi-Fi state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2345
    :goto_0
    monitor-exit p0

    return v0

    .line 2329
    :cond_0
    :try_start_1
    const-string v1, ""

    const-string v2, "JPN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "toddler_mode_switch"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    if-eqz p1, :cond_1

    .line 2331
    const-string v1, "WifiService"

    const-string/jumbo v2, "setWifiEnabled: Network Restriction BLOCKED "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2336
    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->isShutdown:Z

    if-eqz v1, :cond_2

    .line 2337
    const-string v1, "WifiService"

    const-string v2, "Can\'t turn on wifi during shutdown."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2342
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2343
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    const v0, 0x26008

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized setWifiIBSSEnabled(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 2280
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2281
    const-string v2, "WifiService"

    const-string v3, "Wi-Fi state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2282
    const/4 v2, 0x0

    .line 2301
    :goto_0
    monitor-exit p0

    return v2

    .line 2286
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2290
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiIBSSEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 2296
    .local v0, "ident":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiIbssToggled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2298
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2301
    const v2, 0x2600d

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(ZI)Z

    move-result v2

    goto :goto_0

    .line 2298
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2280
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showHS20WifiNotification(Lcom/android/server/wifi/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V
    .locals 10
    .param p1, "type"    # Lcom/android/server/wifi/WifiService$HS20_ConType;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4534
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showHS20WifiNotification   is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4535
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 4536
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-eq p1, v5, :cond_7

    .line 4538
    if-nez p2, :cond_0

    .line 4588
    :goto_0
    return-void

    .line 4541
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 4542
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    .line 4543
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 4544
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 4545
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 4546
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.SEC_LAUNCH_OPERTOR_URL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4550
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4551
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 4552
    .local v4, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4553
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 4555
    .local v0, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_3

    .line 4556
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x10803f9

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 4560
    :goto_1
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 4561
    const v5, 0x10406ce

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4565
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4566
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 4567
    const v5, 0x10406cc

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4571
    :goto_3
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 4572
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4574
    :cond_2
    :try_start_0
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_6

    .line 4575
    const v5, 0x10803f9

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4579
    :goto_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    goto/16 :goto_0

    .line 4558
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x10803fa

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_1

    .line 4563
    :cond_4
    const v5, 0x10406cf

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 4569
    :cond_5
    const v5, 0x10406cd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 4577
    :cond_6
    const v5, 0x10803fa

    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 4578
    :catch_0
    move-exception v5

    goto :goto_4

    .line 4581
    .end local v0    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "title":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 4582
    const v5, 0x10803f9

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4583
    const v5, 0x10803fa

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4584
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    .line 4586
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    goto/16 :goto_0
.end method

.method public shutdown()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2460
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiService;->isShutdown:Z

    .line 2462
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2464
    const-string v1, "WifiService"

    const-string v2, "Shutdown is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v0

    .line 2468
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2470
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "Mobile AP will disable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2475
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    if-eqz v1, :cond_2

    .line 2476
    const-string v1, "WifiService"

    const-string/jumbo v2, "sendMessage - WifiStateMachine.CMD_SEND_DHCP_RELEASE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x200a1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2479
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 2481
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->mIsReceiverRegistered:Z

    if-eqz v1, :cond_3

    .line 2482
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2483
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mIsReceiverRegistered:Z

    .line 2485
    :cond_3
    return v4
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    const v2, 0x70001

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiService$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3326
    return-void
.end method

.method public startScan(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 2018
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2020
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startScan by pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    if-nez v0, :cond_1

    .line 2024
    const-string v0, "WifiService"

    const-string/jumbo v1, "skip Scan : not yet getting BootCompleted in wifiservice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    if-eqz p1, :cond_2

    .line 2029
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceWorkSourcePermission()V

    .line 2032
    invoke-virtual {p1}, Landroid/os/WorkSource;->clearNames()V

    .line 2050
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(ILandroid/os/WorkSource;)V

    .line 2052
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->scanStarted()V

    goto :goto_0
.end method

.method public startWifi()V
    .locals 2

    .prologue
    .line 3031
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 3037
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 3038
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 3039
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 2141
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2142
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v0, :cond_0

    .line 2144
    :goto_0
    return-void

    .line 2143
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiService;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    goto :goto_0
.end method

.method public stopPPPOE()V
    .locals 3

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    const v2, 0x70004

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiService$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3331
    return-void
.end method

.method public stopWifi()V
    .locals 2

    .prologue
    .line 3051
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 3056
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 3057
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 4337
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 4338
    .local v3, "pid":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 4339
    const/4 p2, 0x0

    .line 4341
    :cond_0
    if-eqz p2, :cond_1

    .line 4342
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    .line 4344
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4346
    .local v0, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4347
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$4000(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 4348
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 4349
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4355
    .end local v2    # "index":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4356
    :catch_0
    move-exception v6

    .line 4358
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4360
    return-void

    .line 4351
    .restart local v2    # "index":I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # getter for: Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService$LockList;->access$4100(Lcom/android/server/wifi/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiService$WifiLock;

    .line 4352
    .local v5, "wl":Lcom/android/server/wifi/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 4353
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 4354
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 4355
    monitor-exit v7

    goto :goto_0

    .line 4353
    :cond_3
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4358
    .end local v2    # "index":I
    .end local v5    # "wl":Lcom/android/server/wifi/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
