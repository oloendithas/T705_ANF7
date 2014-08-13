.class public Lcom/android/server/RCPManagerService;
.super Landroid/os/IRCPManager$Stub;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RCPManagerService$ExchangeDataInfo;,
        Lcom/android/server/RCPManagerService$NotificationReceiver;,
        Lcom/android/server/RCPManagerService$RCPServiceConnection;,
        Lcom/android/server/RCPManagerService$EmergencyModeReceiver;,
        Lcom/android/server/RCPManagerService$PackageReceiver;,
        Lcom/android/server/RCPManagerService$BootReceiver;,
        Lcom/android/server/RCPManagerService$ClipboardReceiver;,
        Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_NOTIFICATION:Ljava/lang/String; = "com.samsung.knox.ACTION_CANCEL_NOTIFICATION"

.field private static final ACTION_NEW_NOTIFICATION:Ljava/lang/String; = "com.samsung.knox.ACTION_NEW_NOTIFICATION"

.field public static final CLIPBOARD_CLIPS_CLEARED_INTENT:Ljava/lang/String; = "com.samsung.knox.clipboard.clipscleared"

.field public static final CLIPBOARD_CLIP_REMOVED_INTENT:Ljava/lang/String; = "com.samsung.knox.clipboard.clipremoved"

.field private static final CLIPBOARD_SANDBOX_ROOT:Ljava/lang/String; = "/data/clipboardSandbox"

.field private static final KNOX_MODE_SWITCHER_CLASS_NAME:Ljava/lang/String; = "com.sec.knox.bridge.handlers.NotificationHandler"

.field private static final KNOX_MODE_SWITCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.bridge"

.field private static final LAUNCH_CONTENT_INTENT_ACTION:Ljava/lang/String; = "launchContentIntent"

.field private static final LAUNCH_INTENT_KEY:Ljava/lang/String; = "launchIntent"

.field private static final OWNER_ID:Ljava/lang/Integer;

.field private static final PENDING_INTENT_KEY:Ljava/lang/String; = "pendingIntent"

.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field private static final RCP_PROXY_SP_NAME:Ljava/lang/String; = "RCPProxyForUser"

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final SYNC_CONFIG_FILENAME:Ljava/lang/String; = "notifSycn.xml"

.field private static TAG:Ljava/lang/String;

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mBridgeCommandExeUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ICommandExeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgeProviderUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/IProviderCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgeSyncUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ISyncCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mCommandQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Command;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mEmergencyModeReceiver:Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

.field mExchangeDataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/RCPManagerService$ExchangeDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPGlobalContactsDirMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/IRCPGlobalContactsDir;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPInterfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/IRCPInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPProxyAliveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPProxyScanSP:Landroid/content/SharedPreferences;

.field modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

.field notifReceiver:Lcom/android/server/RCPManagerService$NotificationReceiver;

.field receiver:Lcom/android/server/RCPManagerService$PackageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "RCPManagerService"

    sput-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/RCPManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/RCPManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    .line 146
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 426
    invoke-direct {p0}, Landroid/os/IRCPManager$Stub;-><init>()V

    .line 138
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    .line 139
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    .line 140
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    .line 141
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    .line 142
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    .line 143
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    .line 144
    iput-object v11, p0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    .line 178
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    .line 2307
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    .line 428
    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 429
    sput-object p1, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    .line 430
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v8, "RCPManagerService() registering receiver for package added and user switch"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 433
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string v7, "package"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 436
    new-instance v7, Lcom/android/server/RCPManagerService$PackageReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/RCPManagerService$PackageReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    .line 437
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    invoke-virtual {p1, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/RCPManagerService$BootReceiver;

    invoke-direct {v8, p0}, Lcom/android/server/RCPManagerService$BootReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 443
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .local v5, "filterNotif":Landroid/content/IntentFilter;
    const-string v7, "com.samsung.knox.ACTION_NEW_NOTIFICATION"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v7, "com.samsung.knox.ACTION_CANCEL_NOTIFICATION"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    new-instance v7, Lcom/android/server/RCPManagerService$NotificationReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/RCPManagerService$NotificationReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->notifReceiver:Lcom/android/server/RCPManagerService$NotificationReceiver;

    .line 447
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->notifReceiver:Lcom/android/server/RCPManagerService$NotificationReceiver;

    invoke-virtual {p1, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .local v2, "filterClipboard":Landroid/content/IntentFilter;
    const-string v7, "com.samsung.knox.clipboard.clipremoved"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v7, "com.samsung.knox.clipboard.clipscleared"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    new-instance v7, Lcom/android/server/RCPManagerService$ClipboardReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/RCPManagerService$ClipboardReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 455
    .local v4, "filterModeSwitcher":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    new-instance v7, Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    invoke-direct {v7, p0, v11}, Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;-><init>(Lcom/android/server/RCPManagerService;Lcom/android/server/RCPManagerService$1;)V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    .line 458
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    invoke-virtual {p1, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 460
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 461
    .local v3, "filterEmergency":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    new-instance v7, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mEmergencyModeReceiver:Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

    .line 463
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mEmergencyModeReceiver:Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 468
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    new-instance v8, Lcom/android/server/RCPManagerService$1;

    invoke-direct {v8, p0}, Lcom/android/server/RCPManagerService$1;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    .line 573
    .local v6, "mPersona":Landroid/os/PersonaManager;
    :try_start_1
    new-instance v7, Lcom/android/server/RCPManagerService$2;

    invoke-direct {v7, p0}, Lcom/android/server/RCPManagerService$2;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 633
    :goto_1
    return-void

    .line 564
    .end local v6    # "mPersona":Landroid/os/PersonaManager;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "mPersona":Landroid/os/PersonaManager;
    :catch_1
    move-exception v0

    .line 629
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v8, " Error registering with Persona service via registerSystemPersonaObserver"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/RCPManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/RCPManagerService;->unregisterProxy(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/RCPManagerService;Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/RCPManagerService;->getLabelForNotif(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/RCPManagerService;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/RCPManagerService;->getAllowedIds(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/RCPManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/RCPManagerService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/RCPManagerService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/RCPManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    return-object v0
.end method

.method private buildSecureNotif(Landroid/os/PersonaManager;Landroid/os/UserHandle;Ljava/util/HashMap;Ljava/util/List;)Landroid/app/KnoxNotification;
    .locals 12
    .param p1, "pm"    # Landroid/os/PersonaManager;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersonaManager;",
            "Landroid/os/UserHandle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/app/KnoxNotification;"
        }
    .end annotation

    .prologue
    .line 1673
    .local p3, "labels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p4, "notifIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1674
    :cond_0
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "buildSecureNotif() labels is null or 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1678
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v11

    .line 1680
    .local v11, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v11, :cond_2

    .line 1681
    iget-object v7, v11, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 1683
    :cond_2
    new-instance v0, Landroid/app/KnoxNotification;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "knox"

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/4 v8, 0x1

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Landroid/app/KnoxNotification;-><init>(ILjava/lang/String;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/util/HashMap;Ljava/util/List;)V

    return-object v0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v1, "RCPManagerService"

    .line 158
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    sget-boolean v2, Lcom/android/server/RCPManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 161
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 164
    throw v0

    .line 166
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private delete(Ljava/io/File;)V
    .locals 7
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 1881
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1884
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1885
    .local v1, "c":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    .line 1884
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1887
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "c":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1888
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_1
    return-void
.end method

.method private fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 16
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 1893
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileCopy "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " to "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const/4 v7, 0x0

    .line 1896
    .local v7, "Result":Z
    const/4 v10, 0x0

    .line 1897
    .local v10, "inputStream":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 1900
    .local v12, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 1901
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    .local v11, "inputStream":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 1915
    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v12    # "outputStream":Ljava/io/FileOutputStream;
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 1923
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v1, 0x0

    .line 1924
    .local v1, "fcin":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 1926
    .local v6, "fcout":Ljava/nio/channels/FileChannel;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 1927
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 1928
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 1929
    .local v4, "lSize":J
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 1931
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 1932
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1934
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 1935
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1936
    const/4 v7, 0x1

    .line 1944
    if-eqz v1, :cond_0

    .line 1945
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1947
    :cond_0
    if-eqz v6, :cond_1

    .line 1948
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 1950
    :cond_1
    if-eqz v10, :cond_2

    .line 1951
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 1953
    :cond_2
    if-eqz v12, :cond_3

    .line 1954
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .end local v4    # "lSize":J
    :cond_3
    :goto_2
    move v8, v7

    .line 1962
    .end local v1    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v6    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v7    # "Result":Z
    .local v8, "Result":I
    :goto_3
    return v8

    .line 1903
    .end local v8    # "Result":I
    .restart local v7    # "Result":Z
    :catch_0
    move-exception v9

    .line 1904
    .local v9, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 1909
    .restart local v8    # "Result":I
    goto :goto_3

    .line 1910
    .end local v8    # "Result":I
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 1911
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1916
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 1917
    .local v9, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1937
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v6    # "fcout":Ljava/nio/channels/FileChannel;
    :catch_3
    move-exception v9

    .line 1938
    .local v9, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ IOException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1941
    const/4 v7, 0x0

    .line 1944
    if-eqz v1, :cond_4

    .line 1945
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1947
    :cond_4
    if-eqz v6, :cond_5

    .line 1948
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 1950
    :cond_5
    if-eqz v10, :cond_6

    .line 1951
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 1953
    :cond_6
    if-eqz v12, :cond_3

    .line 1954
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 1956
    :catch_4
    move-exception v9

    .line 1957
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :goto_4
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1943
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1944
    if-eqz v1, :cond_7

    .line 1945
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1947
    :cond_7
    if-eqz v6, :cond_8

    .line 1948
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 1950
    :cond_8
    if-eqz v10, :cond_9

    .line 1951
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 1953
    :cond_9
    if-eqz v12, :cond_a

    .line 1954
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1943
    :cond_a
    :goto_5
    throw v2

    .line 1956
    :catch_5
    move-exception v9

    .line 1957
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1956
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "lSize":J
    :catch_6
    move-exception v9

    .line 1957
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private getAllUserIds()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v9, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 751
    .local v3, "mUserManager":Landroid/os/UserManager;
    iget-object v9, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 753
    .local v1, "mActMngr":Landroid/app/ActivityManager;
    iget-object v9, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 756
    .local v2, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 758
    .local v8, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v2}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v6

    .line 760
    .local v6, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v6, :cond_0

    .line 761
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 764
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v5, "persona_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 767
    :cond_1
    const/4 v5, 0x0

    .line 779
    .end local v5    # "persona_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v5

    .line 770
    .restart local v5    # "persona_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 771
    .local v4, "persona":Landroid/content/pm/PersonaInfo;
    iget v9, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 774
    .end local v4    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 775
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 776
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getAllowedIds(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1628
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling User is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-string v7, "persona"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1631
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersonaManagerService;

    .line 1633
    .local v6, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v2, 0x0

    .line 1634
    .local v2, "isPersona":Z
    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1635
    const/4 v2, 0x1

    .line 1637
    :cond_0
    const/4 v4, -0x1

    .line 1638
    .local v4, "parent":I
    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 1639
    invoke-virtual {v6, p1}, Lcom/android/server/pm/PersonaManagerService;->getParentId(I)I

    move-result v4

    .line 1644
    :goto_0
    if-ltz v4, :cond_1

    .line 1645
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    :cond_1
    const/4 v5, 0x0

    .line 1647
    .local v5, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v6, :cond_2

    .line 1648
    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/android/server/pm/PersonaManagerService;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v5

    .line 1651
    :cond_2
    if-eqz v5, :cond_4

    .line 1652
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 1653
    new-instance v8, Ljava/lang/Integer;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    iget v7, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1641
    .end local v3    # "k":I
    .end local v5    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    move v4, p1

    goto :goto_0

    .line 1656
    .restart local v5    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_4
    return-object v1
.end method

.method private getExchangeDataMap(IZ)Ljava/util/HashMap;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "bAdd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IRunnableCallback;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 2315
    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    .line 2317
    .local v2, "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    iget v4, v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->userId:I

    if-ne v4, p1, :cond_0

    .line 2318
    iget-object v0, v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    .line 2334
    .end local v2    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :goto_1
    return-object v0

    .line 2314
    .restart local v2    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2322
    .end local v2    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :cond_1
    if-nez p2, :cond_2

    move-object v0, v3

    .line 2323
    goto :goto_1

    .line 2326
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2327
    .local v0, "cbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IRunnableCallback;>;"
    new-instance v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    invoke-direct {v2, p0, v3}, Lcom/android/server/RCPManagerService$ExchangeDataInfo;-><init>(Lcom/android/server/RCPManagerService;Lcom/android/server/RCPManagerService$1;)V

    .line 2329
    .restart local v2    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    iput p1, v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->userId:I

    .line 2330
    iput-object v0, v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    .line 2332
    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getLabelForNotif(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 9
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1602
    const/4 v4, 0x0

    .line 1604
    .local v4, "label":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1605
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1608
    .local v3, "ipm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-interface {v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1611
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 1612
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 1622
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1624
    :cond_1
    return-object v4

    .line 1614
    :catch_0
    move-exception v2

    .line 1615
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception trying to get the applicationInfo for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1618
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getUserAndPersonasIds(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2276
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 2277
    .local v3, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v4

    .line 2279
    .local v4, "parentUser":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2282
    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v6

    .line 2284
    .local v6, "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2285
    :cond_0
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserOrItsPersonasIds(): List<PersonaInfo> is null or empty for callingUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v4    # "parentUser":I
    .end local v6    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 2290
    .restart local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    .restart local v4    # "parentUser":I
    .restart local v6    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 2291
    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget v7, v5, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2295
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v4    # "parentUser":I
    .end local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v6    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v1

    .line 2296
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getUserOrItsPersonasIds(I)[I
    .locals 13
    .param p1, "callingUserId"    # I

    .prologue
    const/4 v9, 0x0

    .line 2056
    :try_start_0
    iget-object v10, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 2058
    .local v5, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-virtual {v5, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v6

    .line 2062
    .local v6, "parentUser":I
    if-eq v6, p1, :cond_0

    .line 2064
    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    aput v6, v4, v10

    .line 2091
    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v6    # "parentUser":I
    :goto_0
    return-object v4

    .line 2069
    .restart local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .restart local v6    # "parentUser":I
    :cond_0
    invoke-virtual {v5, v6}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v8

    .line 2072
    .local v8, "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2073
    :cond_1
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUserOrItsPersonasIds(): List<PersonaInfo> is null or empty for callingUserId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v9

    .line 2076
    goto :goto_0

    .line 2079
    :cond_2
    const/4 v1, 0x0

    .line 2080
    .local v1, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v4, v10, [I

    .line 2082
    .local v4, "ids":[I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    .line 2083
    .local v7, "personaInfo":Landroid/content/pm/PersonaInfo;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v10, v7, Landroid/content/pm/PersonaInfo;->id:I

    aput v10, v4, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 2085
    .end local v7    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_3
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUserOrItsPersonasIds(): size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2087
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ids":[I
    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v6    # "parentUser":I
    .end local v8    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v11, "getUserOrItsPersonasIds(): Rorre..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v9

    .line 2091
    goto :goto_0
.end method

.method private startKnoxModeSwitcher(Ljava/lang/String;I)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2249
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 2251
    .local v4, "uh":Landroid/os/UserHandle;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2252
    .local v3, "serviceIntent":Landroid/content/Intent;
    const-string v5, "com.sec.knox.bridge"

    const-string v6, "com.sec.knox.bridge.handlers.NotificationHandler"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2254
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2255
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2258
    :try_start_0
    const-string v5, "com.sec.knox.bridge.receiver.ACTION_USER_SWITCHED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2260
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2269
    :cond_0
    :goto_0
    return-void

    .line 2262
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/RCPManagerService;->getUserAndPersonasIds(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2263
    .local v0, "familyUserId":I
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2266
    .end local v0    # "familyUserId":I
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 2267
    .local v2, "se":Ljava/lang/SecurityException;
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private switchPersonaAndLaunch(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 708
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchPersonaAndLaunch() with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-gez p1, :cond_0

    .line 717
    :goto_0
    return-void

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 715
    .local v0, "mPersona":Landroid/os/PersonaManager;
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch PERSONA to id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {v0, p1, p2}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method private unregisterProxy(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCPProxyForUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2141
    return-void
.end method


# virtual methods
.method bindToRCPProxy(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 1118
    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " bindToRCPProxy called for  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cls "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1122
    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " returning ... service already running for pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cls = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for user = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    .line 1127
    .local v4, "mPm":Landroid/os/PersonaManager;
    invoke-virtual {v4, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v6

    .line 1128
    .local v6, "pUserId":I
    invoke-virtual {v4, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    .line 1129
    .local v5, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eq p1, v6, :cond_1

    .line 1130
    if-eqz v5, :cond_1

    .line 1131
    iget-boolean v8, v5, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-ne v8, v11, :cond_1

    .line 1132
    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  returning ... dont need to bind to service as persona is deleted, user = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1138
    :cond_1
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1139
    .local v7, "uh":Landroid/os/UserHandle;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1140
    .local v3, "i":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1142
    new-instance v2, Lcom/android/server/RCPManagerService$RCPServiceConnection;

    invoke-direct {v2, p0, p1}, Lcom/android/server/RCPManagerService$RCPServiceConnection;-><init>(Lcom/android/server/RCPManagerService;I)V

    .line 1143
    .local v2, "conn":Lcom/android/server/RCPManagerService$RCPServiceConnection;
    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3, v2, v11, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 1144
    .local v0, "boundToService":Z
    if-nez v0, :cond_2

    .line 1145
    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " bindToRCPProxy issues binding to service with  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : cls "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1148
    :cond_2
    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " bindToRCPProxy service started : cn.getPackageName() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cn.getClassName() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public cancelCopyChunks(J)V
    .locals 4
    .param p1, "sessionId"    # J

    .prologue
    .line 2238
    const-string v1, "cancelCopyChunks"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2239
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCopyChunks() sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2242
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->cancelCopyChunks(J)V

    .line 2243
    return-void
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "mode"    # I

    .prologue
    .line 2173
    const-string v1, "changePermissionMigration"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2174
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePermissionMigration() path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; gid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2178
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v1

    return v1
.end method

.method public checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1417
    const-string v1, "checkSAccount"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1418
    const-string v1, "BridgeManagerService "

    const-string v2, "checkSAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IProviderCallBack;

    .line 1421
    .local v0, "value":Landroid/content/IProviderCallBack;
    if-eqz v0, :cond_0

    .line 1422
    invoke-interface {v0, p1, p2}, Landroid/content/IProviderCallBack;->checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    .line 1423
    const-string v1, "BridgeManagerService "

    const-string v2, "checkSAccount:  value != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_0
    return-void
.end method

.method public checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1431
    const-string v1, "checkSAccountPassword"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1432
    const-string v1, "BridgeManagerService "

    const-string v2, "checkSAccountPassword"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IProviderCallBack;

    .line 1435
    .local v0, "value":Landroid/content/IProviderCallBack;
    if-eqz v0, :cond_0

    .line 1436
    invoke-interface {v0, p1, p2}, Landroid/content/IProviderCallBack;->checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    .line 1437
    const-string v1, "BridgeManagerService "

    const-string v2, "checkSAccountPassword: value != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_0
    return-void
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 13
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z

    .prologue
    .line 2224
    const-string v3, "copyChunks"

    invoke-static {v3}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2225
    sget-object v3, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyChunks() srcContainerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; srcFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; destContainerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; destFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; deleteSrc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    .local v2, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    move-object v3, p2

    move v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    .line 2233
    invoke-virtual/range {v2 .. v12}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I

    move-result v3

    return v3
.end method

.method public copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "permissions"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1820
    const-string v8, "copyClipboardFile"

    invoke-static {v8}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1821
    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copyClipboardFile from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    const/4 v4, 0x1

    .line 1825
    .local v4, "retValue":Z
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1826
    .local v5, "src":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1830
    .local v1, "dest":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1831
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "copyClipboardFile - src  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :goto_0
    return v7

    .line 1836
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1837
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1838
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1840
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1841
    .local v0, "children":[Ljava/lang/String;
    if-nez v0, :cond_2

    move v7, v6

    .line 1842
    goto :goto_0

    .line 1843
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v0

    if-ge v3, v8, :cond_6

    .line 1844
    if-eqz v4, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9, p3}, Lcom/android/server/RCPManagerService;->copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v4, v6

    .line 1843
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v7

    .line 1844
    goto :goto_2

    .line 1850
    .end local v0    # "children":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0, v5, v1}, Lcom/android/server/RCPManagerService;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v6

    .line 1851
    :goto_3
    if-nez v4, :cond_6

    .line 1852
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to copy from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1861
    :catch_0
    move-exception v2

    .line 1862
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception trying to copyClipboardFile  from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    move v4, v7

    .line 1850
    goto :goto_3

    .line 1858
    :cond_6
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, p3, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1868
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copy success? = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v4

    .line 1870
    goto/16 :goto_0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 2146
    const-string v1, "copyFile"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2147
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFile() srcContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; srcFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2152
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p2, p1, p4, p3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method deleteAllPersonaData(I)V
    .locals 8
    .param p1, "personaID"    # I

    .prologue
    .line 2096
    const/4 v1, 0x0

    .line 2097
    .local v1, "callback":Landroid/content/ISyncCallBack;
    invoke-direct {p0, p1}, Lcom/android/server/RCPManagerService;->unregisterProxy(I)V

    .line 2098
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2101
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2103
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2106
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2107
    .local v4, "pairs":Ljava/util/Map$Entry;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2110
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/ISyncCallBack;

    move-object v1, v0

    .line 2111
    if-eqz v1, :cond_0

    .line 2112
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling doSync() for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " via his ISyncCallBack"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-interface {v1, p1}, Landroid/content/ISyncCallBack;->deletePersonaData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2119
    .end local v4    # "pairs":Ljava/util/Map$Entry;
    :catch_0
    move-exception v2

    .line 2121
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception thrown by deleteAllPersonaData(personaID) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2124
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2126
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown by deleteAllPersonaData(personaID) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2132
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public deleteClipboardFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1875
    const-string v0, "deleteClipboardFile"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1876
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteClipboardFile path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    .line 1878
    return-void
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2205
    const-string v1, "deleteFile"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2206
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2209
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2363
    const/4 v0, 0x0

    .line 2365
    .local v0, "bd":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 2366
    :cond_0
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exchangeData() return false for input param is not valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 2400
    :goto_0
    return-object v4

    .line 2372
    :cond_1
    invoke-direct {p0, p2, v4}, Lcom/android/server/RCPManagerService;->getExchangeDataMap(IZ)Ljava/util/HashMap;

    move-result-object v2

    .line 2375
    .local v2, "cbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IRunnableCallback;>;"
    if-nez v2, :cond_2

    .line 2376
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v6, "exchangeData() failure , invalid userId"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 2377
    goto :goto_0

    .line 2380
    :cond_2
    if-eqz p3, :cond_3

    const-string v5, "RequestProxy"

    const-string v6, "action"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2381
    const-string v5, "callerPkgName"

    invoke-virtual {p3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    const-string p1, "com.sec.knox.bridge"

    .line 2385
    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRunnableCallback;

    .line 2387
    .local v1, "cb":Landroid/os/IRunnableCallback;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exchangeData() START "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    if-eqz v1, :cond_5

    .line 2392
    :try_start_0
    invoke-interface {v1, p3}, Landroid/os/IRunnableCallback;->run(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2398
    :cond_5
    :goto_1
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v5, "exchangeData() END"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 2400
    goto :goto_0

    .line 2393
    :catch_0
    move-exception v3

    .line 2394
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public executeCommandForPersona(Landroid/app/Command;)V
    .locals 8
    .param p1, "command"    # Landroid/app/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 670
    const-string v5, "executeCommandForPersona"

    invoke-static {v5}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 672
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " got command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/Command;->personaId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/Command;->packageToLaunch:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/Command;->uri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 674
    .local v3, "mPm":Landroid/os/PersonaManager;
    const/4 v4, 0x0

    .line 676
    .local v4, "parsedIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 678
    .local v1, "ident":J
    iget v5, p1, Landroid/app/Command;->personaId:I

    invoke-virtual {v3, v5}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 679
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    iget v6, p1, Landroid/app/Command;->personaId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_0
    :goto_0
    iget v5, p1, Landroid/app/Command;->personaId:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/RCPManagerService;->switchPersonaAndLaunch(ILandroid/content/Intent;)V

    .line 702
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v6, "executecommand is done."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    return-void

    .line 681
    :cond_1
    iget-object v5, p1, Landroid/app/Command;->uri:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 683
    :try_start_0
    iget-object v5, p1, Landroid/app/Command;->uri:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v6, "failed to parse launch intent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_2
    const-string v5, "launchIntent"

    iget-object v6, p1, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 688
    if-nez v4, :cond_0

    .line 689
    iget-object v4, p1, Landroid/app/Command;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 691
    :cond_3
    const-string v5, "launchNotification"

    iget-object v6, p1, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 692
    iget-object v5, p1, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 693
    if-nez v4, :cond_4

    .line 694
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "parsedIntent":Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 696
    .restart local v4    # "parsedIntent":Landroid/content/Intent;
    :cond_4
    const-string v5, "launchContentIntent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v5, "pendingIntent"

    iget-object v6, p1, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 785
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->notifReceiver:Lcom/android/server/RCPManagerService$NotificationReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 787
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "finalize() Unregistering the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-super {p0}, Landroid/os/IRCPManager$Stub;->finalize()V

    .line 789
    return-void
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 10
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1994
    const-string v7, "getCallerInfo"

    invoke-static {v7}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1995
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo() called for contactRefUriAsString="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1999
    :cond_0
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v8, "getCallerInfo(): mBridgeProviderUserMap is null or empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 2049
    :goto_0
    return-object v5

    .line 2004
    :cond_1
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2006
    .local v2, "iteratorPersonaIds":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 2008
    .local v0, "callingUserId":Ljava/lang/Integer;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2009
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2010
    .local v3, "personaId":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 2012
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 2013
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo(): Skipping for itself: the callingUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2019
    :cond_3
    :try_start_0
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo(): before call to getCallerInfoDetails() for personaId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IProviderCallBack;

    .line 2024
    .local v4, "providerCallBack":Landroid/content/IProviderCallBack;
    if-eqz v4, :cond_2

    .line 2027
    invoke-interface {v4, p1}, Landroid/content/IProviderCallBack;->getCallerInfoDetails(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v5

    .line 2029
    .local v5, "result":Landroid/content/CustomCursor;
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo() calles to getCallerInfoDetails(): result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/CustomCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 2034
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/CustomCursor;->setCursorOwnerId(I)V

    .line 2035
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Found first valid record; getCallerInfo(): result != null && result.getCount() > 0; "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2040
    .end local v4    # "providerCallBack":Landroid/content/IProviderCallBack;
    .end local v5    # "result":Landroid/content/CustomCursor;
    :catch_0
    move-exception v1

    .line 2041
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo(): Remote exception thrown by service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2046
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "personaId":Ljava/lang/Integer;
    :cond_4
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v8, "getCallerInfo(): DONE... no valid record found.. returns null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 2049
    goto/16 :goto_0
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2213
    const-string v1, "getFileInfo"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2214
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileInfo() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2218
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2194
    const-string v1, "getFiles"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2195
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFiles() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2198
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getNotifications(Z)Ljava/util/List;
    .locals 30
    .param p1, "includeCallingUserNotifs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/KnoxNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1482
    const-string v2, "getNotifications"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1483
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getting an instance of StatusBarManager to retreive the statusbarnotifications"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/StatusBarManager;

    .line 1488
    .local v26, "sbms":Landroid/app/StatusBarManager;
    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->getAllNotificationsForBridge(Z)Ljava/util/List;

    move-result-object v19

    .line 1491
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    if-nez v19, :cond_1

    .line 1492
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Nothing returned from StatusBarManager... "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const/16 v21, 0x0

    .line 1598
    :cond_0
    return-object v21

    .line 1498
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .local v21, "notifs":Ljava/util/List;, "Ljava/util/List<Landroid/app/KnoxNotification;>;"
    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    .line 1502
    .local v13, "callingUser":Landroid/os/UserHandle;
    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 1503
    .local v14, "callingUserId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/RCPManagerService;->getAllowedIds(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 1516
    .local v12, "allowedId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 1517
    .local v25, "sanitizedNotifs":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/UserHandle;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 1519
    .local v24, "sanitizedNotifIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/UserHandle;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/16 v17, 0x1

    .line 1520
    .local v17, "isKnox":Z
    const/16 v18, 0x0

    .line 1524
    .local v18, "isPasswordLockEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PersonaManager;

    .line 1527
    .local v20, "mPersona":Landroid/os/PersonaManager;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/service/notification/StatusBarNotification;

    .line 1529
    .local v27, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v29

    .line 1531
    .local v29, "userIdInt":I
    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, v29

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1536
    const-string v2, "Notifications"

    const-string v3, "knox-export-data"

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/RCPManagerService;->getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1539
    .local v15, "exportPolicy":Ljava/lang/String;
    if-eqz v15, :cond_3

    const-string v2, "false"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1543
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1568
    .local v28, "userId":Ljava/lang/String;
    const-string v2, "Notifications"

    const-string v3, "knox-sanitize-data"

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/RCPManagerService;->getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1571
    .local v23, "sanitizePolicy":Ljava/lang/String;
    if-nez v23, :cond_4

    .line 1572
    const-string v23, "false"

    .line 1574
    :cond_4
    if-eqz v23, :cond_2

    .line 1575
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getNotifications sanitizePolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getNotifications userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    move-object/from16 v9, v28

    .line 1579
    .local v9, "name":Ljava/lang/String;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getNotifications name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v22

    .line 1582
    .local v22, "pi":Landroid/content/pm/PersonaInfo;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getNotifications pi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    if-eqz v22, :cond_5

    .line 1584
    move-object/from16 v0, v22

    iget-object v9, v0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 1585
    :cond_5
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getNotifications name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding new KnoxNotif with id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notif = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    new-instance v2, Landroid/app/KnoxNotification;

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const-string/jumbo v10, "true"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/app/KnoxNotification;-><init>(ILjava/lang/String;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/util/HashMap;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x0

    .line 1198
    const-string v6, "getPolicy"

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1199
    const-wide/16 v4, 0x0

    .line 1200
    .local v4, "token":J
    const/4 v2, 0x0

    .line 1202
    .local v2, "policy":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1203
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicy: Policy checking block entered for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; for user/persona = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; Policy = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; token = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v6, "persona_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaPolicyManagerService;

    .line 1208
    .local v1, "personaPolicyMgrSer":Lcom/android/server/pm/PersonaPolicyManagerService;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1210
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicy: policy value returned = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    cmp-long v6, v4, v9

    if-eqz v6, :cond_0

    .line 1218
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "personaPolicyMgrSer":Lcom/android/server/pm/PersonaPolicyManagerService;
    :cond_0
    :goto_0
    move-object v3, v2

    .line 1220
    .end local v2    # "policy":Ljava/lang/String;
    .local v3, "policy":Ljava/lang/String;
    return-object v3

    .line 1211
    .end local v3    # "policy":Ljava/lang/String;
    .restart local v2    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicy: personaPolicyMgrSer.getRCPDataPolicyForUser threw an exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1217
    cmp-long v6, v4, v9

    if-eqz v6, :cond_0

    .line 1218
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1217
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    cmp-long v6, v4, v9

    if-eqz v6, :cond_0

    .line 1218
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    .prologue
    .line 1981
    const-string v2, "getRCPInterface"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1982
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCPInterface My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1985
    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCPInterface  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getRCPInterface getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1990
    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IRCPInterface;

    return-object v2
.end method

.method public getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    .locals 5

    .prologue
    .line 1967
    const-string v2, "getRCPProxy"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1969
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCPProxy My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1972
    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCPProxy  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getRCPProxy getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1977
    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IRCPGlobalContactsDir;

    return-object v2
.end method

.method public getUsersToSyncFrom(Ljava/lang/String;)[I
    .locals 14
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x1

    .line 1690
    const-string v10, "getUsersToSyncFrom"

    invoke-static {v10}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1691
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1692
    .local v1, "callingUserId":I
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUsersToSyncFrom() for providerName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; UserHandle.getCallingUserId() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const-string v10, "persona"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1695
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersonaManagerService;

    .line 1697
    .local v6, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v5, 0x0

    .line 1698
    .local v5, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v6, :cond_0

    .line 1699
    invoke-virtual {v6, v13}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    .line 1701
    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v10, v13, :cond_3

    .line 1702
    :cond_1
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v11, "getUsersToSyncFrom() - personaList was null, or empty"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_2
    :goto_0
    return-object v8

    .line 1705
    :cond_3
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUsersToSyncFrom: perosnalist.length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; personalist = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    if-eqz v6, :cond_4

    invoke-virtual {v6, v1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1710
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v11, "getUsersToSyncFrom() - Current user is USER/OWNER, hence disabling syncing for it"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1714
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6, v1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1715
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1717
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    .local v9, "usersToSyncFromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    if-ge v3, v10, :cond_a

    .line 1719
    const/4 v7, -0x1

    .line 1720
    .local v7, "userPersonaId":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ne v3, v10, :cond_7

    .line 1721
    const/4 v7, 0x0

    .line 1724
    :goto_2
    if-ne v1, v7, :cond_8

    .line 1718
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1723
    :cond_7
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PersonaInfo;

    iget v7, v10, Landroid/content/pm/PersonaInfo;->id:I

    goto :goto_2

    .line 1727
    :cond_8
    const-string v10, "Clipboard"

    const-string v11, "knox-export-data"

    invoke-virtual {p0, v7, v10, v11}, Lcom/android/server/RCPManagerService;->getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1730
    .local v2, "exportPolicy":Ljava/lang/String;
    if-eqz v2, :cond_9

    const-string v10, "false"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1733
    :cond_9
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1737
    .end local v2    # "exportPolicy":Ljava/lang/String;
    .end local v7    # "userPersonaId":I
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [I

    .line 1738
    .local v8, "usersToSyncFromIntArr":[I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1739
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    :goto_4
    array-length v10, v8

    if-ge v3, v10, :cond_2

    .line 1740
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v3

    .line 1739
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "shortcutIcon"    # Landroid/graphics/Bitmap;
    .param p5, "shortcutIntentUri"    # Ljava/lang/String;
    .param p6, "createOrRemove"    # Ljava/lang/String;

    .prologue
    .line 723
    const-string v1, "handleShortcut"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 724
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " in createShortcut() for packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IProviderCallBack;

    .line 730
    .local v0, "providerCallBack":Landroid/content/IProviderCallBack;
    if-nez v0, :cond_0

    .line 731
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "queryAllProviders():  providerCallBack is not register for 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    return-void

    .line 737
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "createShortcut(): Found a provider to query. Calling it now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 739
    invoke-interface/range {v0 .. v6}, Landroid/content/IProviderCallBack;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v7

    .line 742
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createShortcut(): Remote exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2184
    const-string v1, "isFileExist"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2185
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFileExist() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2189
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method isNotificationAllowed(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "PKG_FILTER"    # [Ljava/lang/String;

    .prologue
    .line 1471
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1472
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1473
    const/4 v4, 0x0

    .line 1476
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_1
    return v4

    .line 1471
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1476
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 2159
    const-string v1, "moveFile"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2160
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveFile() srcContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; srcFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2165
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p2, p1, p4, p3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public notificationCleared(Landroid/app/KnoxNotification;)V
    .locals 8
    .param p1, "n"    # Landroid/app/KnoxNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1443
    const-string v4, "notificationCleared"

    invoke-static {v4}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1444
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v5, "notificationCleared - trying to get INotificationManager system service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1448
    .local v1, "identity":J
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 1450
    .local v3, "nms":Landroid/app/INotificationManager;
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calling cancelNotificationWithTag with pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/KnoxNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/KnoxNotification;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/KnoxNotification;->notifId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/KnoxNotification;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " notification = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/KnoxNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v4, p1, Landroid/app/KnoxNotification;->pkg:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/KnoxNotification;->tag:Ljava/lang/String;

    iget v6, p1, Landroid/app/KnoxNotification;->notifId:I

    iget v7, p1, Landroid/app/KnoxNotification;->userId:I

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1454
    iget-object v4, p1, Landroid/app/KnoxNotification;->notification:Landroid/app/Notification;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/app/KnoxNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 1456
    :try_start_0
    iget-object v4, p1, Landroid/app/KnoxNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V

    .line 1457
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v5, " calling send() on deleteIntent "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1467
    return-void

    .line 1458
    :catch_0
    move-exception v0

    .line 1461
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Exeption while calling send() on deleteIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/KnoxNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1464
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v5, " n.notification is null OR n.notification.deleteIntent is null , can not call send() on deleteIntent "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    const-string v2, "queryProvider"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 238
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 240
    .local v9, "callingUserId":I
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " calling queryAllProviders providerName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resourceName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/RCPManagerService;->getUserOrItsPersonasIds(I)[I

    move-result-object v14

    .line 244
    .local v14, "ids":[I
    if-nez v14, :cond_0

    .line 245
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "queryAllProviders ids[] form getUserOrItsPersonasIds() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v10, 0x0

    .line 303
    :goto_0
    return-object v10

    .line 250
    :cond_0
    array-length v15, v14

    .line 251
    .local v15, "idsLength":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v10, "customCursorsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/CustomCursor;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v15, :cond_3

    .line 257
    aget v13, v14, v12

    .line 258
    .local v13, "id":I
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders(): process id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IProviderCallBack;

    .line 262
    .local v1, "providerCallBack":Landroid/content/IProviderCallBack;
    if-nez v1, :cond_1

    .line 263
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders():  providerCallBack is not register for ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 270
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "queryAllProviders(): Found a provider to query. Calling it now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 273
    invoke-interface/range {v1 .. v8}, Landroid/content/IProviderCallBack;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v16

    .line 277
    .local v16, "resultCursor":Landroid/content/CustomCursor;
    if-nez v16, :cond_2

    .line 278
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders() resultCursor is null for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_3
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders(): resultCursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 292
    .end local v16    # "resultCursor":Landroid/content/CustomCursor;
    :catch_0
    move-exception v11

    .line 293
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders(): Remote exception thrown by service for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 283
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v16    # "resultCursor":Landroid/content/CustomCursor;
    :cond_2
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/CustomCursor;->setCursorOwnerId(I)V

    .line 284
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/CustomCursor;->setAutoClose(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 301
    .end local v1    # "providerCallBack":Landroid/content/IProviderCallBack;
    .end local v13    # "id":I
    .end local v16    # "resultCursor":Landroid/content/CustomCursor;
    :cond_3
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "queryAllProviders(): DONE..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 18
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v2, "queryProvider"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v16

    .line 191
    .local v16, "user":Landroid/os/UserHandle;
    new-instance v17, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 192
    .local v17, "userId":Ljava/lang/Integer;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryProvider My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 196
    .local v9, "b":Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PersonaManagerService;

    .line 198
    .local v14, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v12, 0x0

    .line 199
    .local v12, "isPersona":Z
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 200
    .local v10, "currentUser":I
    const/4 v13, 0x0

    .line 201
    .local v13, "parentUser":I
    if-eqz v14, :cond_0

    .line 202
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v12

    .line 203
    invoke-virtual {v14, v10}, Lcom/android/server/pm/PersonaManagerService;->getParentUserForPersona(I)I

    move-result v13

    .line 206
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IProviderCallBack;

    .line 208
    .local v1, "value":Landroid/content/IProviderCallBack;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryProvider():  mBridgeProviderUserMap.get(): value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; containerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-nez v1, :cond_1

    .line 211
    const/4 v15, 0x0

    .line 229
    :goto_0
    return-object v15

    .line 213
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Found a provider to query. Calling it now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 214
    invoke-interface/range {v1 .. v8}, Landroid/content/IProviderCallBack;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v15

    .line 217
    .local v15, "resultCursor":Landroid/content/CustomCursor;
    if-nez v15, :cond_2

    .line 218
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, " resultCursor is null  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultCursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v15    # "resultCursor":Landroid/content/CustomCursor;
    :catch_0
    move-exception v11

    .line 223
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception thrown by service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryProvider Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public refreshClipboard()V
    .locals 3

    .prologue
    .line 1408
    const-string v1, "refreshClipboard"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1409
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "refreshClipboard sending intent to refresh clipboard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.clipboard.sync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1411
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1412
    return-void
.end method

.method public registerCommandExe(Landroid/content/ICommandExeCallBack;)V
    .locals 8
    .param p1, "callback"    # Landroid/content/ICommandExeCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    const-string v5, "registerCommandExe"

    invoke-static {v5}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 369
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerCommandExe My Context is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 372
    .local v3, "user":Landroid/os/UserHandle;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerCommandExe  User calling is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v6, "registerCommandExe getting User Id"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v4, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 377
    .local v4, "userId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerCommandExe Calling userid is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ICommandExeCallBack;

    .line 385
    .local v1, "commandExeCallback":Landroid/content/ICommandExeCallBack;
    if-eqz v1, :cond_0

    .line 386
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling exceuteCommand() for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " via his ICommandExeCallBack"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_0
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 390
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Command;

    .line 391
    .local v0, "command":Landroid/app/Command;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checking packages in command queue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-eqz v0, :cond_0

    .line 393
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg in commandqueue is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-interface {v1, v0}, Landroid/content/ICommandExeCallBack;->execute(Landroid/app/Command;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v0    # "command":Landroid/app/Command;
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception thrown by service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;

    .prologue
    const/4 v2, 0x1

    .line 2339
    const-string v3, "registerExchangeData"

    invoke-static {v3}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2340
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2342
    .local v1, "userId":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2343
    :cond_0
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerExchangeData() return false for input null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    const/4 v2, 0x0

    .line 2355
    :goto_0
    return v2

    .line 2347
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/RCPManagerService;->getExchangeDataMap(IZ)Ljava/util/HashMap;

    move-result-object v0

    .line 2350
    .local v0, "cbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IRunnableCallback;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    sget-object v3, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerExchangeData User calling is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;

    .prologue
    .line 2404
    const-string v0, "com.sec.knox.bridge"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2406
    sput-object p2, Lcom/android/server/am/ActivityManagerService;->mCallbackHomeStart:Landroid/os/IRunnableCallback;

    .line 2408
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "registerMonitorCb cb registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2410
    :cond_0
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "registerMonitorCb failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V
    .locals 5
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "mProvider"    # Landroid/content/IProviderCallBack;

    .prologue
    .line 309
    const-string v2, "registerProvider"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 311
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerProvider My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 314
    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerProvider  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerProvider getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 319
    .local v1, "userId":Ljava/lang/Integer;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting the All_Provider bridge callback for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerProvider Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method public registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V
    .locals 5
    .param p1, "globalContactsDir"    # Landroid/content/IRCPGlobalContactsDir;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    const-string v2, "registerRCPGlobalContactsDir"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 351
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPGlobalContactsDir My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 353
    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSync  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerSync getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 358
    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPGlobalContactsDir Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;)V
    .locals 5
    .param p1, "rcpInterface"    # Landroid/content/IRCPInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    const-string v2, "registerRCPInterface"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 409
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPInterface My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 412
    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPInterface  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerRCPInterface getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 417
    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPInterface Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method public registerSync(Landroid/content/ISyncCallBack;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/ISyncCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 331
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSync My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v2, "registerSync"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 334
    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSync  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerSync getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 339
    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSync Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method public saveSharedSandbox(I)V
    .locals 7
    .param p1, "toUser"    # I

    .prologue
    .line 1779
    const-string v4, "saveSharedSandbox"

    invoke-static {v4}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1780
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveSharedSandbox() to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboardSandbox"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1785
    .local v2, "sandboxTo":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_1

    const-string v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shared"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v3, "sharedClipsDestination":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    .line 1795
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1796
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1799
    :cond_0
    const/4 v1, 0x0

    .line 1801
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/RCPManagerService;->copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1810
    :goto_1
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result of copying sandbox to our shared? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-direct {p0, v2}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    .line 1813
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/clipboardSandbox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "from"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    .line 1815
    return-void

    .line 1785
    .end local v1    # "result":Z
    .end local v3    # "sharedClipsDestination":Ljava/io/File;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1803
    .restart local v1    # "result":Z
    .restart local v3    # "sharedClipsDestination":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v5, "saveSharedSandbox() exception trying to export sandbox to user"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1807
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method scanAndStartRCPProxy(I)V
    .locals 22
    .param p1, "userId"    # I

    .prologue
    .line 1021
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy called for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "persona"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PersonaManager;

    .line 1024
    .local v11, "mPersonaManager":Landroid/os/PersonaManager;
    if-ltz p1, :cond_0

    if-nez v11, :cond_2

    .line 1025
    :cond_0
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanAndStartRCPProxy: return without starting .. userId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; mPersonaManager = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_1
    :goto_0
    return-void

    .line 1035
    :cond_2
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v12

    .line 1037
    .local v12, "parentId":I
    move/from16 v0, p1

    if-eq v12, v0, :cond_4

    .line 1038
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanAndStartRCPProxy: Executing starting RCP Proxy logic for user = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; because its a persona!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RCPProxyForUser"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v15

    .line 1053
    .local v15, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    .line 1054
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy prefs.size() "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1056
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    sget-object v20, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "prefs key(pkg) : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " value(cls) : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 1060
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/RCPManagerService;->bindToRCPProxy(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1040
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_4
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v13

    .line 1042
    .local v13, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_6

    .line 1043
    :cond_5
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanAndStartRCPProxy: NOT starting RCP Proxy for user = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; because it doesn\'t have personas or it is a guest!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1046
    :cond_6
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanAndStartRCPProxy: Executing starting RCP Proxy logic for user = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; because it contains personas!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1066
    .end local v13    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v15    # "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_7
    const/16 v9, 0x80

    .line 1067
    .local v9, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    .line 1069
    .local v5, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy appInfoList.size() "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1074
    .local v14, "prefEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 1076
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 1077
    .local v6, "bundle":Landroid/os/Bundle;
    const/16 v16, 0x0

    .line 1078
    .local v16, "proxyName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1079
    .local v18, "proxyService":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1082
    .local v17, "proxyPkg":Ljava/lang/String;
    :try_start_0
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1083
    if-eqz v6, :cond_9

    .line 1084
    const-string v19, "proxyName"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1085
    const-string v19, "proxyService"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1087
    :cond_9
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :goto_3
    if-eqz v6, :cond_8

    .line 1097
    if-eqz v16, :cond_8

    if-eqz v18, :cond_8

    if-eqz v17, :cond_8

    const-string v19, "RCPProxy"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1101
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy proxyName "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " proxyService "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " proxyPkg "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1105
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/RCPManagerService;->bindToRCPProxy(ILjava/lang/String;Ljava/lang/String;)V

    .line 1110
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v16    # "proxyName":Ljava/lang/String;
    .end local v17    # "proxyPkg":Ljava/lang/String;
    .end local v18    # "proxyService":Ljava/lang/String;
    :cond_a
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1088
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    .restart local v16    # "proxyName":Ljava/lang/String;
    .restart local v17    # "proxyPkg":Ljava/lang/String;
    .restart local v18    # "proxyService":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1089
    .local v7, "e":Ljava/lang/NullPointerException;
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy() Failed to load meta-data, NullPointer: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setupClipbardSandbox()V
    .locals 7

    .prologue
    const/16 v6, 0x1ff

    const/4 v5, -0x1

    .line 1751
    const-string/jumbo v3, "setupClipbardSandbox"

    invoke-static {v3}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1752
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/clipboardSandbox"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1753
    .local v0, "sandboxDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1754
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1755
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1759
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboardSandbox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1761
    .local v1, "sandboxFrom":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboardSandbox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v2, "sandboxTo":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1765
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1766
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1770
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1771
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1772
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1775
    :cond_2
    return-void
.end method

.method public startRCPProxy(I)V
    .locals 5
    .param p1, "newUserId"    # I

    .prologue
    .line 637
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ISyncCallBack;

    .line 640
    .local v0, "callback":Landroid/content/ISyncCallBack;
    if-nez v0, :cond_1

    .line 642
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 646
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, " IUserSwitchObserver : calling scanAndStartRCPProxy as ISyncCallBack is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IUserSwitchObserver : Exception while scanAndStartRCPProxy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 655
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling doSync() for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " via his ISyncCallBack."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :try_start_1
    invoke-interface {v0}, Landroid/content/ISyncCallBack;->doSync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 660
    :catch_1
    move-exception v1

    .line 661
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception thrown by service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchPersona(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1186
    const-string/jumbo v1, "switchPersona"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1187
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchToUser() with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    if-gez p1, :cond_0

    .line 1195
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1193
    .local v0, "mPersona":Landroid/os/PersonaManager;
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch PERSONA to id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->switchPersona(I)Z

    goto :goto_0
.end method
