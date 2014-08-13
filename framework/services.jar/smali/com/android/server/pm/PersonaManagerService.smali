.class public Lcom/android/server/pm/PersonaManagerService;
.super Landroid/os/IPersonaManager$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaManagerService$SettingsObserver;,
        Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;,
        Lcom/android/server/pm/PersonaManagerService$PersonaHandler;,
        Lcom/android/server/pm/PersonaManagerService$BootReceiver;,
        Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;,
        Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;,
        Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final ALLOWED_INSTALLER_LIST_SP:Ljava/lang/String; = "AllowedInstallerListForUser"

.field private static final APPROVED_INSTALLERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_CREATOR_UID:Ljava/lang/String; = "creatorUid"

.field private static final ATTR_ENCRYPTED_ID:Ljava/lang/String; = "encryptedId"

.field private static final ATTR_FIRMWARE_VERSION:Ljava/lang/String; = "fwversion"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_FS_MOUNTED:Ljava/lang/String; = "fsMounted"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INSTALLED_PKG_LIST:Ljava/lang/String; = "installedPkgList"

.field private static final ATTR_KIOSK_MODE:Ljava/lang/String; = "kioskModeEnabled"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_LAST_LOGGED_OUT_TIME:Ljava/lang/String; = "lastLoggedOut"

.field private static final ATTR_LIGHTWEIGHT_PERSONA:Ljava/lang/String; = "isLightWeightContainer"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_OLD_STATE:Ljava/lang/String; = "oldState"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PEROSNA_HANDLER:Ljava/lang/String; = "personahandlername"

.field private static final ATTR_PEROSNA_HANDLER_PACKAGE:Ljava/lang/String; = "personahandlerpackage"

.field private static final ATTR_PEROSNA_SETUPWIZARDAPK:Ljava/lang/String; = "setupapklocation"

.field private static final ATTR_PEROSNA_TYPE:Ljava/lang/String; = "personatype"

.field private static final ATTR_PERSONA_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "adminpackagename"

.field private static final ATTR_PERSONA_ADMIN_UID:Ljava/lang/String; = "adminuid"

.field private static final ATTR_PERSONA_HANDLERAPKLOCATION:Ljava/lang/String; = "handlerapklocation"

.field private static final ATTR_REMOVE_PERSONA:Ljava/lang/String; = "removePersona"

.field private static final ATTR_RESET_CONTAINER_ON_REBOOT:Ljava/lang/String; = "resetPersonaOnReboot"

.field private static final ATTR_RESET_PASSWORD:Ljava/lang/String; = "resetPassword"

.field private static final ATTR_SAMSUNGACOOUNT:Ljava/lang/String; = "samsungAccount"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_STATE:Ljava/lang/String; = "personastate"

.field private static final ATTR_SUPERLOCKED:Ljava/lang/String; = "superlocked"

.field private static final ATTR_TIMA_ECRYTPFS_INDEX:Ljava/lang/String; = "timaEcrytfsIndex"

.field private static final ATTR_TIMA_PASSWORD_INDEX:Ljava/lang/String; = "timaPasswordIndex"

.field private static final ATTR_USER_MANAGED_PERSONA:Ljava/lang/String; = "isUserManaged"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = true

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final FAILURE:I = 0x0

.field private static final FOTA_DEBUG:Z = false

.field private static FOTA_DEBUG_TIME:J = 0x0L

.field private static final INSTALLATION_WAIT_TIME:J = 0x2bf20L

.field private static final INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaManagerService"

.field private static final MAX_LENGTH:I = 0x400

.field private static final MAX_PERSONA_ALLOWED:I = 0x2

.field private static final MIN_PERSONA_ID:I = 0x64

.field private static final MSG_ACTION_SCREEN_OFF:I = 0xb

.field private static final MSG_ACTION_SCREEN_ON:I = 0x13

.field private static final MSG_BOOT_COMPLETE_RECEIVED:I = 0xd

.field private static final MSG_BOOT_LOAD_PERSONA_SYSTEMREADY:I = 0xf

.field private static final MSG_BOOT_PRUNE_PARTIAL_PERSONA:I = 0xe

.field private static final MSG_BROADCAST_SYSTEM_OBSERVER:I = 0x11

.field private static final MSG_CANCEL_TIMER_IN_USER_ACTIVITY:I = 0x8

.field private static final MSG_DEVICE_ADMIN_STATE_CHANGE:I = 0x10

.field private static final MSG_LOCK_TIME_EXPIRED:I = 0x6

.field private static final MSG_PERSONA_SESSION_EXPIRED:I = 0x1388

.field private static final MSG_PERSONA_STOPPED:I = 0x12

.field private static final MSG_SCHEDULE_TIMER_IN_HANDLER:I = 0x7

.field private static final MSG_SETTINGS_OBSERVER_TRIGGERED:I = 0x9

.field private static final MSG_START_REMOVE_PERSONA_AFTER_SWITCH:I = 0x1

.field private static final MSG_START_RESET_PERSONA_AFTER_SWITCH:I = 0x4

.field private static final MSG_STOP_TIMER:I = 0xc

.field private static final MSG_SUPER_LOCK_PERSONA:I = 0x5

.field private static final MSG_UNINSTALL_THIRDPARTY_APPS_DONE_FOR_REMOVE:I = 0x3

.field private static final MSG_UNINSTALL_THIRDPARTY_APPS_DONE_FOR_RESET:I = 0x2

.field private static final MSG_WAKE_LOCK_CHANGE:I = 0xa

.field private static final PACKAGE_TYPE_GENERAL:I = 0x69

.field private static final PACKAGE_TYPE_HANDLER:I = 0x67

.field private static final PACKAGE_TYPE_SETUPWIZARD:I = 0x68

.field private static final PARAMETER_TYPE_APK:I = 0x65

.field private static final PARAMETER_TYPE_PACKAGE_NAME:I = 0x66

.field private static final PASSWORD_FILE_PATH:Ljava/lang/String; = "/data/system/users/knoxpassword_"

.field private static final PERSONAID:Ljava/lang/String; = "personaid"

.field private static final PERSONA_LIST_FILENAME:Ljava/lang/String; = "personalist.xml"

.field private static PERSONA_PWD:Ljava/lang/String; = null

.field private static final PERSONA_TYPE_KNOX:Ljava/lang/String; = "knox"

.field private static final PERSONA_VERSION:I = 0x2

.field private static final REQUEST_PASSWORD_TIMEOUT:I = 0x263e

.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final SUCCESS:I = 0x1

.field private static final TAG_APP_TYPE:Ljava/lang/String; = "appType"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_USERS_WITH_PERSONA:Ljava/lang/String; = "userswithpersona"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String; = null

.field private static final TIMA_MAX_LENGTH:I = 0x10

.field private static final TIMA_STORE_INDEX:I = 0x0

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_WITH_PERSONA_LIST_FILENAME:Ljava/lang/String; = "userwithpersonalist.xml"

.field private static mPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/pm/PersonaManagerService;

.field private static timaVersion20:Z


# instance fields
.field private PhoneCaller:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private installResult:I

.field private lastTimeToBackground:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdminList:Landroid/util/SparseIntArray;

.field private mAdminLockSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackPressed:Landroid/util/SparseBooleanArray;

.field private final mBaseUserPath:Ljava/io/File;

.field private mBootCompleted:Z

.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/IPersonaCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

.field private final mFileLock:Ljava/lang/Object;

.field private mFirmwareVersion:Ljava/lang/String;

.field private mGuestEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

.field private final mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/ISystemPersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mKeyguardShown:Landroid/util/SparseBooleanArray;

.field private final mLastShortcutModes:Landroid/util/SparseBooleanArray;

.field private mNextSerialNumber:I

.field private final mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPartialsForPrune:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

.field private mPersonaIds:[I

.field private final mPersonaLock:Ljava/lang/Object;

.field private mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

.field private mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

.field private final mPersonas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

.field private mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

.field private final mShortcutModes:Landroid/util/SparseBooleanArray;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTimerMap:Ljava/util/HashMap;
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

.field private final mUserLastPersonaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserPersonaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersWithPersonaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLockRefCount:I

.field private packageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.osp.app.signin"

    aput-object v2, v1, v4

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "com.sec.knox.containeragent2"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    .line 257
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/pm/PersonaManagerService;->FOTA_DEBUG_TIME:J

    .line 271
    sput-boolean v4, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    .line 303
    const-string v0, "TimaKeyStore"

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    .line 304
    const-string v0, "PersonaPasswordKey"

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    .line 338
    sput-boolean v5, Lcom/android/server/pm/PersonaManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .prologue
    .line 381
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 383
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 389
    invoke-direct {p0}, Landroid/os/IPersonaManager$Stub;-><init>()V

    .line 236
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    .line 237
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    .line 246
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 251
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    .line 252
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    .line 253
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    .line 254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;

    .line 263
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    .line 264
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    .line 265
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    .line 266
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mLastShortcutModes:Landroid/util/SparseBooleanArray;

    .line 267
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mBackPressed:Landroid/util/SparseBooleanArray;

    .line 268
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShown:Landroid/util/SparseBooleanArray;

    .line 273
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    .line 276
    iput v6, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    .line 277
    iput v6, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    .line 278
    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    .line 288
    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    .line 289
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    .line 290
    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 291
    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

    .line 292
    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    .line 293
    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    .line 294
    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;

    .line 295
    iput-boolean v6, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    .line 296
    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 339
    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 2814
    new-instance v4, Lcom/android/server/pm/PersonaManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2859
    iput v6, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    .line 5153
    new-instance v4, Lcom/android/server/pm/PersonaManagerService$7;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5684
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminLockSettings:Ljava/util/HashMap;

    .line 5685
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    .line 390
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 391
    sput-object p1, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    .line 392
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 393
    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    .line 394
    iput-object p4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 395
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    .line 396
    new-instance v4, Lcom/sec/knox/container/util/KnoxFileHandler;

    invoke-direct {v4, p1}, Lcom/sec/knox/container/util/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    .line 397
    new-instance v4, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    .line 398
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    .line 399
    new-instance v4, Lcom/android/server/pm/PersonaIdentificationGenerator;

    const-string v5, "AES"

    invoke-direct {v4, v5}, Lcom/android/server/pm/PersonaIdentificationGenerator;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

    .line 401
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.keychain"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "JP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 403
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.sec.android.inputmethod.iwnnime.japan"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :goto_0
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TGY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BRI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 413
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.samsung.inputmethod"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.certinstaller"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.defcontainer"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.keyguard"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.settings"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.providers.settings"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.sec.providers.settingsearch"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.providers.applications"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.systemui"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.sec.android.app.wallpaperchooser"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.inputmethod.latin"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.android.inputdevices"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5

    .line 431
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 432
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    .line 433
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v4, p5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    .line 439
    iput-object p6, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    .line 445
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v8, "userwithpersonalist.xml"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 446
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 448
    :try_start_2
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 449
    const-string v4, "PersonaManagerService"

    const-string v7, "PMS list file created "

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    :cond_2
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/HandlerCacheManager;->getInstance()Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    .line 463
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUserList()V

    .line 465
    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 467
    const-string v4, "PersonaManagerService"

    const-string v7, "<init> adding PersonaStateManagerService"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v4, Lcom/android/server/pm/PersonaStateManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/server/pm/PersonaStateManagerService;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    .line 469
    const-string v4, "persona_state_manager"

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 470
    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string v7, "persona_state_manager"

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v4, "PersonaManagerService"

    const-string v7, "<init> adding PersonaFileManagerService"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v1, Lcom/android/server/pm/PersonaFileManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/server/pm/PersonaFileManagerService;-><init>(Landroid/content/Context;)V

    .line 474
    .local v1, "fileService":Lcom/android/server/pm/PersonaFileManagerService;
    const-string v4, "persona_file_system"

    invoke-static {v4, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 475
    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string v7, "persona_file_system"

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v4, "PersonaManagerService"

    const-string v7, "<init> adding PersonaPolicyManagerService"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v2, Lcom/android/server/pm/PersonaPolicyManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/pm/PersonaPolicyManagerService;-><init>(Landroid/content/Context;)V

    .line 479
    .local v2, "policyService":Lcom/android/server/pm/PersonaPolicyManagerService;
    const-string v4, "persona_policy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 480
    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string v7, "persona_policy"

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v4, Landroid/os/HandlerThread;

    const-string v7, "PersonaManagerService"

    const/16 v8, 0xa

    invoke-direct {v4, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 483
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 484
    new-instance v4, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 486
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_3

    .line 488
    :try_start_4
    const-string v4, "2.0"

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 493
    :cond_3
    :goto_2
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 494
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 495
    return-void

    .line 404
    .end local v1    # "fileService":Lcom/android/server/pm/PersonaFileManagerService;
    .end local v2    # "policyService":Lcom/android/server/pm/PersonaPolicyManagerService;
    :cond_4
    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHINA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "China"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 406
    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.samsung.inputmethod"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 408
    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v5, "com.sec.android.inputmethod"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 451
    :cond_7
    :try_start_7
    const-string v4, "PersonaManagerService"

    const-string v7, "Error Creating PMS list file!!!! "

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 453
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 493
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v4

    .line 494
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v4

    .line 489
    .restart local v1    # "fileService":Lcom/android/server/pm/PersonaFileManagerService;
    .restart local v2    # "policyService":Lcom/android/server/pm/PersonaPolicyManagerService;
    :catch_1
    move-exception v3

    .line 490
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_a
    const-string v4, "PersonaManagerService"

    const-string v7, "Unable to get TIMA version: "

    invoke-static {v4, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 371
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 372
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PersonaManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PersonaManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PersonaManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/PersonaManagerService;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->updateContainerOnlyApks(Landroid/content/pm/PersonaInfo;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/HandlerCacheManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/PersonaManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeUserStateExternal(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->triggerAppUninstallationonReset(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentSetting(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/pm/PersonaManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    return p1
.end method

.method private activateAdmin(Landroid/content/pm/PersonaInfo;JLjava/lang/String;)I
    .locals 20
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;
    .param p2, "flags"    # J
    .param p4, "admin"    # Ljava/lang/String;

    .prologue
    .line 2286
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2287
    .local v4, "adminPackageName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 2288
    const-string v16, "PersonaManagerService"

    const-string v17, "Admin package Name is NULL \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const/16 v16, -0x3f1

    .line 2347
    :goto_0
    return v16

    .line 2292
    :cond_0
    new-instance v12, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2294
    .local v12, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v18, 0x8080

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 2297
    .local v7, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_1

    .line 2299
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No Admin available for Persona "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2301
    const/16 v16, -0x3f1

    goto :goto_0

    .line 2304
    :cond_1
    const/4 v8, 0x0

    .line 2306
    .local v8, "cn":Landroid/content/ComponentName;
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activateAdmin count for Resolve info "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "count":I
    :goto_1
    if-ge v13, v9, :cond_5

    .line 2311
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 2312
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2313
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v14, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2314
    .local v14, "packageName":Ljava/lang/String;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2316
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_2

    .line 2317
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activateAdmin appInfo for package  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " AppInfo :-- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    :cond_2
    if-nez v14, :cond_4

    .line 2321
    const-string v16, "PersonaManagerService"

    const-string v17, "activateAdmin packageName is null in Resolve info \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2325
    :cond_4
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "packageName is \n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2329
    :try_start_0
    new-instance v10, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v15}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 2330
    .local v10, "dpi":Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2332
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activateAdmin appInfo for package  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " component is  :-- \n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v8, :cond_6

    .line 2342
    const-string v16, "PersonaManagerService"

    const-string v17, "Error activateAdmin admin component is null \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    const/16 v16, -0x3f1

    goto/16 :goto_0

    .line 2335
    .restart local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v11

    .line 2337
    .local v11, "e":Ljava/lang/Exception;
    const-string v16, "PersonaManagerService"

    const-string v17, "Exception throw during creating  DeviceAdminInfo \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2345
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v8, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 2346
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n isAdminActive return false \n "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private changeEncryptFsKey(ILjava/lang/String;)Z
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 5605
    const/4 v8, 0x0

    .line 5607
    .local v8, "resullt":Z
    :try_start_0
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMS.changeEncryptFsKey->  personaId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5608
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5609
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v7

    .line 5610
    .local v7, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v7, :cond_0

    .line 5611
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/4 v2, 0x0

    invoke-virtual {v7}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v4

    invoke-virtual {v7}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v5

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    .line 5619
    .end local v7    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_0
    :goto_0
    return v8

    .line 5614
    :cond_1
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMS.changeEncryptFsKey->  not valid personaid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5616
    :catch_0
    move-exception v6

    .line 5617
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private changeStateAndSwitch(I)V
    .locals 9
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2826
    :try_start_0
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeStateAndLaunchKeyGuard: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    new-instance v3, Landroid/content/pm/PersonaEvent;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    .line 2828
    .local v3, "pe":Landroid/content/pm/PersonaEvent;
    const/4 v2, 0x0

    .line 2829
    .local v2, "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    const-string v6, "persona_state"

    invoke-static {p1, v6}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2831
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_3

    .line 2832
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeStateAndLaunchKeyGuard b is not null: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    .line 2834
    if-eqz v2, :cond_0

    .line 2835
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 2836
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_0

    .line 2837
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    iget v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    if-nez v6, :cond_0

    .line 2839
    invoke-interface {v2, v3}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    .line 2840
    const-string v6, "PersonaManagerService"

    const-string/jumbo v7, "switchPersona"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2843
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kiosk is enabled for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", KnoxStatehandler will show keygaurd screen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .end local v3    # "pe":Landroid/content/pm/PersonaEvent;
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_0
    :goto_0
    return-void

    .line 2846
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .restart local v3    # "pe":Landroid/content/pm/PersonaEvent;
    .restart local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2854
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .end local v3    # "pe":Landroid/content/pm/PersonaEvent;
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v1

    .line 2855
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot change state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2846
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .restart local v3    # "pe":Landroid/content/pm/PersonaEvent;
    .restart local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    goto :goto_1

    .line 2851
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_3
    const-string v5, "PersonaManagerService"

    const-string v6, "postEvent() IPersonaStateHandler from HandlerCacheManager is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string v1, "PersonaManagerService"

    .line 343
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    sget-boolean v2, Lcom/android/server/pm/PersonaManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 345
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

    .line 347
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 348
    throw v0

    .line 350
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string v2, "PersonaManagerService"

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

    .line 352
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

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkCreatePersonaParameters(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "personaType"    # Ljava/lang/String;
    .param p5, "admin"    # Ljava/lang/String;
    .param p6, "handlerApkUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v4, 0x8

    const/16 v1, -0x3ea

    .line 1795
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1796
    :cond_0
    const-string v1, "PersonaManagerService"

    const-string v2, "Persona Name cann\'t be null & should have length greater than 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const/16 v1, -0x3e9

    .line 1831
    :goto_0
    return v1

    .line 1800
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1801
    :cond_2
    const-string v1, "PersonaManagerService"

    const-string v2, "Persona Type cann\'t be null & should have length greater than 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const/16 v1, -0x3ed

    goto :goto_0

    .line 1804
    :cond_3
    and-long v2, p2, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 1805
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 1806
    :cond_4
    const-string v1, "PersonaManagerService"

    const-string v2, "Persona Admin Apk cann\'t be null & should have length greater than 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/16 v1, -0x3ec

    goto :goto_0

    .line 1819
    :cond_5
    if-nez p6, :cond_6

    .line 1820
    const-string v2, "PersonaManagerService"

    const-string v3, "Persona Handler Apk cann\'t be null & should have length greater than 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1823
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1824
    .local v0, "handlerApk":Ljava/io/File;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1825
    :cond_7
    const-string v2, "PersonaManagerService"

    const-string v3, "Persona Handler Apk file not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1831
    :cond_8
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkIfAdminHasBeenRemoved(I)V
    .locals 8
    .param p1, "personaid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3788
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfAdminHasBeenRemoved("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3790
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    monitor-enter v5

    .line 3791
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 3792
    .local v3, "isRemoving":Z
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRemoving: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " personaid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 3794
    const-string v4, "device_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    .line 3796
    .local v2, "dpmService":Landroid/app/admin/IDevicePolicyManager;
    if-nez v2, :cond_1

    .line 3797
    monitor-exit v5

    .line 3820
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    .end local v3    # "isRemoving":Z
    :cond_0
    :goto_0
    return-void

    .line 3799
    .restart local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    .restart local v3    # "isRemoving":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v4, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3800
    .local v0, "admins":I
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAdminList size get ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    if-lez v0, :cond_2

    .line 3802
    add-int/lit8 v0, v0, -0x1

    .line 3803
    :cond_2
    if-nez v0, :cond_5

    .line 3804
    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v1

    .line 3805
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 3806
    :cond_3
    const-string v4, "PersonaManagerService"

    const-string v6, "All admins disabled, need to remove persona."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeThirdPartyApks(I)V

    .line 3808
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3813
    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 3818
    .end local v0    # "admins":I
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    .end local v3    # "isRemoving":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3810
    .restart local v0    # "admins":I
    .restart local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    .restart local v3    # "isRemoving":Z
    :cond_4
    :try_start_1
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad state, removeActiveAdmin called ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeActiveAdmin(I)Z

    goto :goto_1

    .line 3815
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_5
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAdminList size set again ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 3818
    .end local v0    # "admins":I
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private static final checkManagePersonasPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 783
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_0
    return-void
.end method

.method private checkTimaError(II)V
    .locals 2
    .param p1, "personaId"    # I
    .param p2, "timaStatus"    # I

    .prologue
    .line 5544
    packed-switch p2, :pswitch_data_0

    .line 5554
    :goto_0
    return-void

    .line 5549
    :pswitch_0
    const-string v0, "PersonaManagerService"

    const-string v1, "Setting to KNOX_STATE_TIMA_COMPROMISED....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setTimaCompromisedState(I)V

    goto :goto_0

    .line 5544
    nop

    :pswitch_data_0
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V
    .locals 3
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 2352
    const-string v0, "PersonaManagerService"

    const-string v1, " cleanPartialPersona called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2354
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2355
    const/4 v0, 0x4

    iput v0, p1, Landroid/content/pm/PersonaInfo;->state:I

    .line 2356
    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "writeUserLocked called "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2358
    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "updateUserIdsLocked called "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2360
    monitor-exit v1

    .line 2361
    return-void

    .line 2360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private collectInstalledPackages(ILjava/util/Set;)V
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3973
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 3974
    const-string v3, "PersonaManagerService"

    const-string v4, "mContext is null inside collectInstalledPackages"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    :cond_0
    return-void

    .line 3978
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v2

    .line 3979
    .local v2, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageInfoList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for id -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3982
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 3986
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non system Installed package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deleteTimaKeyStoreKeys(I)V
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    .line 5522
    :try_start_0
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteTimaKeyStoreKeys-> personaId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 5524
    .local v1, "ks":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 5525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 5537
    .end local v1    # "ks":Ljava/security/KeyStore;
    :cond_0
    :goto_0
    return-void

    .line 5528
    :catch_0
    move-exception v0

    .line 5529
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 5530
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 5531
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 5532
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 5533
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 5534
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v0

    .line 5535
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private fallbackToSingleUserLocked()V
    .locals 0

    .prologue
    .line 1043
    return-void
.end method

.method private getAdminPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 1578
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1579
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 1580
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1582
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAdminPackageName(JLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "flags"    # J
    .param p3, "admin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x40

    const-wide/16 v7, 0x20

    const-wide/16 v5, 0x10

    const/4 v2, 0x0

    .line 2364
    and-long v3, p1, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 2365
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2366
    .local v0, "apkUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2367
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 2368
    const-string v3, "PersonaManagerService"

    const-string v4, " getAdminPackageName package info is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v2

    .line 2378
    .end local v0    # "apkUri":Landroid/net/Uri;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local p3    # "admin":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .line 2371
    .restart local v0    # "apkUri":Landroid/net/Uri;
    .restart local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local p3    # "admin":Ljava/lang/String;
    :cond_1
    iget-object p3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 2372
    .end local v0    # "apkUri":Landroid/net/Uri;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    and-long v3, p1, v7

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 2374
    and-long v3, p1, v9

    cmp-long v3, v3, v9

    if-nez v3, :cond_3

    .line 2375
    const-string v3, "PersonaManagerService"

    const-string v4, " getAdminPackageName returning null as FLAG_ADMIN_TYPE_NONE"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v2

    .line 2376
    goto :goto_0

    :cond_3
    move-object p3, v2

    .line 2378
    goto :goto_0
.end method

.method private getAdminUid(IJLjava/lang/String;)I
    .locals 10
    .param p1, "personaId"    # I
    .param p2, "flags"    # J
    .param p4, "adminPackageName"    # Ljava/lang/String;

    .prologue
    .line 2222
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAdminUid called  for Persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    if-nez p4, :cond_0

    .line 2224
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adminPackageName == null for Persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    const/16 v0, -0x3f1

    .line 2279
    :goto_0
    return v0

    .line 2230
    :cond_0
    const/4 v5, 0x0

    .line 2231
    .local v5, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-wide/16 v6, 0x40

    and-long/2addr v6, p2

    const-wide/16 v8, 0x40

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 2232
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x8080

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 2237
    :goto_1
    if-nez v5, :cond_2

    .line 2238
    const-string v6, "PersonaManagerService"

    const-string v7, "getAdminUid packageInfoList is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const/16 v0, -0x3f1

    goto :goto_0

    .line 2234
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x8080

    invoke-virtual {v6, v7, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 2241
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 2242
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_4

    .line 2243
    const-string v6, "PersonaManagerService"

    const-string v7, "getAdminUid packageInfoList info is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2276
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 2278
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PersonaManagerService"

    const-string v7, "Exception in  getAdminUid available for Persona"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const/16 v0, -0x3f1

    goto :goto_0

    .line 2246
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    :try_start_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 2248
    const/4 v1, 0x0

    .line 2249
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2250
    if-nez v1, :cond_5

    .line 2251
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Application info is null for admin package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x8080

    invoke-virtual {v6, p4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2253
    if-nez v1, :cond_5

    .line 2254
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Application info is null for admin package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    const/16 v0, -0x3f1

    goto/16 :goto_0

    .line 2259
    :cond_5
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2260
    .local v0, "adminUid":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin uid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_6

    .line 2263
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activateAdmin adminUid is proper for persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2269
    .end local v0    # "adminUid":I
    :catch_1
    move-exception v2

    .line 2270
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception getting application info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 2265
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "adminUid":I
    :cond_6
    :try_start_4
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2266
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making admin uid proper for persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2274
    .end local v0    # "adminUid":I
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_5
    const-string v6, "PersonaManagerService"

    const-string v7, "No Admin available for Persona"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2275
    const/16 v0, -0x3f1

    goto/16 :goto_0
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6071
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6072
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    .line 6082
    :goto_0
    return-object v0

    .line 6074
    :cond_0
    const-string v1, "ro.build.PDA"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6075
    .local v0, "pdaVersion":Ljava/lang/String;
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6076
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6077
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6081
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 5599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5600
    .local v0, "password":Ljava/lang/String;
    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v1
.end method

.method private getHandlerApkLocation(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 1586
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1587
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v1

    .line 1590
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .prologue
    .line 361
    const-string v0, "getInstance"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 362
    const-class v1, Lcom/android/server/pm/PersonaManagerService;

    monitor-enter v1

    .line 363
    :try_start_0
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    monitor-exit v1

    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 5721
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5722
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminLockSettings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5723
    .local v0, "obj":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 5724
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 5726
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private getNextAvailableIdLocked()I
    .locals 3

    .prologue
    .line 4266
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4267
    const/16 v0, 0x64

    .line 4268
    .local v0, "i":I
    :goto_0
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 4269
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4274
    :cond_0
    monitor-exit v2

    return v0

    .line 4272
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4275
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPasswordFromTima(I)Ljava/lang/String;
    .locals 10
    .param p1, "personaId"    # I

    .prologue
    .line 5451
    const/4 v4, 0x0

    .line 5453
    .local v4, "password":Ljava/lang/String;
    :try_start_0
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPasswordFromTima-> personaId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    const/4 v6, -0x1

    .line 5455
    .local v6, "timaStatus":I
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5456
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTIMAStatus()I

    move-result v6

    .line 5458
    :cond_0
    if-nez v6, :cond_3

    .line 5459
    sget-object v7, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 5460
    .local v3, "ks":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 5461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5462
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v7

    check-cast v7, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v0, v7

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v2, v0

    .line 5463
    .local v2, "entry":Ljava/security/KeyStore$SecretKeyEntry;
    if-eqz v2, :cond_1

    .line 5464
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_4

    .line 5465
    .end local v4    # "password":Ljava/lang/String;
    .local v5, "password":Ljava/lang/String;
    :try_start_1
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v4, v5

    .line 5485
    .end local v2    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "timaStatus":I
    .restart local v4    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    .line 5468
    .restart local v3    # "ks":Ljava/security/KeyStore;
    .restart local v6    # "timaStatus":I
    :cond_2
    :try_start_2
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 5473
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v6    # "timaStatus":I
    :catch_0
    move-exception v1

    .line 5474
    .local v1, "e":Ljava/security/KeyStoreException;
    :goto_1
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 5471
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v6    # "timaStatus":I
    :cond_3
    :try_start_3
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/PersonaManagerService;->checkTimaError(II)V
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 5475
    .end local v6    # "timaStatus":I
    :catch_1
    move-exception v1

    .line 5476
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 5477
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 5478
    .local v1, "e":Ljava/security/cert/CertificateException;
    :goto_3
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 5479
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v1

    .line 5480
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 5481
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 5482
    .local v1, "e":Ljava/security/UnrecoverableEntryException;
    :goto_5
    invoke-virtual {v1}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    goto :goto_0

    .line 5481
    .end local v1    # "e":Ljava/security/UnrecoverableEntryException;
    .end local v4    # "password":Ljava/lang/String;
    .restart local v2    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    .restart local v3    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "password":Ljava/lang/String;
    .restart local v6    # "timaStatus":I
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_5

    .line 5479
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_4

    .line 5477
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_3

    .line 5475
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_2

    .line 5473
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_9
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_1
.end method

.method private getPasswordFromTima20(I)Ljava/lang/String;
    .locals 13
    .param p1, "personaId"    # I

    .prologue
    const/16 v10, 0x10

    .line 5489
    const/4 v5, 0x0

    .line 5490
    .local v5, "ret":Ljava/lang/String;
    const/4 v3, 0x0

    .line 5491
    .local v3, "key":[B
    new-array v0, v10, [B

    .line 5492
    .local v0, "ecryptfsKey":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5493
    .local v8, "token":J
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    .line 5494
    .local v7, "timaService":Landroid/service/tima/ITimaService;
    if-eqz v7, :cond_2

    .line 5496
    :try_start_0
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 5497
    .local v1, "error":I
    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPasswordFromTima20 errorCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    if-nez v1, :cond_1

    .line 5499
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 5500
    .local v4, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_0

    .line 5501
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v10

    invoke-interface {v7, v10}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v3

    .line 5503
    :cond_0
    if-eqz v3, :cond_1

    const/4 v10, 0x0

    aget-byte v10, v3, v10

    if-nez v10, :cond_1

    .line 5504
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5505
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .end local v5    # "ret":Ljava/lang/String;
    .local v6, "ret":Ljava/lang/String;
    move-object v5, v6

    .line 5509
    .end local v4    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5513
    .end local v1    # "error":I
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v6, v5

    .line 5517
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v6    # "ret":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 5510
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5511
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5513
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_2
    move-object v6, v5

    .line 5517
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v6    # "ret":Ljava/lang/String;
    goto :goto_1
.end method

.method private getPersonaInfoLocked(I)Landroid/content/pm/PersonaInfo;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 628
    .local v0, "ui":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-nez v1, :cond_0

    .line 629
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v0, 0x0

    .line 632
    .end local v0    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_0
    return-object v0
.end method

.method private getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;
    .locals 1

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

    if-nez v0, :cond_0

    .line 2533
    const-string v0, "persona_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaPolicyManagerService;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

    .line 2536
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

    return-object v0
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "policyService"    # Ljava/lang/String;

    .prologue
    .line 2794
    const-string v0, "getPolicyService"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2795
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getTIMAStatus()I
    .locals 9

    .prologue
    .line 5576
    const/4 v1, -0x1

    .line 5577
    .local v1, "timaStatus":I
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    if-nez v6, :cond_0

    move v2, v1

    .line 5595
    .end local v1    # "timaStatus":I
    .local v2, "timaStatus":I
    :goto_0
    return v2

    .line 5580
    .end local v2    # "timaStatus":I
    .restart local v1    # "timaStatus":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5582
    .local v4, "token":J
    :try_start_0
    const-string v6, "3.0"

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5583
    .local v3, "timaVersion30":Z
    if-eqz v3, :cond_2

    .line 5584
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 5592
    .end local v3    # "timaVersion30":Z
    :cond_1
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5594
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTIMAStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 5595
    .end local v1    # "timaStatus":I
    .restart local v2    # "timaStatus":I
    goto :goto_0

    .line 5585
    .end local v2    # "timaStatus":I
    .restart local v1    # "timaStatus":I
    .restart local v3    # "timaVersion30":Z
    :cond_2
    :try_start_1
    sget-boolean v6, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    if-eqz v6, :cond_1

    .line 5586
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 5587
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5589
    .end local v3    # "timaVersion30":Z
    :catch_0
    move-exception v0

    .line 5590
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 5592
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 5570
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 5572
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getTimaState()I
    .locals 5

    .prologue
    .line 5557
    const/4 v1, -0x1

    .line 5558
    .local v1, "timaStatus":I
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5560
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5565
    :cond_0
    :goto_0
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timaStatus :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5566
    return v1

    .line 5561
    :catch_0
    move-exception v0

    .line 5562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTimeToLock(I)J
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 4230
    const-wide/32 v1, 0x927c0

    .line 4232
    .local v1, "timeout":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "knox_screen_off_timeout"

    const v5, 0x927c0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v1, v3

    .line 4239
    :goto_0
    return-wide v1

    .line 4235
    :catch_0
    move-exception v0

    .line 4237
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PersonaManagerService"

    const-string v4, "Settings read crashed :("

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;
    .locals 17
    .param p1, "personaHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3900
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getUninstallablePackagesForRemovePersona : is called for"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PersonaInfo;

    .line 3903
    .local v12, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v12, :cond_1

    .line 3904
    const-string v14, "PersonaManagerService"

    const-string v15, "getUninstallablePackagesForRemovePersona no personaInfo for this persona"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    const/4 v8, 0x0

    .line 3968
    :cond_0
    return-object v8

    .line 3908
    :cond_1
    invoke-virtual {v12}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v9

    .line 3909
    .local v9, "parentUserId":I
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getUninstallablePackagesForRemovePersona : parentUserId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3912
    .local v7, "otherUsersPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 3913
    .local v13, "personaPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 3915
    .local v8, "packagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3916
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 3918
    .local v11, "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 3920
    .local v10, "personaId":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3922
    .local v4, "id":I
    move/from16 v0, p1

    if-eq v4, v0, :cond_2

    .line 3923
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages started for  : personaid "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    goto :goto_0

    .line 3926
    :cond_2
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages igonored for  : personaid "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3929
    .end local v4    # "id":I
    .end local v10    # "personaId":Ljava/lang/Integer;
    :cond_3
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages started for  : parentUserId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    .line 3933
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages started for removing : personaId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    .line 3940
    const-string v14, "com.sec.knox.securehandler"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3941
    const-string v14, "com.sec.knox.containeragent2"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3942
    const-string v14, "com.sec.knox.packageverifier"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3943
    const-string v14, "com.sec.knox.shortcutsms"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3944
    const-string v14, "com.sec.knox.switcher"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3946
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "otherUsersPackages size -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "personaPackages size -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3949
    invoke-virtual {v12}, Landroid/content/pm/PersonaInfo;->getInstalledPkgList()Ljava/util/List;

    move-result-object v5

    .line 3950
    .local v5, "installedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 3955
    const-string v14, "PersonaManagerService"

    const-string v15, "Removing packages added to Owner user during boot."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    invoke-interface {v7, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 3958
    :cond_5
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3959
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 3960
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3964
    .end local v6    # "name":Ljava/lang/String;
    :cond_7
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "packagesToBeUnInstall size -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3966
    .local v2, "finalPackage":Ljava/lang/String;
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pkg to be uninstalled is -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleSuperLockPersona(II)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "state"    # I

    .prologue
    .line 4464
    const/4 v1, 0x7

    if-eq p2, v1, :cond_0

    .line 4465
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4466
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4467
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4468
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4470
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private installAdminApk(IJLjava/lang/String;)I
    .locals 10
    .param p1, "personaId"    # I
    .param p2, "flags"    # J
    .param p4, "admin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x40

    const-wide/16 v6, 0x20

    const-wide/16 v4, 0x10

    const/4 v1, 0x0

    const/16 v0, -0x3f0

    .line 2384
    and-long v2, p2, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 2386
    const/16 v2, 0x65

    invoke-direct {p0, p1, v2, p4}, Lcom/android/server/pm/PersonaManagerService;->installPackageForPersona(IILjava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 2387
    const-string v1, "PersonaManagerService"

    const-string v2, "installAdminApk installPackageForPersona returns error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2391
    goto :goto_0

    .line 2394
    :cond_2
    and-long v2, p2, v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 2396
    const/16 v2, 0x66

    invoke-direct {p0, p1, v2, p4}, Lcom/android/server/pm/PersonaManagerService;->installPackageForPersona(IILjava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    .line 2397
    const-string v1, "PersonaManagerService"

    const-string v2, "installAdminApk installPackageForPersona returns error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2401
    goto :goto_0

    .line 2403
    :cond_4
    and-long v2, p2, v8

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    move v0, v1

    .line 2404
    goto :goto_0
.end method

.method private installApkUriForPersona(ILandroid/net/Uri;)I
    .locals 12
    .param p1, "personaId"    # I
    .param p2, "apkUri"    # Landroid/net/Uri;

    .prologue
    .line 2482
    const/4 v9, 0x0

    .line 2483
    .local v9, "packageAlreadyInstalled":Z
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    monitor-enter v11

    .line 2484
    :try_start_0
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " installApkUriForPersona  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 2488
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_1

    .line 2490
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    const/4 v9, 0x1

    .line 2501
    :goto_0
    if-eqz v9, :cond_2

    .line 2503
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    monitor-exit v11

    .line 2524
    :goto_1
    return v0

    .line 2495
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 2498
    :cond_1
    const-string v0, "PersonaManagerService"

    const-string v1, " installApkUriForPersona  returns error "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    const/4 v0, -0x1

    monitor-exit v11

    goto :goto_1

    .line 2526
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2506
    .restart local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 2507
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->installPackageForPersonaWithVerificationAndEncryption(ILandroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 2509
    const-string v0, "PersonaManagerService"

    const-string v1, " installPackageForPersonaWithVerificationAndEncryption  returns "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2511
    :try_start_2
    const-string v0, "PersonaManagerService"

    const-string v1, " calling mPackageInstallObserver  wait "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 2513
    const-string v0, "PersonaManagerService"

    const-string v1, "mPackageInstallObserver wait returns"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 2515
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Failure to install package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package manager result code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2516
    const/4 v0, -0x1

    :try_start_3
    monitor-exit v11

    goto :goto_1

    .line 2518
    :cond_3
    const/4 v0, 0x0

    monitor-exit v11

    goto :goto_1

    .line 2520
    :catch_0
    move-exception v8

    .line 2522
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v0, "PersonaManagerService"

    const-string v1, "Package installPackageForPersonaWithVerificationAndEncryption  wait error "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2524
    const/4 v0, -0x1

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private installDefaultApplications(ILjava/util/List;)Z
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1525
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installDefaultApplications for  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1527
    .local v0, "userPath":Ljava/io/File;
    const-string v1, "PersonaManagerService"

    const-string v2, "installDefaultApplications createNewPersonaLILPw called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->createNewPersonaLILPw(ILjava/io/File;Ljava/util/List;)V

    .line 1533
    const/4 v1, 0x1

    return v1
.end method

.method private installExistingPackageForPersona(ILjava/lang/String;)I
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 2461
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2462
    const-string v2, "PersonaManagerService"

    const-string v3, "packageAlreadyInstalled is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " installExistingPackageForPersona "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 2465
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    .line 2466
    .local v0, "installResult":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2467
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Failure to install package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package manager result code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    .end local v0    # "installResult":I
    :cond_0
    :goto_0
    return v1

    .line 2471
    .restart local v0    # "installResult":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private installPackageForPersona(IILjava/lang/String;)I
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "type"    # I
    .param p3, "pathOrPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 2434
    const/16 v2, 0x65

    if-ne p2, v2, :cond_2

    .line 2437
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2438
    .local v0, "apkUri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 2439
    const-string v2, "PersonaManagerService"

    const-string v3, "installPackageForPersona apkUri is  null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    .end local v0    # "apkUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v1

    .line 2443
    .restart local v0    # "apkUri":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    move-result v1

    goto :goto_0

    .line 2444
    .end local v0    # "apkUri":Landroid/net/Uri;
    :cond_2
    const/16 v2, 0x66

    if-ne p2, v2, :cond_0

    .line 2445
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2447
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private installPackageUriForPersona(IILandroid/net/Uri;)I
    .locals 2
    .param p1, "personaId"    # I
    .param p2, "type"    # I
    .param p3, "apkUri"    # Landroid/net/Uri;

    .prologue
    .line 2413
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    move-result v0

    .line 2414
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 2415
    packed-switch p2, :pswitch_data_0

    .line 2423
    const/4 v1, -0x1

    .line 2428
    :goto_0
    return v1

    .line 2417
    :pswitch_0
    const/16 v1, -0x3ee

    goto :goto_0

    .line 2419
    :pswitch_1
    const/16 v1, -0x3ef

    goto :goto_0

    .line 2421
    :pswitch_2
    const/16 v1, -0x7d1

    goto :goto_0

    .line 2428
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2415
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isKeyGuardEnabledFromMDM(I)Z
    .locals 8
    .param p1, "personaId"    # I

    .prologue
    .line 6005
    const/4 v4, 0x1

    .line 6006
    .local v4, "returnValue":Z
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v3

    .line 6008
    .local v3, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v1

    .line 6009
    .local v1, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v0

    .line 6010
    .local v0, "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->getEnforceAuthForContainer()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 6014
    .end local v0    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    .end local v1    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :goto_0
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKeyGuardEnabledFromMDM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6015
    return v4

    .line 6011
    :catch_0
    move-exception v2

    .line 6012
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecurityException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 5715
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v0

    .line 5716
    .local v0, "maximumScreenOffTimeoutFromDeviceAdmin":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPersonaLimitReachedLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1836
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    .line 1838
    .local v0, "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v0, :cond_0

    .line 1840
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1841
    const-string v2, "PersonaManagerService"

    const-string v3, " isPersonaLimitReachedLocked returns true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :goto_0
    return v1

    .line 1845
    :cond_0
    const-string v1, "PersonaManagerService"

    const-string v2, " isPersonaLimitReachedLocked returns false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSuperLockState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 4453
    packed-switch p1, :pswitch_data_0

    .line 4459
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4457
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4453
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isUserLimitReachedLocked()Z
    .locals 2

    .prologue
    .line 769
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 770
    .local v0, "nPersonas":I
    const/4 v1, 0x0

    return v1
.end method

.method private killTimer(I)V
    .locals 1
    .param p1, "personaId"    # I

    .prologue
    .line 5930
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V

    .line 5931
    return-void
.end method

.method private killTimer(IZ)V
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 5934
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 5935
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 5936
    :cond_0
    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "killtimer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5938
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5939
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5940
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "personaid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5941
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v7, 0x263e

    const/high16 v8, 0x48000000

    invoke-static {v5, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 5943
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5944
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5945
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5947
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "token":J
    :cond_1
    monitor-exit v6

    .line 5948
    return-void

    .line 5947
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private migrateAndCleanupSharedPreferences(I)V
    .locals 7
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    .line 5623
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrateAndCleanupSharedPreferences id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5624
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllowedInstallerListForUser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5626
    .local v1, "personaSP":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 5627
    const/4 v0, 0x0

    .line 5628
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 5629
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 5630
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5631
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fota update: ime list from SP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    sget-object v3, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    .line 5634
    :cond_0
    sget-object v3, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 5635
    if-eqz v2, :cond_2

    .line 5636
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5637
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fota update: install whitelist from SP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    sget-object v3, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    .line 5643
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5645
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 5640
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    sget-object v3, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0
.end method

.method private printLastTimeToBackground()V
    .locals 5

    .prologue
    .line 4243
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "print lastTimeToBackground size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4245
    .local v1, "tId":Ljava/lang/Integer;
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastTimeToBackground "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4247
    .end local v1    # "tId":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private readAppTypeList(ILjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "id"    # I
    .param p2, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6118
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6119
    .local v5, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6120
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 6121
    const/4 v7, 0x0

    .line 6162
    :cond_0
    :goto_0
    return-object v7

    .line 6123
    :cond_1
    const/4 v7, 0x0

    .line 6124
    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 6126
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 6127
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 6128
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 6129
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v4, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6132
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 6136
    :cond_3
    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 6137
    const/4 v7, 0x0

    .line 6155
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 6157
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6158
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_0
    move-exception v10

    goto :goto_0

    .line 6140
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "type":I
    :cond_4
    const/4 v3, 0x0

    .line 6141
    .local v3, "packages":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "appType"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 6143
    const/4 v10, 0x0

    invoke-interface {v4, v10, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6146
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 6147
    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 6148
    .local v6, "pkgArray":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6149
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x2

    :try_start_3
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, ""

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, v8

    .line 6155
    .end local v6    # "pkgArray":[Ljava/lang/String;
    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    if-eqz v2, :cond_0

    .line 6157
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 6155
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v3    # "packages":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catchall_0
    move-exception v10

    :goto_1
    if-eqz v2, :cond_7

    .line 6157
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 6155
    :cond_7
    :goto_2
    throw v10

    .line 6152
    :catch_1
    move-exception v10

    .line 6155
    :goto_3
    if-eqz v2, :cond_0

    .line 6157
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 6153
    :catch_2
    move-exception v10

    .line 6155
    :goto_4
    if-eqz v2, :cond_0

    .line 6157
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 6158
    :catch_3
    move-exception v11

    goto :goto_2

    .line 6155
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v3    # "packages":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "pkgArray":[Ljava/lang/String;
    .restart local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "type":I
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 6153
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4
    move-exception v10

    move-object v7, v8

    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 6152
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5
    move-exception v10

    move-object v7, v8

    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 1437
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1438
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1443
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 1441
    .restart local p3    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 1448
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1454
    .end local p3    # "defaultValue":J
    :goto_0
    return-wide p3

    .line 1452
    .restart local p3    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private readUser(II)Landroid/content/pm/PersonaInfo;
    .locals 61
    .param p1, "id"    # I
    .param p2, "parentId"    # I

    .prologue
    .line 1241
    const/4 v8, 0x0

    .line 1242
    .local v8, "flags":I
    move/from16 v49, p1

    .line 1243
    .local v49, "serialNumber":I
    const/4 v10, -0x1

    .line 1244
    .local v10, "creatorUid":I
    const/16 v53, -0x1

    .line 1245
    .local v53, "timaEcrytfsIndex":I
    const/16 v54, -0x1

    .line 1246
    .local v54, "timaPasswordIndex":I
    const/4 v6, 0x0

    .line 1247
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1248
    .local v7, "iconPath":Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 1249
    .local v13, "creationTime":J
    const-wide/16 v32, 0x0

    .line 1250
    .local v32, "lastLoggedInTime":J
    const-wide/16 v34, 0x0

    .line 1251
    .local v34, "lastLoggedOutTime":J
    const/4 v15, 0x0

    .line 1252
    .local v15, "encryptedId":Ljava/lang/String;
    const/16 v48, 0x0

    .line 1254
    .local v48, "samsungAccount":Ljava/lang/String;
    const/16 v39, 0x0

    .line 1255
    .local v39, "partial":Z
    const/16 v43, 0x0

    .line 1256
    .local v43, "removePersona":Z
    const/16 v29, 0x0

    .line 1257
    .local v29, "isUserManaged":Z
    const/16 v24, 0x0

    .line 1258
    .local v24, "isLightWeightContainer":Z
    const/16 v46, 0x0

    .line 1259
    .local v46, "resetPassword":Z
    const/16 v23, 0x0

    .line 1260
    .local v23, "isKioskModeEnabled":Z
    const/16 v26, 0x0

    .line 1261
    .local v26, "isResetPersonaOnBootEnabled":Z
    const/16 v36, -0x1

    .line 1262
    .local v36, "oldState":I
    const/16 v51, -0x1

    .line 1263
    .local v51, "state":I
    const/16 v22, 0x0

    .line 1264
    .local v22, "isFsMounted":Z
    const/16 v27, 0x0

    .line 1265
    .local v27, "isSuperLocked":Z
    const-string v20, ""

    .line 1266
    .local v20, "handlerServiceName":Ljava/lang/String;
    const-string v37, ""

    .line 1267
    .local v37, "packageName":Ljava/lang/String;
    const-string v50, ""

    .line 1268
    .local v50, "setupWizardApkLocation":Ljava/lang/String;
    const-string v19, ""

    .line 1269
    .local v19, "handlerApkLocation":Ljava/lang/String;
    const-string v11, ""

    .line 1270
    .local v11, "adminPackageName":Ljava/lang/String;
    const/4 v12, -0x1

    .line 1271
    .local v12, "adminUid":I
    const-string v40, "default"

    .line 1272
    .local v40, "personaType":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1273
    .local v21, "installedPkgs":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1274
    .local v16, "fis":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 1276
    .local v18, "fwversion":Ljava/lang/String;
    :try_start_0
    new-instance v57, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v59, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, ".xml"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-direct {v5, v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v57

    invoke-direct {v0, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1277
    .local v57, "userFile":Landroid/util/AtomicFile;
    invoke-virtual/range {v57 .. v57}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v16

    .line 1278
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v38

    .line 1279
    .local v38, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1282
    :cond_0
    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v55

    .local v55, "type":I
    const/4 v5, 0x2

    move/from16 v0, v55

    if-eq v0, v5, :cond_1

    const/4 v5, 0x1

    move/from16 v0, v55

    if-ne v0, v5, :cond_0

    .line 1286
    :cond_1
    const/4 v5, 0x2

    move/from16 v0, v55

    if-eq v0, v5, :cond_3

    .line 1287
    const-string v5, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "Unable to read user "

    move-object/from16 v0, v59

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    const/4 v4, 0x0

    .line 1426
    if-eqz v16, :cond_2

    .line 1428
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1433
    .end local v38    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v55    # "type":I
    .end local v57    # "userFile":Landroid/util/AtomicFile;
    :cond_2
    :goto_0
    return-object v4

    .line 1291
    .restart local v38    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v55    # "type":I
    .restart local v57    # "userFile":Landroid/util/AtomicFile;
    :cond_3
    const/4 v5, 0x2

    move/from16 v0, v55

    if-ne v0, v5, :cond_10

    :try_start_2
    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "user"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1292
    const-string v5, "id"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v52

    .line 1293
    .local v52, "storedId":I
    move/from16 v0, v52

    move/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 1294
    const-string v5, "PersonaManagerService"

    const-string v9, "User id does not match the file name"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1295
    const/4 v4, 0x0

    .line 1426
    if-eqz v16, :cond_2

    .line 1428
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1429
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1297
    :cond_4
    :try_start_4
    const-string/jumbo v5, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v49

    .line 1298
    const-string v5, "flags"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1299
    const/4 v5, 0x0

    const-string v9, "icon"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1300
    const-string v5, "created"

    const-wide/16 v59, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-wide/from16 v2, v59

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1301
    const-string v5, "lastLoggedIn"

    const-wide/16 v59, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-wide/from16 v2, v59

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v32

    .line 1302
    const-string v5, "lastLoggedOut"

    const-wide/16 v59, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-wide/from16 v2, v59

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v34

    .line 1303
    const/4 v5, 0x0

    const-string v9, "encryptedId"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1304
    const/4 v5, 0x0

    const-string v9, "samsungAccount"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1306
    const/4 v5, 0x0

    const-string v9, "partial"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1308
    .local v58, "valueString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "removePersona"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1310
    .local v44, "removeString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "isUserManaged"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1311
    .local v30, "isUserManagedString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "isLightWeightContainer"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1313
    .local v25, "isLightWeightContainerString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "resetPassword"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1315
    .local v47, "resetPasswordString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "kioskModeEnabled"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1316
    .local v31, "kioskModeString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "resetPersonaOnReboot"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1317
    .local v45, "resetContainerString":Ljava/lang/String;
    const-string v5, "oldState"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v36

    .line 1320
    const/4 v5, 0x0

    const-string v9, "fsMounted"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1321
    .local v17, "fsMountedString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "personatype"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1323
    .local v56, "typeString":Ljava/lang/String;
    const-string v5, "personastate"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v51

    .line 1324
    const/4 v5, 0x0

    const-string v9, "personahandlername"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1325
    const/4 v5, 0x0

    const-string v9, "personahandlerpackage"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1326
    const/4 v5, 0x0

    const-string/jumbo v9, "setupapklocation"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1327
    const/4 v5, 0x0

    const-string v9, "handlerapklocation"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1328
    const/4 v5, 0x0

    const-string v9, "adminpackagename"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1329
    const-string v5, "adminuid"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 1330
    const-string/jumbo v5, "timaEcrytfsIndex"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v53

    .line 1331
    const-string/jumbo v5, "timaPasswordIndex"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v54

    .line 1332
    const-string v5, "creatorUid"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1334
    const/4 v5, 0x0

    const-string v9, "installedPkgList"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1335
    const/4 v5, 0x0

    const-string/jumbo v9, "superlocked"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1336
    .local v28, "isSuperLockedString":Ljava/lang/String;
    const-string/jumbo v5, "true"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1337
    const/4 v5, 0x0

    const-string v9, "fwversion"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1338
    if-nez v18, :cond_5

    .line 1339
    const-string v18, ""

    .line 1341
    :cond_5
    const-string/jumbo v5, "true"

    move-object/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1342
    const/16 v39, 0x1

    .line 1344
    :cond_6
    const-string/jumbo v5, "true"

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1345
    const/16 v43, 0x1

    .line 1347
    :cond_7
    const-string/jumbo v5, "true"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1348
    const/16 v29, 0x1

    .line 1351
    :cond_8
    const-string/jumbo v5, "true"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1352
    const/16 v24, 0x1

    .line 1355
    :cond_9
    const-string/jumbo v5, "true"

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1356
    const/16 v46, 0x1

    .line 1358
    :cond_a
    const-string/jumbo v5, "true"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1359
    const/16 v22, 0x1

    .line 1361
    :cond_b
    const-string/jumbo v5, "true"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1362
    const/16 v23, 0x1

    .line 1365
    :cond_c
    const-string/jumbo v5, "true"

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1366
    const/16 v26, 0x1

    .line 1368
    :cond_d
    if-eqz v56, :cond_e

    .line 1370
    move-object/from16 v40, v56

    .line 1373
    :cond_e
    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v55

    const/4 v5, 0x2

    move/from16 v0, v55

    if-eq v0, v5, :cond_f

    const/4 v5, 0x1

    move/from16 v0, v55

    if-ne v0, v5, :cond_e

    .line 1375
    :cond_f
    const/4 v5, 0x2

    move/from16 v0, v55

    if-ne v0, v5, :cond_10

    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "name"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1376
    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v55

    .line 1377
    const/4 v5, 0x4

    move/from16 v0, v55

    if-ne v0, v5, :cond_10

    .line 1378
    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1383
    .end local v17    # "fsMountedString":Ljava/lang/String;
    .end local v25    # "isLightWeightContainerString":Ljava/lang/String;
    .end local v28    # "isSuperLockedString":Ljava/lang/String;
    .end local v30    # "isUserManagedString":Ljava/lang/String;
    .end local v31    # "kioskModeString":Ljava/lang/String;
    .end local v44    # "removeString":Ljava/lang/String;
    .end local v45    # "resetContainerString":Ljava/lang/String;
    .end local v47    # "resetPasswordString":Ljava/lang/String;
    .end local v52    # "storedId":I
    .end local v56    # "typeString":Ljava/lang/String;
    .end local v58    # "valueString":Ljava/lang/String;
    :cond_10
    new-instance v4, Landroid/content/pm/PersonaInfo;

    move/from16 v5, p1

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PersonaInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 1384
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    move/from16 v0, v49

    iput v0, v4, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 1385
    iput-wide v13, v4, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 1386
    move-wide/from16 v0, v32

    iput-wide v0, v4, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 1387
    move-wide/from16 v0, v34

    iput-wide v0, v4, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 1388
    iput-object v15, v4, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 1389
    move/from16 v0, v39

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 1390
    move/from16 v0, v43

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 1391
    move-object/from16 v0, v40

    iput-object v0, v4, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 1392
    move/from16 v0, v51

    iput v0, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 1393
    move/from16 v0, v27

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 1394
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setHandlerServiceName(Ljava/lang/String;)V

    .line 1395
    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setHandlerPackageName(Ljava/lang/String;)V

    .line 1396
    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setSetupWizardApkLocation(Ljava/lang/String;)V

    .line 1397
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setHandlerApkLocation(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v4, v11}, Landroid/content/pm/PersonaInfo;->setAdminPackageName(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v4, v12}, Landroid/content/pm/PersonaInfo;->setAdminUid(I)V

    .line 1400
    move/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setTimaEcrytfsIndex(I)V

    .line 1401
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setTimaPasswordIndex(I)V

    .line 1402
    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setsamsungAccount(Ljava/lang/String;)V

    .line 1403
    move/from16 v0, v29

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 1404
    move/from16 v0, v24

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 1405
    move/from16 v0, v46

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 1406
    move/from16 v0, v23

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 1407
    move/from16 v0, v26

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 1408
    move/from16 v0, v22

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 1409
    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 1410
    if-eqz v21, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 1411
    const-string v5, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "readUser: Installed pkg list: "

    move-object/from16 v0, v59

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const-string v5, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 1413
    .local v41, "pkgArray":[Ljava/lang/String;
    new-instance v42, Ljava/util/ArrayList;

    invoke-static/range {v41 .. v41}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1414
    .local v42, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v59, 0x0

    aput-object v59, v5, v9

    const/4 v9, 0x1

    const-string v59, ""

    aput-object v59, v5, v9

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-interface {v0, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1415
    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setInstalledPkgList(Ljava/util/List;)V

    .line 1420
    .end local v41    # "pkgArray":[Ljava/lang/String;
    .end local v42    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    move/from16 v0, v36

    iput v0, v4, Landroid/content/pm/PersonaInfo;->oldState:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1426
    if-eqz v16, :cond_2

    .line 1428
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1429
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 1423
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v38    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v55    # "type":I
    .end local v57    # "userFile":Landroid/util/AtomicFile;
    :catch_2
    move-exception v5

    .line 1426
    if-eqz v16, :cond_12

    .line 1428
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1433
    :cond_12
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1424
    :catch_3
    move-exception v5

    .line 1426
    if-eqz v16, :cond_12

    .line 1428
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 1429
    :catch_4
    move-exception v5

    goto :goto_1

    .line 1426
    :catchall_0
    move-exception v5

    if-eqz v16, :cond_13

    .line 1428
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1430
    :cond_13
    :goto_2
    throw v5

    .line 1429
    .restart local v38    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v55    # "type":I
    .restart local v57    # "userFile":Landroid/util/AtomicFile;
    :catch_5
    move-exception v5

    goto/16 :goto_0

    .end local v38    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v55    # "type":I
    .end local v57    # "userFile":Landroid/util/AtomicFile;
    :catch_6
    move-exception v5

    goto :goto_1

    :catch_7
    move-exception v9

    goto :goto_2
.end method

.method private readUserList()V
    .locals 3

    .prologue
    .line 832
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 834
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUsersWithPersonaLocked()V

    .line 836
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->readUserListLocked(I)V

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    :cond_0
    monitor-exit v2

    .line 840
    return-void

    .line 839
    .end local v0    # "k":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readUserListLocked(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 844
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/pm/PersonaManagerService;->mGuestEnabled:Z

    .line 845
    const-string v11, "PersonaManagerService"

    const-string v12, "readUserListLocked"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "personalist.xml"

    invoke-direct {v7, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    .local v7, "personaListFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 848
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File does not exists, creating it "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v11

    if-nez v11, :cond_0

    .line 851
    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error creating file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 860
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 862
    .local v0, "atomicPersonaListFile":Landroid/util/AtomicFile;
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 863
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 864
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v5, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 867
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v11, 0x2

    if-eq v8, v11, :cond_2

    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    .line 871
    :cond_2
    const/4 v11, 0x2

    if-eq v8, v11, :cond_4

    .line 872
    const-string v11, "PersonaManagerService"

    const-string v12, "Unable to read persona list"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    if-eqz v2, :cond_3

    .line 930
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 935
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :cond_3
    :goto_1
    return-void

    .line 853
    .end local v0    # "atomicPersonaListFile":Landroid/util/AtomicFile;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 855
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 856
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error creating file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "atomicPersonaListFile":Landroid/util/AtomicFile;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_4
    const/16 v11, 0x64

    :try_start_3
    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 878
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "users"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 879
    const/4 v11, 0x0

    const-string v12, "nextSerialNumber"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 880
    .local v4, "lastSerialNumber":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 881
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 883
    :cond_5
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 884
    .local v10, "versionNumber":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 885
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    .line 889
    .end local v4    # "lastSerialNumber":Ljava/lang/String;
    .end local v10    # "versionNumber":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_b

    .line 890
    const/4 v11, 0x2

    if-ne v8, v11, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 891
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 892
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11, p1}, Lcom/android/server/pm/PersonaManagerService;->readUser(II)Landroid/content/pm/PersonaInfo;

    move-result-object v9

    .line 894
    .local v9, "user":Landroid/content/pm/PersonaInfo;
    if-eqz v9, :cond_6

    .line 895
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 897
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 898
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found previous persona(s) for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 900
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Integer;

    iget v13, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_7
    :goto_3
    invoke-virtual {v9}, Landroid/content/pm/PersonaInfo;->isGuest()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 910
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/pm/PersonaManagerService;->mGuestEnabled:Z

    .line 912
    :cond_8
    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    if-ltz v11, :cond_9

    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    if-gt v11, v12, :cond_6

    .line 913
    :cond_9
    iget v11, v9, Landroid/content/pm/PersonaInfo;->id:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 923
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "user":Landroid/content/pm/PersonaInfo;
    :catch_1
    move-exception v11

    .line 928
    if-eqz v2, :cond_3

    .line 930
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 931
    :catch_2
    move-exception v11

    goto/16 :goto_1

    .line 904
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .restart local v9    # "user":Landroid/content/pm/PersonaInfo;
    :cond_a
    :try_start_5
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "creating new persona list to user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v6, "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/lang/Integer;

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 925
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "type":I
    .end local v9    # "user":Landroid/content/pm/PersonaInfo;
    :catch_3
    move-exception v11

    .line 928
    if-eqz v2, :cond_3

    .line 930
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 931
    :catch_4
    move-exception v11

    goto/16 :goto_1

    .line 920
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_b
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 921
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 928
    if-eqz v2, :cond_3

    .line 930
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 931
    :catch_5
    move-exception v11

    goto/16 :goto_1

    .line 928
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catchall_0
    move-exception v11

    if-eqz v2, :cond_c

    .line 930
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 932
    :cond_c
    :goto_4
    throw v11

    .line 931
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :catch_6
    move-exception v11

    goto/16 :goto_1

    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_7
    move-exception v12

    goto :goto_4
.end method

.method private readUsersWithPersonaLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 939
    const/4 v0, 0x0

    .line 940
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v6, Landroid/util/AtomicFile;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v6, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 942
    .local v6, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 943
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 944
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 947
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v10, :cond_1

    if-ne v4, v11, :cond_0

    .line 951
    :cond_1
    if-eq v4, v10, :cond_3

    .line 952
    const-string v8, "PersonaManagerService"

    const-string v9, "Unable to read user list"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    if-eqz v0, :cond_2

    .line 987
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 992
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2
    :goto_0
    return-void

    .line 957
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_3
    const/4 v8, -0x1

    :try_start_2
    iput v8, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 958
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "users"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 959
    const/4 v8, 0x0

    const-string v9, "nextSerialNumber"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 960
    .local v2, "lastSerialNumber":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 961
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 963
    :cond_4
    const/4 v8, 0x0

    const-string/jumbo v9, "version"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 964
    .local v7, "versionNumber":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 965
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    .line 969
    .end local v2    # "lastSerialNumber":Ljava/lang/String;
    .end local v7    # "versionNumber":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v11, :cond_6

    .line 970
    if-ne v4, v10, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 971
    const/4 v8, 0x0

    const-string v9, "id"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "id":Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 973
    .local v5, "userId":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 974
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 980
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "userId":Ljava/lang/Integer;
    :catch_0
    move-exception v8

    .line 985
    if-eqz v0, :cond_2

    .line 987
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 988
    :catch_1
    move-exception v8

    goto :goto_0

    .line 985
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_6
    if-eqz v0, :cond_2

    .line 987
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 988
    :catch_2
    move-exception v8

    goto :goto_0

    .line 982
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_3
    move-exception v8

    .line 985
    if-eqz v0, :cond_2

    .line 987
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 988
    :catch_4
    move-exception v8

    goto/16 :goto_0

    .line 985
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_7

    .line 987
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 989
    :cond_7
    :goto_2
    throw v8

    .line 988
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_5
    move-exception v8

    goto/16 :goto_0

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_6
    move-exception v9

    goto :goto_2
.end method

.method private registerHandlerForPersona(Landroid/content/pm/PersonaInfo;)V
    .locals 11
    .param p1, "pi"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 1461
    if-nez p1, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    const/16 v2, 0x80

    .line 1467
    .local v2, "flags":I
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    iget v10, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v6

    .line 1469
    .local v6, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Iterating through all packages for  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 1472
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1473
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 1476
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1477
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1478
    .local v3, "handlerProxyServiceName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1481
    .local v7, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1483
    const-string v8, "HandlerProxyService"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1488
    :goto_1
    if-eqz v3, :cond_2

    .line 1489
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1490
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Found handlerProxyServiceName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in package - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-virtual {p1, v3}, Landroid/content/pm/PersonaInfo;->setHandlerServiceName(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p1, v7}, Landroid/content/pm/PersonaInfo;->setHandlerPackageName(Ljava/lang/String;)V

    .line 1493
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    goto :goto_0

    .line 1485
    :cond_3
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MetaData is null for   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeActiveAdmin(I)Z
    .locals 12
    .param p1, "personaHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 3823
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3825
    .local v5, "token":J
    :try_start_0
    const-string v8, "device_policy"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    .line 3827
    .local v2, "dpmService":Landroid/app/admin/IDevicePolicyManager;
    if-nez v2, :cond_0

    .line 3828
    const-string v8, "PersonaManagerService"

    const-string v9, "DPM service null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3848
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3850
    return v7

    .line 3831
    .restart local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_0
    :try_start_1
    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v1

    .line 3832
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 3833
    :cond_1
    const-string v8, "PersonaManagerService"

    const-string v9, "DPM components are null or not present. Going with remove persona"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3845
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :catch_0
    move-exception v3

    .line 3846
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occured while removing admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3848
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3836
    .restart local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    monitor-enter v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3837
    :try_start_4
    const-string v8, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mAdminList size set ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, p1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 3839
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3840
    :try_start_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3841
    .local v0, "component":Landroid/content/ComponentName;
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing active admin... "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    invoke-interface {v2, v0, p1}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 3839
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v8

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3844
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 7
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 4062
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4063
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 4064
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 4065
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4066
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 4064
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4069
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4070
    return-void
.end method

.method private removeFilesForSysApp(Lcom/sec/knox/container/util/EnterprisePartitionManager;ILjava/io/File;)V
    .locals 7
    .param p1, "epm"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .param p2, "personaId"    # I
    .param p3, "dir"    # Ljava/io/File;

    .prologue
    .line 1727
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1728
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 1729
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1730
    .local v3, "value":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1731
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1732
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/sec/knox/container/util/EnterprisePartitionManager;ILjava/io/File;)V

    .line 1734
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->deleteFile(Ljava/lang/String;I)Z

    .line 1736
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " removing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1739
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removePersonaHelper(I)V
    .locals 3
    .param p1, "personaHandle"    # I

    .prologue
    .line 3854
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePersonaHelper : is called for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeActiveAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3861
    :goto_0
    return-void

    .line 3859
    :cond_0
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePersonaHelper going ahead for removing apks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeThirdPartyApks(I)V

    goto :goto_0
.end method

.method private removeThirdPartyApks(I)V
    .locals 4
    .param p1, "personaHandle"    # I

    .prologue
    .line 3864
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeThirdPartyApks : is called for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;

    move-result-object v0

    .line 3866
    .local v0, "packagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3867
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;-><init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->start()V

    .line 3871
    :goto_0
    return-void

    .line 3869
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->finishRemoveUser(I)V

    goto :goto_0
.end method

.method private removeThirdPartyApksOnReset(ILjava/util/Set;)V
    .locals 8
    .param p1, "personaHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "excludePkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x2

    .line 3874
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;

    move-result-object v4

    .line 3875
    .local v4, "packagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3876
    .local v0, "finalpackagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_0

    .line 3877
    const-string v5, "PersonaManagerService"

    const-string v6, "removePersonaHelper : packagesToBeUninstall is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3898
    :goto_0
    return-void

    .line 3881
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3883
    .local v3, "name":Ljava/lang/String;
    if-nez p2, :cond_2

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3884
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3888
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 3889
    const-string v5, "PersonaManagerService"

    const-string v6, " uninstalling pkgs from finalpackagesToBeUnInstall"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    new-instance v5, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;

    invoke-direct {v5, p0, p1, v0, v7}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;-><init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->start()V

    goto :goto_0

    .line 3892
    :cond_4
    const-string v5, "PersonaManagerService"

    const-string v6, "finalpackagesToBeUnInstall is having size zero "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3894
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 3895
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private removeUserStateExternal(I)V
    .locals 1
    .param p1, "personaHandle"    # I

    .prologue
    .line 3997
    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    if-nez v0, :cond_0

    .line 3998
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->deleteTimaKeyStoreKeys(I)V

    .line 4000
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4001
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 4003
    :cond_1
    return-void
.end method

.method private removeUserStateLocked(I)V
    .locals 9
    .param p1, "personaHandle"    # I

    .prologue
    .line 4008
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(I)V

    .line 4010
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserStateLocked personaHandle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 4015
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v4, :cond_0

    .line 4016
    const-string v5, "PersonaManagerService"

    const-string v6, "removeUserStateLocked no personaInfo for this persona"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    :goto_0
    return-void

    .line 4019
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 4020
    invoke-direct {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4022
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4023
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4024
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V

    .line 4026
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v1

    .line 4027
    .local v1, "parentUserId":I
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserStateLocked parentUserId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4030
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4031
    .local v3, "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4032
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 4033
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4034
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4041
    .end local v3    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/PersonaManagerService$5;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/PersonaManagerService$5;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    const-wide/32 v7, 0xea60

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4050
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4051
    .local v2, "personaFile":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 4052
    .local v0, "atomicPersonaFile":Landroid/util/AtomicFile;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserStateLocked personaFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 4055
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->writeUsersWithPersona()V

    .line 4056
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserListLocked(I)V

    .line 4057
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 4058
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    goto/16 :goto_0
.end method

.method private savePasswordInTima20(ILjava/lang/String;)Z
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 5376
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    .line 5377
    .local v3, "timaService":Landroid/service/tima/ITimaService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5378
    .local v4, "token":J
    if-eqz v3, :cond_2

    .line 5380
    :try_start_0
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    .line 5381
    .local v0, "error":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "savePasswordInTima20 errorCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    if-nez v0, :cond_0

    .line 5384
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .line 5385
    .local v2, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v2, :cond_1

    .line 5386
    invoke-virtual {v2}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    .line 5391
    .end local v2    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5395
    .end local v0    # "error":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5397
    const/4 v6, 0x1

    .line 5400
    :goto_2
    return v6

    .line 5388
    .restart local v0    # "error":I
    .restart local v2    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    :try_start_1
    const-string v6, "PersonaManagerService"

    const-string v7, "savePasswordInTima20 Persona Info is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5392
    .end local v0    # "error":I
    .end local v2    # "pInfo":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v1

    .line 5393
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 5395
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 5399
    :cond_2
    const-string v6, "PersonaManagerService"

    const-string v7, "savePasswordInTima20 failed returning false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5400
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private scheduleTimer(IZ)V
    .locals 13
    .param p1, "personaId"    # I
    .param p2, "forceStart"    # Z

    .prologue
    .line 5750
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5751
    :try_start_0
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "scheduleTimer called: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5752
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    if-ne p2, v9, :cond_2

    .line 5753
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5755
    .local v7, "token":J
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v11, "alarm"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5756
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5757
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "personaid"

    invoke-virtual {v1, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5758
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v11, 0x263e

    const/high16 v12, 0x48000000

    invoke-static {v9, v11, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 5760
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5761
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5762
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 5763
    const/4 v9, 0x1

    if-ne p2, v9, :cond_3

    const-wide/16 v5, 0x1

    .line 5767
    .local v5, "timeoutMm":J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-lez v9, :cond_1

    .line 5768
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5769
    .local v2, "now":J
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "scheduleTimer(): force restart: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5770
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setting am scheduleTimer() timeout value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    const/4 v9, 0x3

    add-long v11, v2, v5

    invoke-virtual {v0, v9, v11, v12, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5772
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5775
    .end local v2    # "now":J
    .end local v5    # "timeoutMm":J
    :cond_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5777
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "token":J
    :cond_2
    monitor-exit v10

    .line 5778
    return-void

    .line 5763
    .restart local v0    # "am":Landroid/app/AlarmManager;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "pi":Landroid/app/PendingIntent;
    .restart local v7    # "token":J
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v5

    goto :goto_0

    .line 5777
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "token":J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private sendIntentForAdminLock(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "ownerId"    # I

    .prologue
    .line 6035
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.knox.container.admin.locked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6036
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6037
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6039
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6040
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6041
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6042
    if-eqz p1, :cond_1

    .line 6043
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6050
    :goto_0
    return-void

    .line 6046
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendIntentForRemoveContainer(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "ownerId"    # I

    .prologue
    .line 6053
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.knox.container.removed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6054
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6055
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6057
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6058
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6059
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6060
    if-eqz p1, :cond_1

    .line 6061
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6067
    :goto_0
    return-void

    .line 6064
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPersonaInfoChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 709
    return-void
.end method

.method private setKnoxAppsComponentForceDisable(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUserId"    # I

    .prologue
    .line 5241
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.KnoxAppsMainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5245
    .local v0, "componentKnoxApps":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 5246
    .local v1, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    move-result v1

    .line 5250
    const-string v2, "PersonaManagerService"

    const-string v3, "ALL KnoxApps COMPONENT_ENABLED_STATE_DISABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5251
    return-void
.end method

.method private setKnoxAppsComponentSetting(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUserId"    # I

    .prologue
    const/4 v11, 0x1

    .line 5190
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 5191
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not knox mode currentUserId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5238
    :goto_0
    return-void

    .line 5194
    :cond_0
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s knox mode currentUserId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    const-string v0, "com.sec.android.app.samsungapps"

    .line 5197
    .local v0, "SamsungAppsPKGName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 5198
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 5199
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "ro.csc.sales_code"

    const-string v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5201
    .local v7, "szSalesCode":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 5202
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5203
    if-eqz v1, :cond_2

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Samsung Updates"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5204
    const-string v8, "CHM"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5205
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentForceDisable(Landroid/content/Context;I)V

    .line 5206
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SamsungApps installed, disable knoxapps and return!! because // szSalesCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5211
    :catch_0
    move-exception v4

    .line 5212
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "PersonaManagerService"

    const-string v9, "SamsungApps Not installed..... So just return!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5209
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :try_start_1
    const-string v8, "PersonaManagerService"

    const-string v9, "SamsungApps installed, but hidden state !!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5216
    :cond_2
    new-instance v3, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.app.samsungapps"

    const-string v9, "com.sec.android.app.samsungapps.SamsungAppsMainActivity"

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5219
    .local v3, "componentSamsungApps":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.app.samsungapps"

    const-string v9, "com.sec.android.app.samsungapps.KnoxAppsMainActivity"

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5223
    .local v2, "componentKnoxApps":Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v3, v9, v11, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    move-result v6

    .line 5229
    .local v6, "result1":Z
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SamsungApps COMPONENT_ENABLED_STATE_DISABLED : 0="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    invoke-virtual {v8, v2, v11, v11, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    move-result v6

    .line 5236
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KnoxApps COMPONENT_ENABLED_STATE_ENABLED : 0="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setKnoxExists([IZ)V
    .locals 10
    .param p1, "ids"    # [I
    .param p2, "iskiosk"    # Z

    .prologue
    .line 4120
    if-eqz p1, :cond_2

    array-length v8, p1

    if-lez v8, :cond_2

    .line 4121
    const-string v0, "5"

    .line 4122
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    const-string v1, "1"

    .line 4123
    .local v1, "FLAG_PERSONA_EXISTS":Ljava/lang/String;
    const-string v2, ":"

    .line 4125
    .local v2, "SEPARATOR":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4126
    .local v7, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 4127
    const-string v8, "5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4132
    :goto_0
    move-object v3, p1

    .local v3, "arr$":[I
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget v4, v3, v5

    .line 4133
    .local v4, "i":I
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4134
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4132
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4129
    .end local v3    # "arr$":[I
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4136
    .restart local v3    # "arr$":[I
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_1
    const-string/jumbo v8, "sys.knox.exists"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v1    # "FLAG_PERSONA_EXISTS":Ljava/lang/String;
    .end local v2    # "SEPARATOR":Ljava/lang/String;
    .end local v3    # "arr$":[I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 4138
    :cond_2
    const-string/jumbo v8, "sys.knox.exists"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setTimaCompromisedState(I)V
    .locals 1
    .param p1, "personaId"    # I

    .prologue
    .line 5540
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 5541
    return-void
.end method

.method private startResetPersona(IZ)I
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "onReboot"    # Z

    .prologue
    .line 4717
    const-string v4, "PersonaManagerService"

    const-string v5, " startResetPersona is called...."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4719
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 4720
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 4721
    add-int/lit8 v2, v2, -0x1

    .line 4723
    :try_start_0
    const-string v4, "PersonaManagerService"

    const-string v5, " sending reset persona event to system observers "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4724
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v4, p1}, Landroid/content/pm/ISystemPersonaObserver;->onResetPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4725
    :catch_0
    move-exception v4

    goto :goto_0

    .line 4730
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4732
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    .line 4733
    .local v0, "actSer":Lcom/android/server/accounts/AccountManagerService;
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserReset(I)V

    .line 4734
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing recent tasks- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    .line 4736
    const/4 v3, 0x0

    .line 4737
    .local v3, "res":I
    if-nez p2, :cond_1

    .line 4739
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/PersonaManagerService$6;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/pm/PersonaManagerService$6;-><init>(Lcom/android/server/pm/PersonaManagerService;ZI)V

    invoke-interface {v4, p1, v5}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_1
    move v4, v3

    .line 4762
    :goto_2
    return v4

    .line 4753
    :catch_1
    move-exception v1

    .line 4754
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v4, -0x1

    goto :goto_2

    .line 4759
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->triggerAppUninstallationonReset(I)V

    goto :goto_1
.end method

.method private triggerAppUninstallationonReset(I)V
    .locals 11
    .param p1, "personaId"    # I

    .prologue
    .line 4768
    const-string v8, "PersonaManagerService"

    const-string v9, " Collecting restricted apps list "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4769
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 4770
    .local v7, "restrictedPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 4771
    .local v1, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    .line 4772
    .local v4, "ownerUid":I
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 4773
    .local v6, "pkgNames":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 4774
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 4775
    .local v5, "pkgName":Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4774
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4778
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 4779
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Collecting restricted apps "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    :cond_1
    invoke-direct {p0, p1, v7}, Lcom/android/server/pm/PersonaManagerService;->removeThirdPartyApksOnReset(ILjava/util/Set;)V

    .line 4783
    return-void
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5f

    .line 6087
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimHiddenVersion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6088
    const/4 v0, 0x0

    .line 6089
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6090
    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6094
    :goto_0
    return-object v0

    .line 6092
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private updateContainerOnlyApks(Landroid/content/pm/PersonaInfo;)V
    .locals 13
    .param p1, "pi"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 2639
    if-nez p1, :cond_1

    .line 2711
    :cond_0
    :goto_0
    return-void

    .line 2643
    :cond_1
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateContainerOnlyApks for ContainerId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2646
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 2647
    .local v3, "info":Landroid/content/pm/PersonaInfo;
    if-nez v3, :cond_2

    .line 2648
    monitor-exit v10

    goto :goto_0

    .line 2652
    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2650
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    :cond_2
    const/4 v9, 0x1

    :try_start_1
    iput-boolean v9, v3, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 2651
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v11, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2652
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2653
    const/4 v6, -0x1

    .line 2657
    .local v6, "updateResult":I
    :try_start_2
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update handler apk"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const-string v2, "/system/container/KnoxSecureHandler.apk"

    .line 2659
    .local v2, "handlerApk":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v2}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2660
    if-gez v6, :cond_3

    .line 2661
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_3
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update setup wizard apk"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    const-string v8, "/system/container/ContainerAgent2.apk"

    .line 2667
    .local v8, "wizardApk":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v8}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2668
    if-gez v6, :cond_4

    .line 2669
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :cond_4
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update application knox switcher"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    const-string v0, "/system/container/KnoxSwitcher.apk"

    .line 2675
    .local v0, "KnoxSwitcherApk":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v0}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2676
    if-gez v6, :cond_5

    .line 2677
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_5
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update application shortcutsms"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    const-string v5, "/system/container/ShortcutSms.apk"

    .line 2683
    .local v5, "shortcutsmsApk":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v5}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2684
    if-gez v6, :cond_6

    .line 2685
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    :cond_6
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update verifier"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    const-string v7, "/system/container/KnoxPackageVerifier.apk"

    .line 2691
    .local v7, "verifier":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v7}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2692
    if-gez v6, :cond_7

    .line 2693
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2696
    :cond_7
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2697
    :try_start_3
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 2698
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    if-nez v3, :cond_a

    .line 2699
    monitor-exit v10

    goto/16 :goto_0

    .line 2703
    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 2701
    .end local v0    # "KnoxSwitcherApk":Ljava/lang/String;
    .end local v2    # "handlerApk":Ljava/lang/String;
    .end local v5    # "shortcutsmsApk":Ljava/lang/String;
    .end local v7    # "verifier":Ljava/lang/String;
    .end local v8    # "wizardApk":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    :cond_8
    const/4 v11, 0x0

    :try_start_4
    iput-boolean v11, v3, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 2702
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v12, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2703
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2704
    iget-boolean v10, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    if-eqz v10, :cond_9

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v10

    if-nez v10, :cond_9

    .line 2705
    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    aput v11, v4, v10

    .line 2706
    .local v4, "personaIds":[I
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2708
    .local v1, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->softStartPersonas([I)Z

    .line 2696
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "personaIds":[I
    :cond_9
    throw v9

    :catchall_2
    move-exception v9

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2697
    :try_start_5
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v12, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 2698
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    if-nez v3, :cond_8

    .line 2699
    monitor-exit v10

    goto/16 :goto_0

    .line 2703
    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v9

    .line 2701
    .restart local v0    # "KnoxSwitcherApk":Ljava/lang/String;
    .restart local v2    # "handlerApk":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v5    # "shortcutsmsApk":Ljava/lang/String;
    .restart local v7    # "verifier":Ljava/lang/String;
    .restart local v8    # "wizardApk":Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    :try_start_6
    iput-boolean v9, v3, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 2702
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v11, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2703
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2704
    iget-boolean v9, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2705
    const/4 v9, 0x1

    new-array v4, v9, [I

    const/4 v9, 0x0

    iget v10, p1, Landroid/content/pm/PersonaInfo;->id:I

    aput v10, v4, v9

    .line 2706
    .restart local v4    # "personaIds":[I
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2708
    .restart local v1    # "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->softStartPersonas([I)Z

    goto/16 :goto_0
.end method

.method private updateUserApk(ILjava/lang/String;)I
    .locals 12
    .param p1, "personaId"    # I
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 2714
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 2715
    .local v2, "apkUri":Landroid/net/Uri;
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUserApk: User id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; Apk Path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; Apk Uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    const/4 v9, 0x0

    .line 2717
    .local v9, "packageAlreadyInstalled":Z
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    monitor-enter v11

    .line 2718
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 2719
    const/16 v4, 0x82

    .line 2720
    .local v4, "installFlags":I
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->installPackageForPersonaWithVerificationAndEncryption(ILandroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 2721
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "updateUserApk: installPackageForPersonaWithVerificationAndEncryption  returns "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2723
    :try_start_1
    const-string v0, "PersonaManagerService"

    const-string v1, " calling mPackageInstallObserver  wait "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const-wide/32 v5, 0x2bf20

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 2725
    const-string v0, "PersonaManagerService"

    const-string v1, "mPackageInstallObserver wait returns"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2727
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failure to install package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " package manager result code is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2728
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v10

    .line 2736
    :goto_0
    return v0

    .line 2730
    :cond_0
    :try_start_3
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(PMS) Successfully updated apk : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2731
    const/4 v0, 0x0

    :try_start_4
    monitor-exit v11

    goto :goto_0

    .line 2738
    .end local v4    # "installFlags":I
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 2733
    .restart local v4    # "installFlags":I
    :catch_0
    move-exception v8

    .line 2734
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v0, "PersonaManagerService"

    const-string v1, "Package installPackageForPersonaWithVerificationAndEncryption  wait error "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2736
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v10

    goto :goto_0
.end method

.method private updateUserIdsLocked()V
    .locals 9

    .prologue
    .line 4086
    const/4 v5, 0x0

    .line 4087
    .local v5, "num":I
    const/4 v1, 0x0

    .line 4088
    .local v1, "isKioskContainer":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 4089
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    iget-boolean v7, v7, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v7, :cond_0

    .line 4090
    add-int/lit8 v5, v5, 0x1

    .line 4088
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4093
    :cond_1
    new-array v4, v5, [I

    .line 4094
    .local v4, "newUsers":[I
    const/4 v2, 0x0

    .line 4095
    .local v2, "n":I
    const/4 v0, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 4096
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    .line 4097
    .local v6, "pi":Landroid/content/pm/PersonaInfo;
    iget-boolean v7, v6, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v7, :cond_2

    .line 4098
    iget-boolean v7, v6, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    or-int/2addr v1, v7

    .line 4099
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "n":I
    .local v3, "n":I
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v4, v2

    move v2, v3

    .line 4095
    .end local v3    # "n":I
    .restart local v2    # "n":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4102
    .end local v6    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_3
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    .line 4104
    if-nez v2, :cond_4

    .line 4105
    const-string/jumbo v7, "sys.knox.exists"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    :goto_2
    return-void

    .line 4107
    :cond_4
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    invoke-direct {p0, v7, v1}, Lcom/android/server/pm/PersonaManagerService;->setKnoxExists([IZ)V

    goto :goto_2
.end method

.method private upgradeIfNecessary()V
    .locals 0

    .prologue
    .line 1030
    return-void
.end method

.method private writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V
    .locals 15
    .param p1, "personaId"    # I
    .param p2, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6166
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 6167
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 6169
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6170
    .local v9, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6171
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 6172
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 6173
    :cond_0
    const-string v12, "PersonaManagerService"

    const-string v13, "Empty list passed."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 6176
    .restart local v4    # "file":Ljava/io/File;
    .restart local v9    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v12

    if-nez v12, :cond_3

    .line 6177
    const-string v12, "PersonaManagerService"

    const-string v13, "Error creating app type file."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6203
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 6204
    .local v7, "ioe":Ljava/io/IOException;
    :goto_1
    const-string v12, "PersonaManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error writing app type list info "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6205
    if-eqz v1, :cond_1

    .line 6206
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 6181
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v9    # "path":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6182
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 6183
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6185
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 6186
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v12, "utf-8"

    invoke-interface {v11, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6187
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6188
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 6190
    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 6191
    const/4 v12, 0x0

    const-string v13, "appType"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 6193
    .local v8, "packages":Ljava/lang/StringBuilder;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 6194
    .local v10, "pkg":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6195
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6203
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "packages":Ljava/lang/StringBuilder;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    goto :goto_1

    .line 6197
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v2    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "packages":Ljava/lang/StringBuilder;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v11, v12, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6198
    const/4 v12, 0x0

    const-string v13, "appType"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6201
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "packages":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 6202
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 6208
    .end local v2    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    goto/16 :goto_0
.end method

.method private writeBitmapLocked(Landroid/content/pm/PersonaInfo;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "info"    # Landroid/content/pm/PersonaInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 793
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    iget v5, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 794
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "photo.png"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 795
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 796
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 797
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 801
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 802
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 812
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v1

    .line 810
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "PersonaManagerService"

    const-string v5, "Error setting photo for user "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 806
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private writeUserListLocked(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 1187
    const/4 v2, 0x0

    .line 1188
    .local v2, "fos":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1192
    :cond_0
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1194
    .local v4, "mPersonaIdsForUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUserListLocked AtomicFile PERSONALIST"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "personalist.xml"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    .local v5, "personaListFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1197
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File does not exists, creating it "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1200
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error creating file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :cond_1
    :goto_1
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1210
    .local v8, "userListFile":Landroid/util/AtomicFile;
    :try_start_1
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1211
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1214
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1215
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v6, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1216
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1217
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1219
    const/4 v9, 0x0

    const-string/jumbo v10, "users"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1220
    const/4 v9, 0x0

    const-string v10, "nextSerialNumber"

    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1221
    const/4 v9, 0x0

    const-string/jumbo v10, "version"

    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1223
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 1224
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    .line 1225
    .local v7, "user":Landroid/content/pm/PersonaInfo;
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1226
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1227
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1223
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1202
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "user":Landroid/content/pm/PersonaInfo;
    .end local v8    # "userListFile":Landroid/util/AtomicFile;
    :catch_0
    move-exception v1

    .line 1204
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1205
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error creating file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1230
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "i":I
    .restart local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "userListFile":Landroid/util/AtomicFile;
    :cond_2
    const/4 v9, 0x0

    :try_start_2
    const-string/jumbo v10, "users"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1232
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1233
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1234
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v1

    .line 1235
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1236
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUserListLocked() Error writing user list"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    .locals 13
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 1051
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUserLocked called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v1, 0x0

    .line 1054
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1057
    .local v8, "userFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1058
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1061
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1062
    .local v7, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v7, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1063
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1064
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1066
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1068
    const/4 v9, 0x0

    const-string/jumbo v10, "serialNumber"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->serialNumber:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1069
    const/4 v9, 0x0

    const-string v10, "flags"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1070
    const/4 v9, 0x0

    const-string v10, "created"

    iget-wide v11, p1, Landroid/content/pm/PersonaInfo;->creationTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1071
    const/4 v9, 0x0

    const-string v10, "lastLoggedIn"

    iget-wide v11, p1, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    const/4 v9, 0x0

    const-string v10, "lastLoggedOut"

    iget-wide v11, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1076
    const/4 v9, 0x0

    const-string v10, "personatype"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1077
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1078
    const/4 v9, 0x0

    const-string v10, "icon"

    iget-object v11, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1080
    :cond_0
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v9, :cond_1

    .line 1081
    const/4 v9, 0x0

    const-string v10, "partial"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1084
    :cond_1
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v9, :cond_2

    .line 1085
    const/4 v9, 0x0

    const-string v10, "removePersona"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    :cond_2
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v9, :cond_3

    .line 1089
    const/4 v9, 0x0

    const-string v10, "isUserManaged"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    :cond_3
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    if-eqz v9, :cond_4

    .line 1092
    const/4 v9, 0x0

    const-string v10, "isLightWeightContainer"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1095
    :cond_4
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v9, :cond_5

    .line 1096
    const/4 v9, 0x0

    const-string v10, "resetPassword"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1098
    :cond_5
    const/4 v9, 0x0

    const-string v10, "oldState"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1099
    const/4 v9, 0x0

    const-string v10, "personastate"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->state:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1100
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeUserLocked state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v10, 0x0

    const-string/jumbo v11, "superlocked"

    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "true"

    :goto_0
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1102
    const/4 v10, 0x0

    const-string v11, "fwversion"

    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-nez v9, :cond_7

    const-string v9, ""

    :goto_1
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1103
    const/4 v10, 0x0

    const-string v11, "fsMounted"

    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v9, :cond_8

    const-string/jumbo v9, "true"

    :goto_2
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1104
    const/4 v10, 0x0

    const-string v11, "kioskModeEnabled"

    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v9, :cond_9

    const-string/jumbo v9, "true"

    :goto_3
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    const/4 v10, 0x0

    const-string v11, "resetPersonaOnReboot"

    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v9, :cond_a

    const-string/jumbo v9, "true"

    :goto_4
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    const/4 v9, 0x0

    const-string v10, "personahandlername"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1107
    const/4 v9, 0x0

    const-string v10, "personahandlerpackage"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1108
    const/4 v9, 0x0

    const-string/jumbo v10, "setupapklocation"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1109
    const/4 v9, 0x0

    const-string v10, "handlerapklocation"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    const/4 v9, 0x0

    const-string v10, "adminpackagename"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1111
    const/4 v9, 0x0

    const-string v10, "adminuid"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    const/4 v9, 0x0

    const-string v10, "creatorUid"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1113
    const/4 v9, 0x0

    const-string v10, "encryptedId"

    iget-object v11, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    const/4 v9, 0x0

    const-string v10, "samsungAccount"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getInstalledPkgList()Ljava/util/List;

    move-result-object v6

    .line 1116
    .local v6, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_c

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 1117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1118
    .local v4, "packages":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1119
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1137
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packages":Ljava/lang/StringBuilder;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v3

    .line 1138
    .local v3, "ioe":Ljava/lang/Exception;
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error writing user info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1140
    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1142
    .end local v3    # "ioe":Ljava/lang/Exception;
    :goto_6
    return-void

    .line 1101
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_6
    :try_start_1
    const-string v9, "false"

    goto/16 :goto_0

    .line 1102
    :cond_7
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    goto/16 :goto_1

    .line 1103
    :cond_8
    const-string v9, "false"

    goto/16 :goto_2

    .line 1104
    :cond_9
    const-string v9, "false"

    goto/16 :goto_3

    .line 1105
    :cond_a
    const-string v9, "false"

    goto/16 :goto_4

    .line 1122
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "packages":Ljava/lang/StringBuilder;
    .restart local v6    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeUser: Installed pkg list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const/4 v9, 0x0

    const-string v10, "installedPkgList"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packages":Ljava/lang/StringBuilder;
    :cond_c
    const/4 v9, 0x0

    const-string/jumbo v10, "timaEcrytfsIndex"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    const/4 v9, 0x0

    const-string/jumbo v10, "timaPasswordIndex"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1128
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    if-nez v9, :cond_d

    const-string v9, "default"

    :goto_7
    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1131
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1135
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1136
    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_6

    .line 1130
    :cond_d
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method

.method private writeUsersWithPersona()V
    .locals 10

    .prologue
    .line 1147
    const/4 v3, 0x0

    .line 1149
    .local v3, "fos":Ljava/io/FileOutputStream;
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "writeUsersWithPersona() mUserListFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v0, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1152
    .local v0, "atomicUserListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1153
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1156
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1157
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1158
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1159
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1161
    const/4 v7, 0x0

    const-string/jumbo v8, "userswithpersona"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 1166
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1167
    .local v5, "id":Ljava/lang/Integer;
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1168
    const/4 v7, 0x0

    const-string v8, "id"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1169
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1172
    .end local v5    # "id":Ljava/lang/Integer;
    :cond_0
    const/4 v7, 0x0

    const-string/jumbo v8, "userswithpersona"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1174
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1175
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    .line 1176
    :catch_0
    move-exception v2

    .line 1177
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1178
    const-string v7, "PersonaManagerService"

    const-string/jumbo v8, "writeUsersWithPersona() Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 5272
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5289
    :cond_0
    :goto_0
    return-void

    .line 5275
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5278
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5279
    :try_start_0
    invoke-direct {p0, p3, p1}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5280
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 5281
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5283
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding pkg to list for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5284
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5285
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5287
    :cond_3
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V

    .line 5288
    monitor-exit v2

    goto :goto_0

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5254
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5268
    :cond_0
    :goto_0
    return-void

    .line 5257
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5260
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5261
    :try_start_0
    invoke-direct {p0, p3, p1}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5262
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 5263
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5265
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5266
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V

    .line 5267
    monitor-exit v2

    goto :goto_0

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4587
    const-string v1, "addLockOnImage"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4588
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4590
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4595
    :goto_0
    return-object v1

    .line 4591
    :catch_0
    move-exception v0

    .line 4592
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling Exception - PersonaPolicyManager addLockOnImage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5649
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackageToInstallWhiteList add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5650
    sget-object v0, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v0}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5651
    return-void
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5066
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminLockPersona : persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5069
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-nez v1, :cond_0

    .line 5070
    const-string v3, "PersonaManagerService"

    const-string v4, "Persona Id don\'t exist."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v2

    .line 5074
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    iget-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    if-eqz v3, :cond_2

    .line 5075
    :cond_1
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminLockPersona current state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5079
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v0

    .line 5080
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute adminLockPersona. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5078
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_2
    const/16 v3, 0x8

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5083
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public adminUnLockPersona(I)Z
    .locals 9
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 5088
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adminUnLockPersona : persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5090
    const/4 v4, 0x0

    .line 5092
    .local v4, "retVal":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .line 5093
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v2, :cond_0

    iget-boolean v6, v2, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    if-eqz v6, :cond_1

    .line 5094
    :cond_0
    const-string v6, "PersonaManagerService"

    const-string v7, "PersonaId don\'t exist"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5116
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v5

    .line 5097
    .restart local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_1
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adminUnLockPersona state - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5098
    iget v5, v2, Landroid/content/pm/PersonaInfo;->state:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 5099
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->handleSuperUnlockPersona(Landroid/content/pm/PersonaInfo;)Z

    move-result v4

    .line 5101
    :cond_2
    if-eqz v4, :cond_3

    .line 5102
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5104
    const/4 v5, 0x1

    new-array v3, v5, [I

    const/4 v5, 0x0

    aput p1, v3, v5

    .line 5105
    .local v3, "personaIds":[I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5107
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->softStartPersonas([I)Z

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personaIds":[I
    :cond_3
    :goto_1
    move v5, v4

    .line 5116
    goto :goto_0

    .line 5109
    .restart local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_4
    const-string v5, "PersonaManagerService"

    const-string v6, "Skipped softStartPersonas for Kiosk container."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5112
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v1

    .line 5113
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 5114
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to execute adminUnLockPersona. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearAppListForPersona(Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5988
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAppListForPersona for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " persona id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5989
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5990
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V

    .line 5991
    monitor-exit v1

    .line 5992
    return-void

    .line 5991
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 35
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "handlerApkUri"    # Landroid/net/Uri;
    .param p8, "setupWizardApkUri"    # Landroid/net/Uri;

    .prologue
    .line 1853
    const-string v6, "createPersona"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1855
    const/4 v15, -0x1

    .local v15, "createResult":I
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 1858
    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/PersonaManagerService;->checkCreatePersonaParameters(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v15

    .line 1859
    if-gez v15, :cond_0

    move/from16 v19, v15

    .line 2168
    :goto_0
    return v19

    .line 1863
    :cond_0
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " createPersona parameters are  "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "\n admin "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "\n handlerApkUri "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "\n setupWizardApkUri "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1870
    .local v10, "creatorUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1872
    .local v17, "ident":J
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " Uid of creator is "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1879
    .local v9, "creatorUserId":I
    if-eqz v9, :cond_1

    .line 1880
    const-string v6, "PersonaManagerService"

    const-string v7, "\n Only Admin User can create Persona.\n "

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const/16 v19, -0x1

    goto :goto_0

    .line 1885
    :cond_1
    const-string v13, ""

    .line 1886
    .local v13, "adminPackageName":Ljava/lang/String;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "creating persona with NAME:"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1891
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1892
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1894
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isPersonaLimitReachedLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v19, -0x3f4

    monitor-exit v32
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v30
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2164
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1895
    :cond_2
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getNextAvailableIdLocked()I

    move-result v5

    .line 1896
    .local v5, "personaId":I
    const/4 v8, 0x0

    .line 1897
    .local v8, "personaflags":I
    const-wide/16 v6, 0x2

    and-long v6, v6, p3

    const-wide/16 v33, 0x2

    cmp-long v6, v6, v33

    if-nez v6, :cond_3

    .line 1898
    or-int/lit8 v8, v8, 0x20

    .line 1899
    :cond_3
    const-wide/16 v6, 0x4

    and-long v6, v6, p3

    const-wide/16 v33, 0x4

    cmp-long v6, v6, v33

    if-nez v6, :cond_4

    .line 1900
    or-int/lit8 v8, v8, 0x40

    .line 1902
    :cond_4
    const-wide/16 v6, 0x100

    and-long v6, v6, p3

    const-wide/16 v33, 0x100

    cmp-long v6, v6, v33

    if-nez v6, :cond_5

    .line 1903
    or-int/lit16 v8, v8, 0x100

    .line 1908
    :cond_5
    new-instance v4, Landroid/content/pm/PersonaInfo;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PersonaInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 1909
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1910
    .local v28, "userPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    iput v6, v4, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 1911
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaIdentificationGenerator;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 1912
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 1913
    const-wide/16 v6, 0x80

    and-long v6, v6, p3

    const-wide/16 v33, 0x80

    cmp-long v6, v6, v33

    if-nez v6, :cond_9

    .line 1914
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 1917
    :goto_1
    const-wide/16 v6, 0x400

    and-long v6, v6, p3

    const-wide/16 v33, 0x400

    cmp-long v6, v6, v33

    if-nez v6, :cond_a

    .line 1918
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 1921
    :goto_2
    const-wide/16 v6, 0x200

    and-long v6, v6, p3

    const-wide/16 v33, 0x200

    cmp-long v6, v6, v33

    if-nez v6, :cond_b

    .line 1922
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 1927
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 1928
    .local v21, "now":J
    const-wide v6, 0xdc46c32800L

    cmp-long v6, v21, v6

    if-lez v6, :cond_c

    .end local v21    # "now":J
    :goto_4
    move-wide/from16 v0, v21

    iput-wide v0, v4, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 1929
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 1930
    invoke-virtual/range {p8 .. p8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PersonaInfo;->setSetupWizardApkLocation(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PersonaInfo;->setHandlerApkLocation(Ljava/lang/String;)V

    .line 1933
    const-wide/16 v6, 0x40

    and-long v6, v6, p3

    const-wide/16 v33, 0x40

    cmp-long v6, v6, v33

    if-eqz v6, :cond_6

    .line 1935
    const-string v6, "PersonaManagerService"

    const-string v7, " creating persona FLAG_ADMIN_TYPE_NONE is not set "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1937
    if-eqz v13, :cond_6

    .line 1938
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "creating persona adminPackageName is "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    invoke-virtual {v4, v13}, Landroid/content/pm/PersonaInfo;->setAdminPackageName(Ljava/lang/String;)V

    .line 1942
    :cond_6
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1943
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "personaType: "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "persona Handler APK: "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "persona Setup Wizard: "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    if-eqz p5, :cond_d

    .line 1947
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setType(Ljava/lang/String;)V

    .line 1951
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1952
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V

    .line 1954
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1955
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "found previous persona(s) for user "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1957
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1969
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1970
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->setEcryptAndPasswordIndex(Landroid/content/pm/PersonaInfo;)V

    .line 1974
    const-string v6, "PersonaManagerService"

    const-string v7, "Writing to xml"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->writeUsersWithPersona()V

    .line 1976
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/PersonaManagerService;->writeUserListLocked(I)V

    .line 1977
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 1978
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdir()Z

    .line 1981
    sget-object v6, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v6}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    .line 1982
    monitor-exit v32
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1983
    :try_start_7
    monitor-exit v31
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1985
    :try_start_8
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1986
    const-string v6, "persona_file_system"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-static {v5, v6, v7, v0}, Lcom/android/server/pm/HandlerCacheManager;->registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1988
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v31

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v6, v5, v0, v7, v1}, Lcom/sec/knox/container/util/KnoxFileHandler;->createPartition(ILjava/lang/String;ZI)Z

    move-result v27

    .line 1989
    .local v27, "status":Z
    if-eqz v27, :cond_11

    .line 1990
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v31

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v5, v7, v0, v1}, Lcom/sec/knox/container/util/KnoxFileHandler;->mount(ILjava/lang/String;ZI)Z

    move-result v20

    .line 1991
    .local v20, "mountStatus":Z
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CreatePersona : mountStatus "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1992
    if-nez v20, :cond_f

    .line 1993
    const/16 v19, -0x3f3

    :try_start_a
    monitor-exit v30
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2164
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1916
    .end local v20    # "mountStatus":Z
    .end local v27    # "status":Z
    :cond_9
    const/4 v6, 0x0

    :try_start_b
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    goto/16 :goto_1

    .line 1982
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v5    # "personaId":I
    .end local v8    # "personaflags":I
    .end local v28    # "userPath":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v32
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v6

    .line 1983
    :catchall_1
    move-exception v6

    monitor-exit v31
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v6

    .line 2162
    :catchall_2
    move-exception v6

    monitor-exit v30
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2164
    :catchall_3
    move-exception v6

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1920
    .restart local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .restart local v5    # "personaId":I
    .restart local v8    # "personaflags":I
    .restart local v28    # "userPath":Ljava/io/File;
    :cond_a
    const/4 v6, 0x0

    :try_start_f
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    goto/16 :goto_2

    .line 1924
    :cond_b
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    goto/16 :goto_3

    .line 1928
    .restart local v21    # "now":J
    :cond_c
    const-wide/16 v21, 0x0

    goto/16 :goto_4

    .line 1949
    .end local v21    # "now":J
    :cond_d
    const-string v6, "default"

    invoke-virtual {v4, v6}, Landroid/content/pm/PersonaInfo;->setType(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1963
    :cond_e
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "creating new persona list for user "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1965
    .local v23, "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_6

    .line 1995
    .end local v23    # "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "mountStatus":Z
    .restart local v27    # "status":Z
    :cond_f
    const/4 v6, 0x1

    :try_start_10
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isFsMounted:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2008
    .end local v20    # "mountStatus":Z
    .end local v27    # "status":Z
    :cond_10
    :try_start_11
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2009
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 2010
    :try_start_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->installDefaultApplications(ILjava/util/List;)Z

    .line 2011
    monitor-exit v31
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 2012
    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 2013
    const/4 v6, 0x0

    :try_start_15
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2014
    const/4 v6, 0x4

    iput v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 2015
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 2016
    :try_start_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2017
    const-string v6, "PersonaManagerService"

    const-string/jumbo v31, "writeUserLocked called "

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2019
    const-string v6, "PersonaManagerService"

    const-string/jumbo v31, "updateUserIdsLocked called "

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2021
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 2024
    const/16 v19, -0x1

    .line 2027
    .local v19, "installationResult":I
    :try_start_17
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->installAdminApk(IJLjava/lang/String;)I

    move-result v19

    .line 2029
    if-gez v19, :cond_12

    .line 2031
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2032
    const-string v6, "PersonaManagerService"

    const-string v7, "Error Create Persona Installing Admin Apk"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    monitor-exit v30
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 2164
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1998
    .end local v19    # "installationResult":I
    .restart local v27    # "status":Z
    :cond_11
    :try_start_18
    const-string v6, "PersonaManagerService"

    const-string v7, "Creation failed due to createPartition error response"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1999
    const/16 v19, -0x3f3

    :try_start_19
    monitor-exit v30
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 2164
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2002
    .end local v27    # "status":Z
    :catch_0
    move-exception v16

    .line 2003
    .local v16, "e":Ljava/lang/Exception;
    :try_start_1a
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to mount file system. "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const/16 v19, -0x3f3

    monitor-exit v30
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 2164
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2011
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v6

    :try_start_1b
    monitor-exit v31
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :try_start_1c
    throw v6

    .line 2012
    :catchall_5
    move-exception v6

    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :try_start_1d
    throw v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 2021
    :catchall_6
    move-exception v6

    :try_start_1e
    monitor-exit v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    :try_start_1f
    throw v6

    .line 2036
    .restart local v19    # "installationResult":I
    :cond_12
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "--- Installing Handler Apk --"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    const/16 v19, -0x1

    .line 2039
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    const/16 v7, 0x67

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/PersonaManagerService;->installPackageUriForPersona(IILandroid/net/Uri;)I

    move-result v19

    .line 2041
    if-gez v19, :cond_13

    .line 2043
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2044
    const-string v6, "PersonaManagerService"

    const-string v7, "Error Create Persona Installing Handler Apk"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    monitor-exit v30
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 2164
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2050
    :cond_13
    :try_start_20
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 2052
    const/16 v19, -0x1

    .line 2053
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    const/16 v7, 0x68

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/PersonaManagerService;->installPackageUriForPersona(IILandroid/net/Uri;)I

    move-result v19

    .line 2055
    if-gez v19, :cond_14

    .line 2056
    const-string v6, "PersonaManagerService"

    const-string v7, "Error Create Persona Installing SetupWizard Apk"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2058
    monitor-exit v30
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 2164
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2062
    :cond_14
    :try_start_21
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v6, :cond_15

    .line 2070
    :cond_15
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    if-nez v6, :cond_16

    .line 2071
    const-string v6, "PersonaManagerService"

    const-string v7, "install application knox switcher"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    new-instance v11, Ljava/io/File;

    const-string v6, "/system/container/KnoxSwitcher.apk"

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2073
    .local v11, "KnoxSwitcherApk":Ljava/io/File;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    .line 2076
    .end local v11    # "KnoxSwitcherApk":Ljava/io/File;
    :cond_16
    const-string v6, "PersonaManagerService"

    const-string v7, "install application shortcutsms"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    new-instance v26, Ljava/io/File;

    const-string v6, "/system/container/ShortcutSms.apk"

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2078
    .local v26, "shortcutsmsApk":Ljava/io/File;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    .line 2080
    const-string v6, "PersonaManagerService"

    const-string v7, "install verifier"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    new-instance v29, Ljava/io/File;

    const-string v6, "/system/container/KnoxPackageVerifier.apk"

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2082
    .local v29, "verifier":Ljava/io/File;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    .line 2084
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->registerHandlerForPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2086
    if-eqz v4, :cond_17

    .line 2087
    new-instance v12, Landroid/content/Intent;

    const-string v6, "android.intent.action.USER_ADDED"

    invoke-direct {v12, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2088
    .local v12, "addedIntent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.user_handle"

    iget v7, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2089
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v31, "android.permission.MANAGE_USERS"

    move-object/from16 v0, v31

    invoke-virtual {v6, v12, v7, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2092
    .end local v12    # "addedIntent":Landroid/content/Intent;
    :cond_17
    const-string v6, "PersonaManagerService"

    const-string v7, "activateAdmin called "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const/16 v25, -0x1

    .line 2094
    .local v25, "result":I
    const-wide/16 v6, 0x40

    and-long v6, v6, p3

    const-wide/16 v31, 0x40

    cmp-long v6, v6, v31

    if-eqz v6, :cond_1a

    .line 2095
    const-string v6, "PersonaManagerService"

    const-string v7, "calling activate Admin as FLAG_ADMIN_TYPE_NONE is not set "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->activateAdmin(Landroid/content/pm/PersonaInfo;JLjava/lang/String;)I

    move-result v25

    .line 2098
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "activateAdmin returns "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    if-gez v25, :cond_18

    .line 2101
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 2102
    const/4 v6, 0x1

    :try_start_22
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2103
    const/4 v6, 0x4

    iput v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 2104
    const-string v6, "PersonaManagerService"

    const-string/jumbo v31, "writeUserLocked called "

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2106
    const-string v6, "PersonaManagerService"

    const-string/jumbo v31, "updateUserIdsLocked called "

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2108
    const-string v6, "PersonaManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "activateAdmin fails "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const-string v6, "PersonaManagerService"

    const-string v31, "Error Create Persona activating Admin fails"

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const/16 v19, -0x3f1

    monitor-exit v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .end local v19    # "installationResult":I
    :try_start_23
    monitor-exit v30
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 2164
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2111
    :catchall_7
    move-exception v6

    :try_start_24
    monitor-exit v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :try_start_25
    throw v6

    .line 2114
    .restart local v19    # "installationResult":I
    :cond_18
    const/4 v14, -0x1

    .line 2115
    .local v14, "adminUid":I
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v6, v1, v2, v7}, Lcom/android/server/pm/PersonaManagerService;->getAdminUid(IJLjava/lang/String;)I

    move-result v14

    .line 2117
    invoke-virtual {v4, v14}, Landroid/content/pm/PersonaInfo;->setAdminUid(I)V

    .line 2119
    const-wide/16 v6, 0x8

    and-long v6, v6, p3

    const-wide/16 v31, 0x8

    cmp-long v6, v6, v31

    if-nez v6, :cond_1b

    .line 2123
    if-gez v14, :cond_19

    .line 2125
    const-string v6, "PersonaManagerService"

    const-string v7, "Admin Uid not proper"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const/16 v19, -0x3f1

    monitor-exit v30
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    .line 2164
    .end local v19    # "installationResult":I
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2130
    .restart local v19    # "installationResult":I
    :cond_19
    :try_start_26
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " calling  setCreatorUid "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    invoke-virtual {v4, v14}, Landroid/content/pm/PersonaInfo;->setCreatorUid(I)V

    .line 2133
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " after setCreatorUid "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    .end local v14    # "adminUid":I
    :cond_1a
    :goto_7
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2146
    const/4 v6, 0x1

    iput v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 2147
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    .line 2148
    :try_start_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2149
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2150
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2151
    monitor-exit v7
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    .line 2155
    :try_start_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    new-instance v7, Landroid/content/pm/PersonaEvent;

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-direct {v7, v0}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaStateManagerService;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_1
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    .line 2162
    :goto_8
    :try_start_29
    monitor-exit v30
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    .line 2164
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2166
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " returning from createPersona writeUserLocked "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v19, v0

    goto/16 :goto_0

    .line 2135
    .restart local v14    # "adminUid":I
    :cond_1b
    :try_start_2a
    const-string v6, "PersonaManagerService"

    const-string v7, " Not transferring ownership as FLAG_CREATOR_SELF_DESTROY is not set"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    goto :goto_7

    .line 2151
    .end local v14    # "adminUid":I
    :catchall_8
    move-exception v6

    :try_start_2b
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_8

    :try_start_2c
    throw v6

    .line 2156
    :catch_1
    move-exception v24

    .line 2157
    .local v24, "re":Landroid/os/RemoteException;
    const-string v6, "PersonaManagerService"

    const-string v7, "Unable to postEvent"

    move-object/from16 v0, v24

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    goto :goto_8
.end method

.method public disablePersonaKeyGuard(I)Z
    .locals 11
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5782
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .line 5784
    .local v2, "pInfo":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_1

    .line 5815
    :cond_0
    :goto_0
    return v6

    .line 5788
    :cond_1
    iget-boolean v8, v2, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-ne v8, v7, :cond_2

    .line 5789
    const-string v6, "PersonaManagerService"

    const-string v8, "disablePersonaKeyGuard superLocked."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 5790
    goto :goto_0

    .line 5792
    :cond_2
    const/4 v3, 0x0

    .line 5793
    .local v3, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const-string v8, "persona_state"

    invoke-static {p1, v8}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 5794
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_3

    .line 5795
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v3

    .line 5798
    :cond_3
    if-eqz v3, :cond_4

    .line 5799
    :try_start_0
    new-instance v8, Landroid/content/pm/PersonaEvent;

    const/16 v9, 0xe

    invoke-direct {v8, v9}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v3, v8}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v5

    .line 5800
    .local v5, "state":I
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disablePersonaKeyGuard() state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5801
    const/4 v8, -0x1

    if-eq v8, v5, :cond_0

    .line 5802
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5803
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 5804
    const/4 v8, 0x1

    iput v8, v1, Landroid/os/Message;->arg2:I

    .line 5805
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5806
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/android/server/pm/HandlerCacheManager;->onKeyGuardStateChanged(IZ)V

    move v6, v7

    .line 5807
    goto :goto_0

    .line 5810
    .end local v1    # "msg":Landroid/os/Message;
    .end local v5    # "state":I
    :cond_4
    const-string v7, "PersonaManagerService"

    const-string v8, "disablePersonaKeyGuard() personaStateManagerService is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5812
    :catch_0
    move-exception v4

    .line 5813
    .local v4, "re":Landroid/os/RemoteException;
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public enablePersonaKeyGuard(I)Z
    .locals 10
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 5821
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5823
    .local v1, "pInfo":Landroid/content/pm/PersonaInfo;
    if-nez v1, :cond_1

    .line 5852
    :cond_0
    :goto_0
    return v5

    .line 5827
    :cond_1
    iget-boolean v7, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-ne v7, v6, :cond_2

    .line 5828
    const-string v5, "PersonaManagerService"

    const-string v7, "enablePersonaKeyGuard superLocked."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5829
    iget v5, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->setResetPasswordState(IZ)V

    move v5, v6

    .line 5830
    goto :goto_0

    .line 5833
    :cond_2
    const/4 v2, 0x0

    .line 5834
    .local v2, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const-string v7, "persona_state"

    invoke-static {p1, v7}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 5835
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_3

    .line 5836
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    .line 5839
    :cond_3
    if-eqz v2, :cond_4

    .line 5840
    :try_start_0
    new-instance v7, Landroid/content/pm/PersonaEvent;

    const/16 v8, 0xf

    invoke-direct {v7, v8}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v2, v7}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v4

    .line 5841
    .local v4, "state":I
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enablePersonaKeyGuard() state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5842
    const/4 v7, -0x1

    if-eq v7, v4, :cond_0

    .line 5843
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Lcom/android/server/pm/HandlerCacheManager;->onKeyGuardStateChanged(IZ)V

    move v5, v6

    .line 5844
    goto :goto_0

    .line 5847
    .end local v4    # "state":I
    :cond_4
    const-string v6, "PersonaManagerService"

    const-string v7, "enablePersonaKeyGuard() personaStateManagerService is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5849
    :catch_0
    move-exception v3

    .line 5850
    .local v3, "re":Landroid/os/RemoteException;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exists(I)Z
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 680
    const-string v0, "exists"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 681
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    monitor-exit v1

    .line 685
    :goto_0
    return v0

    .line 684
    :cond_0
    monitor-exit v1

    .line 685
    const/4 v0, 0x0

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method finishRemoveUser(I)V
    .locals 25
    .param p1, "userHandle"    # I

    .prologue
    .line 3616
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishRemoveUser is called "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 3623
    .local v17, "ident":J
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v19

    .line 3625
    .local v19, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3626
    const-string v4, "PersonaManagerService"

    const-string/jumbo v6, "unmounting and removing partitions for persona."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3628
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    .line 3629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v6

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/sec/knox/container/util/KnoxFileHandler;->removePartition(IZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3637
    :goto_0
    :try_start_2
    new-instance v15, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 3638
    .local v15, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v22

    .line 3639
    .local v22, "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v24

    .line 3640
    .local v24, "pkgNames":[Ljava/lang/String;
    if-eqz v24, :cond_1

    .line 3641
    move-object/from16 v13, v24

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v23, v13, v16

    .line 3642
    .local v23, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->sendIntentForRemoveContainer(Ljava/lang/String;II)V

    .line 3641
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 3630
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v15    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v16    # "i$":I
    .end local v20    # "len$":I
    .end local v22    # "ownerUid":I
    .end local v23    # "pkgName":Ljava/lang/String;
    .end local v24    # "pkgNames":[Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 3631
    .local v14, "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unmount file system. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3678
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v19    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v4

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3634
    .restart local v19    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    :try_start_3
    const-string v4, "PersonaManagerService"

    const-string v6, "Not a secure file system..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3645
    .restart local v15    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v22    # "ownerUid":I
    .restart local v24    # "pkgNames":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->sendIntentForRemoveContainer(Ljava/lang/String;II)V

    .line 3647
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 3648
    .local v21, "msg":Landroid/os/Message;
    move/from16 v0, p1

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3650
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3651
    .local v5, "addedIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.MANAGE_USERS"

    new-instance v8, Lcom/android/server/pm/PersonaManagerService$4;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PersonaManagerService$4;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3678
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3680
    return-void
.end method

.method public getAdminUidForPersona(I)I
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 2209
    const-string v1, "getAdminUidForPersona"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2210
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 2212
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 2214
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v1

    .line 2218
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
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
    const/4 v0, 0x0

    .line 5311
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5321
    :cond_0
    :goto_0
    return-object v0

    .line 5314
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5317
    const/4 v0, 0x0

    .line 5318
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5319
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5320
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentPersonaForUser(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4337
    const-string v0, "getCurrentPersonaForUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4338
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPersonaForUser() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4340
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4341
    .end local p1    # "userId":I
    :cond_0
    return p1
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5996
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisabledHomeLaunchers for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; clearList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5997
    sget-object v1, Landroid/os/PersonaManager$AppType;->DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 5998
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 5999
    sget-object v1, Landroid/os/PersonaManager$AppType;->DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->clearAppListForPersona(Ljava/lang/String;I)V

    .line 6001
    :cond_0
    return-object v0
.end method

.method public getHandlerComponentName(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1538
    const-string v4, "getHandlerComponentName"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1540
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 1541
    .local v3, "pi":Landroid/content/pm/PersonaInfo;
    if-nez v3, :cond_1

    .line 1564
    :cond_0
    :goto_0
    return-object v0

    .line 1544
    :cond_1
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v1

    .line 1545
    .local v1, "handlerProxyServiceName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1547
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1548
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->registerHandlerForPersona(Landroid/content/pm/PersonaInfo;)V

    .line 1550
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v1

    .line 1551
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1553
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1557
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1560
    const/4 v0, 0x0

    .line 1561
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1562
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getKeyguardShowState(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 6252
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get keyguard state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6253
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShown:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public getLastShortcutState(I)Z
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 6258
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLastShortcutModes:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public getNormalizedState(I)I
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 4414
    const-string v4, "getNormalizedState"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4415
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v1

    .line 4416
    .local v1, "personaState":I
    const/4 v0, -0x1

    .line 4418
    .local v0, "normalizedState":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 4420
    const-string v4, "persona_state_manager"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IPersonaStateHandler;

    .line 4423
    .local v2, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    if-eqz v2, :cond_1

    .line 4424
    :try_start_0
    invoke-interface {v2, v1}, Landroid/content/pm/IPersonaStateHandler;->mapToNormalizedState(I)I

    move-result v0

    .line 4435
    .end local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    :cond_0
    :goto_0
    return v0

    .line 4426
    .restart local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    :cond_1
    const-string v4, "PersonaManagerService"

    const-string v5, "getNormalizedState() personaStateManagerService is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4427
    move v0, v1

    goto :goto_0

    .line 4429
    :catch_0
    move-exception v3

    .line 4430
    .local v3, "re":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .locals 4
    .param p1, "personaId"    # I
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
    .line 5675
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackagesFromInstallWhiteList for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5676
    sget-object v1, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 5677
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5680
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    goto :goto_0
.end method

.method public getParentId(I)I
    .locals 4
    .param p1, "parentId"    # I

    .prologue
    .line 4353
    const-string v1, "getParentId"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4354
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParentId() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    const-string v1, "read users"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4359
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4360
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4361
    .local v0, "myInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 4362
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result p1

    .line 4366
    .end local v0    # "myInfo":Landroid/content/pm/PersonaInfo;
    .end local p1    # "parentId":I
    :cond_0
    return p1
.end method

.method public getParentUserForCurrentPersona()I
    .locals 2

    .prologue
    .line 550
    const-string v1, "getParentUserForCurrentPersona"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 551
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 552
    .local v0, "currentPersona":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    .line 558
    .end local v0    # "currentPersona":I
    :cond_0
    return v0
.end method

.method public getParentUserForPersona(I)I
    .locals 1
    .param p1, "personaId"    # I

    .prologue
    .line 562
    const-string v0, "getParentUserForPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result p1

    .line 570
    .end local p1    # "personaId":I
    :cond_0
    return p1
.end method

.method public getPasswordHint()Ljava/lang/String;
    .locals 8

    .prologue
    .line 6098
    const-string v5, "PersonaManagerService"

    const-string v6, "getPasswordHint"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6100
    const-string v0, ""

    .line 6101
    .local v0, "hint":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 6102
    .local v2, "personaId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6103
    .local v3, "token":J
    const/4 v1, 0x0

    .line 6104
    .local v1, "password":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    if-eqz v5, :cond_1

    .line 6105
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getPasswordFromTima20(I)Ljava/lang/String;

    move-result-object v1

    .line 6108
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6109
    if-eqz v1, :cond_0

    .line 6110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6112
    :cond_0
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPasswordHint : password -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and personaid -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6114
    return-object v0

    .line 6107
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getPasswordFromTima(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPersonaBackgroundTime(I)J
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 4251
    const-string v0, "getPersonaBackgroundTime"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4253
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 4320
    const-string v2, "getPersonaIcon"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4321
    const-string v2, "read users"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4322
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4323
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 4324
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v3, :cond_1

    .line 4325
    :cond_0
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPersonaIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4326
    monitor-exit v2

    .line 4331
    :goto_0
    return-object v1

    .line 4328
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 4329
    monitor-exit v2

    goto :goto_0

    .line 4332
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4331
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 4837
    const-string v1, "getPersonaIdentification"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4838
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4839
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 4840
    iget-object v1, v0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 4844
    :goto_0
    return-object v1

    .line 4843
    :cond_0
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get persona identification for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaIds()[I
    .locals 2

    .prologue
    .line 821
    const-string v0, "getPersonaIds"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 822
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    monitor-exit v1

    return-object v0

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPersonaIdsLPr()[I
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    return-object v0
.end method

.method public getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 603
    const-string v0, "getPersonaInfo"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 604
    const-string v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfoLocked(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 658
    const-string v1, "getPersonaSamsungAccount"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 659
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 660
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getPersonaSamsungAccount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v1

    .line 664
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPersonaState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4441
    const-string v1, "getPersonaState"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4442
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4443
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 4444
    const-string v1, "PersonaManagerService"

    const-string v2, " getPersonaState personaInfo is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    const/4 v1, -0x1

    .line 4448
    :goto_0
    return v1

    .line 4447
    :cond_0
    const-string v1, "PersonaManagerService"

    const-string v2, " getPersonaState personaInfo is not null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    iget v1, v0, Landroid/content/pm/PersonaInfo;->state:I

    goto :goto_0
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 636
    const-string v1, "getPersonaType"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 638
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfoLocked(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 639
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v1

    .line 643
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "default"

    goto :goto_0
.end method

.method public getPersonas(Z)Ljava/util/List;
    .locals 6
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    const-string v3, "getPersonas"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 511
    const-string v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 512
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 513
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v1, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 515
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 516
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 514
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 521
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 525
    .end local v0    # "i":I
    .end local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 524
    .restart local v0    # "i":I
    .restart local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .locals 7
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4280
    const-string v3, "getPersonasForCreator"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4283
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4284
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4285
    .local v1, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 4286
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 4287
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_0

    .line 4285
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4290
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 4291
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding persona with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4298
    .end local v0    # "i":I
    .end local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4294
    .restart local v0    # "i":I
    .restart local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .restart local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Excluding persona with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4297
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getPersonasForUser(IZ)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    const-string v4, "getPersonasForUser"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 575
    const-string v4, "query user"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 576
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 578
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 579
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 580
    .local v1, "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found personas "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 582
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 583
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting personaInfo for ID  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 585
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v4, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v4, :cond_1

    .line 586
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Persona is partially created "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 590
    :cond_2
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding persona in result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 596
    .end local v0    # "i":I
    .end local v1    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 594
    .restart local v0    # "i":I
    .restart local v1    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v5

    .line 598
    .end local v0    # "i":I
    .end local v1    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :goto_2
    return-object v3

    .line 596
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    const-string v4, "PersonaManagerService"

    const-string v5, "returning null in  getPersonasForUser"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getPhoneCaller()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4378
    const-string v2, "getPhoneCaller"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4379
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 4380
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4381
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->setPhoneCaller(I)V

    .line 4385
    :goto_0
    return v1

    .line 4384
    :cond_0
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneCaller as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4385
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    goto :goto_0
.end method

.method public getScreenOffTime(I)J
    .locals 10
    .param p1, "personaId"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 4212
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getTimeToLock(I)J

    move-result-wide v0

    .line 4214
    .local v0, "timeout":J
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenOffTimeoutLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " personaid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    cmp-long v4, v0, v8

    if-lez v4, :cond_1

    .line 4217
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 4224
    :cond_0
    :goto_0
    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 4225
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenOffTimeoutLocked final: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 4226
    .end local v0    # "timeout":J
    .local v2, "timeout":J
    :goto_1
    return-wide v2

    .line 4218
    .end local v2    # "timeout":J
    .restart local v0    # "timeout":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4219
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v0

    goto :goto_0

    .line 4220
    :cond_2
    cmp-long v4, v0, v8

    if-gtz v4, :cond_0

    move-wide v2, v0

    .line 4221
    .end local v0    # "timeout":J
    .restart local v2    # "timeout":J
    goto :goto_1
.end method

.method public getSetupWizardPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 1569
    const-string v1, "getSetupWizardPath"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1570
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1571
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v1

    .line 1574
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShortcutMode(I)Z
    .locals 1
    .param p1, "personaId"    # I

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .locals 7
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    const-string v3, "getUserManagedPersonas"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 530
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 532
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v1, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 534
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 535
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 536
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona is partially created "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v3, :cond_0

    .line 540
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding persona in result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 545
    .end local v0    # "i":I
    .end local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 544
    .restart local v0    # "i":I
    .restart local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public handleHomeShow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3536
    const-string v2, "handleHomeShow"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3537
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 3538
    .local v0, "currentUser":I
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3539
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    .line 3542
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public handleSuperUnlockPersona(Landroid/content/pm/PersonaInfo;)Z
    .locals 9
    .param p1, "info"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 5120
    if-nez p1, :cond_1

    .line 5121
    const-string v4, "PersonaManagerService"

    const-string v5, "PersonaId don\'t exist"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    const/4 v3, 0x0

    .line 5150
    :cond_0
    :goto_0
    return v3

    .line 5124
    :cond_1
    const/4 v3, 0x0

    .line 5125
    .local v3, "retVal":Z
    const/4 v2, 0x2

    .line 5126
    .local v2, "newState":I
    iget v4, p1, Landroid/content/pm/PersonaInfo;->oldState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    iget v4, p1, Landroid/content/pm/PersonaInfo;->state:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_6

    .line 5127
    const/16 v2, 0x8

    .line 5131
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 5132
    .local v0, "doMount":Z
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->isSuperLockState(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5133
    const/4 v0, 0x0

    .line 5135
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 5136
    const-string v4, "PersonaManagerService"

    const-string v5, "mounting file system: super --> unlock persona called."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    iget v5, p1, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/knox/container/util/KnoxFileHandler;->mount(ILjava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 5143
    :goto_2
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mount status - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    :cond_4
    if-nez v3, :cond_5

    if-nez v0, :cond_0

    .line 5147
    :cond_5
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "super unlock: new State for persona - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    iget v4, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    goto :goto_0

    .line 5128
    .end local v0    # "doMount":Z
    :cond_6
    iget-boolean v4, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v4, :cond_2

    .line 5129
    const/4 v2, 0x5

    goto :goto_1

    .line 5139
    .restart local v0    # "doMount":Z
    :catch_0
    move-exception v1

    .line 5140
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 5141
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to do mount. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method handleWakeLockChange(ZIII)V
    .locals 4
    .param p1, "type"    # Z
    .param p2, "flag"    # I
    .param p3, "uid"    # I
    .param p4, "userid"    # I

    .prologue
    .line 2862
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 2864
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    const v1, 0xffff

    and-int/2addr v1, p2

    sparse-switch v1, :sswitch_data_0

    .line 2889
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2871
    :sswitch_1
    if-eqz v0, :cond_0

    .line 2872
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2873
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    .line 2874
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefCount in acquire : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    if-lez v1, :cond_0

    .line 2876
    invoke-direct {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V

    goto :goto_0

    .line 2879
    :cond_1
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    .line 2880
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefCount in release : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    if-nez v1, :cond_0

    .line 2882
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->refreshTimer(I)V

    goto/16 :goto_0

    .line 2864
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_1
        0x1a -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public installApplications(ILjava/util/List;)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1694
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "installApplications"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1695
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1696
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1697
    :try_start_1
    const-string v1, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " in PMS, calling PkgMgr default apps  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1699
    .local v0, "userPath":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->installApplicationsForPersonaLILPw(ILjava/io/File;Ljava/util/List;)V

    .line 1710
    const/4 v1, 0x1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 1711
    .end local v0    # "userPath":Ljava/io/File;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 1712
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method isFromApprovedInstaller(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x1

    .line 4876
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4877
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4879
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v1

    .line 4880
    .local v1, "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 4881
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4883
    .local v3, "installer":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 4885
    .local v0, "allowedPackageUid":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install package for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    if-ne p1, v0, :cond_0

    .line 4889
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowing app installation from installer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    .end local v0    # "allowedPackageUid":I
    .end local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "installer":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 4895
    .restart local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v5, "PersonaManagerService"

    const-string v6, "rejecting app installation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4896
    const/4 v5, 0x0

    goto :goto_0
.end method

.method isFromApprovedInstaller(II)Z
    .locals 9
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 4910
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4911
    .local v2, "callingUserId":I
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4913
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v1

    .line 4914
    .local v1, "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 4915
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4917
    .local v4, "installer":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v4, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 4919
    .local v0, "allowedPackageUid":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install package for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    if-ne p1, v0, :cond_0

    .line 4923
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowing app installation from installer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    .end local v0    # "allowedPackageUid":I
    .end local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "installer":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 4929
    .restart local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 4931
    const-string v6, "PersonaManagerService"

    const-string v7, "caller is system_service process...."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4935
    :cond_3
    const-string v5, "PersonaManagerService"

    const-string v6, "rejecting app installation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4936
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isInitialized(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 750
    const-string v2, "isInitialized"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 751
    const-string v2, "isInitialized"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 752
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 753
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 754
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 755
    :cond_0
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    monitor-exit v2

    .line 761
    :goto_0
    return v1

    .line 758
    :cond_1
    iget v3, v0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_2

    .line 759
    monitor-exit v2

    goto :goto_0

    .line 762
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 761
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isKioskContainerExistOnDevice()Z
    .locals 8

    .prologue
    .line 5878
    const/4 v4, 0x0

    .line 5881
    .local v4, "retVal":Z
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v3

    .line 5882
    .local v3, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_1

    .line 5884
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 5885
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v5, :cond_0

    .line 5886
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kisok mode is enabled for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5887
    const/4 v4, 0x1

    .line 5897
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1
    :goto_0
    return v4

    .line 5893
    :catch_0
    move-exception v0

    .line 5894
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 5895
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to execute isKioskModeEnabled. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isKioskModeEnabled(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 5858
    const/4 v2, 0x0

    .line 5861
    .local v2, "retVal":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5862
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-nez v1, :cond_0

    .line 5863
    const-string v3, "PersonaManagerService"

    const-string v4, "PersonaId don\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5864
    const/4 v3, 0x0

    .line 5872
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v3

    .line 5866
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    iget-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5868
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v0

    .line 5869
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 5870
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute isKioskModeEnabled. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 5872
    goto :goto_0
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5665
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageInInstallWhiteList check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5666
    sget-object v1, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/PersonaManagerService;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 5667
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5668
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 5670
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSessionExpired(I)Z
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5052
    const-string v2, "isSessionExpired"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 5053
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSessionExpired() id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 5056
    .local v0, "currentId":I
    if-ne p1, v0, :cond_0

    .line 5060
    :goto_0
    return v1

    .line 5058
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v3, p1, 0x1388

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 5060
    .local v1, "sessionExpired":Z
    :cond_1
    goto :goto_0
.end method

.method public isSetupWizardInstalled(I)Z
    .locals 8
    .param p1, "personaId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1769
    const-string v5, "isSetupWizardInstalled"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1770
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1772
    .local v1, "ident":J
    const-string v5, "PersonaManagerService"

    const-string v6, " calling getSetupWizardPath   "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSetupWizardPath(I)Ljava/lang/String;

    move-result-object v0

    .line 1774
    .local v0, "apkLocation":Ljava/lang/String;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " got apkLocation  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1777
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1778
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 1779
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1780
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1781
    const/4 v4, 0x1

    .line 1788
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 1787
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public lockPersona(I)V
    .locals 10
    .param p1, "personaId"    # I

    .prologue
    .line 5002
    const-string v5, "lockPersona"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 5004
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5048
    :cond_0
    :goto_0
    return-void

    .line 5007
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-ne p1, v5, :cond_3

    .line 5009
    const-string v5, "persona_state_manager"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IPersonaStateHandler;

    .line 5011
    .local v2, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    if-eqz v2, :cond_2

    .line 5012
    :try_start_0
    new-instance v5, Landroid/content/pm/PersonaEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v2, v5}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5016
    :catch_0
    move-exception v4

    .line 5017
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5014
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v5, "PersonaManagerService"

    const-string v6, "lockPersona() personaStateManagerService is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5022
    .end local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    :cond_3
    const/4 v2, 0x0

    .line 5023
    .restart local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const-string v5, "persona_state"

    invoke-static {p1, v5}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 5024
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_4

    .line 5025
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    .line 5029
    :cond_4
    if-eqz v2, :cond_5

    .line 5030
    :try_start_2
    new-instance v5, Landroid/content/pm/PersonaEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v2, v5}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5039
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v6, p1, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5040
    .local v1, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v6, p1, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 5041
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    .line 5042
    .local v3, "queuedUp":Z
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockPersona() queued a message to notify session expires right away? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5045
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5032
    .end local v1    # "message":Landroid/os/Message;
    .end local v3    # "queuedUp":Z
    :cond_5
    :try_start_3
    const-string v5, "PersonaManagerService"

    const-string v6, "lockPersona() personaStateManagerService is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 5034
    :catch_1
    move-exception v4

    .line 5035
    .restart local v4    # "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public makeInitialized(I)V
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    .line 732
    const-string v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 734
    const-string v1, "PersonaManagerService"

    const-string v2, "makeInitialized() NOT CHECKING PERMISSION!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 737
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v1, :cond_1

    .line 738
    :cond_0
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    monitor-exit v2

    .line 746
    :goto_0
    return-void

    .line 741
    :cond_1
    iget v1, v0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    .line 742
    iget v1, v0, Landroid/content/pm/PersonaInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 743
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 745
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 4849
    const-string v1, "markForRemoval"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4850
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4854
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4855
    .local v0, "removalIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4856
    const-string v1, "isLockRequired"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4857
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    .line 4860
    return-void
.end method

.method public needVerificationForPackage(ILjava/lang/String;)Z
    .locals 8
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1596
    const-string v5, "needVerificationForPackage"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1597
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 1688
    :cond_1
    :goto_0
    return v3

    .line 1606
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1607
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage for Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1611
    :cond_3
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const/4 v2, 0x0

    .line 1617
    .local v2, "setupWizardApkLocation":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1618
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage getting setupWizardApkLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSetupWizardPath(I)Ljava/lang/String;

    move-result-object v2

    .line 1620
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage setupWizardApkLocation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    if-nez v2, :cond_5

    .line 1623
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage setupWizardApkLocation == null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 1643
    .local v0, "handlerApkLocation":Ljava/lang/String;
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage getting handlerApkLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getHandlerApkLocation(I)Ljava/lang/String;

    move-result-object v0

    .line 1645
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage handlerApkLocation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    if-nez v0, :cond_8

    .line 1648
    const-string v3, "PersonaManagerService"

    const-string v5, "needVerificationForPackage handlerApkLocation == null "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1649
    goto/16 :goto_0

    .line 1626
    .end local v0    # "handlerApkLocation":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1627
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage setupWizardApkLocation mContext.getPackageManager()  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    if-eqz v1, :cond_4

    .line 1629
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 1630
    :cond_6
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage setupWizardApkLocation pkgInfo.packageName == null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1632
    :cond_7
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1633
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage setupWizardApkLocation return false for   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1651
    .restart local v0    # "handlerApkLocation":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    .line 1652
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1653
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage handlerApkLocation mContext.getPackageManager()  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    if-eqz v1, :cond_c

    .line 1655
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 1656
    :cond_9
    const-string v3, "PersonaManagerService"

    const-string v5, "needVerificationForPackage handlerApkLocation pkgInfo.packageName == null  "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1657
    goto/16 :goto_0

    .line 1658
    :cond_a
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1659
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage handlerApkLocation return false for   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1662
    :cond_b
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage handlerApkLocation return true for   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_c
    const-string v5, "com.sec.knox.containeragent2"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1668
    const-string v4, "PersonaManagerService"

    const-string v5, "containeragent2 return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1672
    :cond_d
    const-string v5, "com.sec.knox.switcher"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1673
    const-string v4, "PersonaManagerService"

    const-string v5, "b2bswitcher demo return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1677
    :cond_e
    const-string v5, "com.sec.knox.packageverifier"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1678
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "verifier return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1683
    :cond_f
    const-string v5, "com.sec.knox.shortcutsms"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1687
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage return true for  at the end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1688
    goto/16 :goto_0
.end method

.method public notifyKeyguardShow(IZ)V
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "isShown"    # Z

    .prologue
    .line 6232
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify keyguard show for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is shown? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6234
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v4, :cond_0

    .line 6235
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 6237
    :cond_0
    if-eqz p2, :cond_1

    const/high16 v1, 0x1010000

    .line 6238
    .local v1, "flags":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6239
    .local v2, "ident":J
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, p1, v1}, Landroid/app/StatusBarManager;->disableAsUser(II)V

    .line 6240
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6242
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShown:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6244
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.knox.keyguard.show"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6245
    .local v0, "bc":Landroid/content/Intent;
    const-string v4, "isShown"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6246
    const-string v4, "personaId"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6247
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6248
    return-void

    .line 6237
    .end local v0    # "bc":Landroid/content/Intent;
    .end local v1    # "flags":I
    .end local v2    # "ident":J
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSentinelActivityResumed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6219
    const-string v2, "PersonaManagerService"

    const-string v3, " call to onSentinelActivityResumed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6221
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 6222
    .local v0, "currentUser":I
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mBackPressed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6223
    const-string v2, "PersonaManagerService"

    const-string v3, " switch back from sentinel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6224
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    .line 6225
    const/4 v1, 0x1

    .line 6227
    :cond_0
    return v1
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .locals 5
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5952
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5953
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5954
    const-string v2, "flag"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5955
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5956
    const-string v2, "pid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5957
    const-string v2, "package"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5958
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5959
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5960
    return-void
.end method

.method public preSystemReady()V
    .locals 1

    .prologue
    .line 2559
    const-string v0, "preSystemReady"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2560
    return-void
.end method

.method public refreshTimer(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 5735
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 5736
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5737
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5738
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5740
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mHandler"    # Landroid/os/IBinder;
    .param p3, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3426
    const-string v1, "registerHandler"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3428
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PMS:: registerHandler for :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3431
    .local v0, "personaId":I
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 3432
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/HandlerCacheManager;->registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V

    .line 3434
    :cond_0
    return-void
.end method

.method public registerObserver(Landroid/content/pm/IPersonaObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3438
    const-string v1, "registerObserver"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3441
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3443
    .local v0, "personaId":I
    invoke-static {v0, p1}, Lcom/android/server/pm/HandlerCacheManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 3445
    return-void
.end method

.method public registerOutsideObserver(ILandroid/content/pm/IPersonaObserver;)V
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3449
    const-string v0, "registerOutsideObserver"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3451
    invoke-static {p1, p2}, Lcom/android/server/pm/HandlerCacheManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 3452
    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 1
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .prologue
    .line 612
    const-string v0, "registerSystemPersonaObserver"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .locals 3
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;

    .prologue
    .line 499
    const-string v0, "registerUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 500
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  PersonaManagerService.registerUser  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  size of mClients :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 5293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5307
    :cond_0
    :goto_0
    return-void

    .line 5296
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5299
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5300
    :try_start_0
    invoke-direct {p0, p3, p1}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5301
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 5302
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing pkg from list for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5303
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5304
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V

    .line 5306
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5655
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5656
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be removed as installer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5661
    :goto_0
    return-void

    .line 5659
    :cond_0
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePackageFromInstallWhiteList remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    sget-object v0, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v0}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public removePersona(I)I
    .locals 14
    .param p1, "personaHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x1

    .line 3471
    const-string v8, "removePersona"

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3476
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3477
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3478
    .local v2, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3480
    .local v1, "currentUser":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3481
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3483
    :try_start_1
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 3484
    .local v5, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz p1, :cond_0

    if-nez v5, :cond_2

    .line 3485
    :cond_0
    const/16 v7, -0x4b2

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3530
    :cond_1
    :goto_0
    return v7

    .line 3488
    :cond_2
    :try_start_3
    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " callingUid - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    const/16 v10, 0x3e8

    if-eq v0, v10, :cond_3

    .line 3490
    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v10

    if-eq v0, v10, :cond_3

    .line 3492
    const-string v7, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Only creator fo persona can remove it. Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not equal to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    const/16 v7, -0x4b3

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v8

    goto :goto_0

    .line 3512
    .end local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 3498
    .restart local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_3
    :try_start_5
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3504
    const/4 v10, 0x3

    invoke-virtual {p0, p1, v10}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 3505
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 3506
    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 3507
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3508
    .local v4, "msg":Landroid/os/Message;
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 3509
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v11, 0x3e8

    invoke-virtual {v10, v4, v11, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3511
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3512
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3515
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p1, :cond_4

    .line 3516
    const-string v8, "PersonaManagerService"

    const-string v9, " Calling handler : MSG_START_REMOVE_PERSONA_AFTER_SWITCH"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v13}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3518
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 3519
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3511
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "persona":Landroid/content/pm/PersonaInfo;
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

    .line 3524
    .restart local v4    # "msg":Landroid/os/Message;
    .restart local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_4
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stopping user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v6

    .line 3527
    .local v6, "res":I
    if-eqz v6, :cond_1

    .line 3530
    const/16 v7, -0x4b1

    goto/16 :goto_0
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .locals 10
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 5405
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5407
    const/4 v4, 0x0

    .line 5408
    .local v4, "status":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5409
    .local v2, "personaId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 5410
    .local v5, "token":J
    const/4 v1, 0x0

    .line 5411
    .local v1, "oldPassword":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    if-eqz v7, :cond_1

    .line 5412
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getPasswordFromTima20(I)Ljava/lang/String;

    move-result-object v1

    .line 5415
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5417
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetPassword : password -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and personaid -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 5420
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5421
    .local v0, "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v3

    .line 5422
    .local v3, "quality":I
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetPassword : quality -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    const/high16 v7, 0x20000

    if-lt v3, v7, :cond_3

    const/high16 v7, 0x60000

    if-gt v3, v7, :cond_3

    .line 5426
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5427
    invoke-virtual {v0, p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 5428
    const/4 v4, 0x1

    .line 5447
    .end local v0    # "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "quality":I
    :cond_0
    :goto_1
    return v4

    .line 5414
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getPasswordFromTima(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5430
    .restart local v0    # "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v3    # "quality":I
    :cond_2
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword : checkPassword is not successful"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5433
    :cond_3
    const/high16 v7, 0x10000

    if-ne v3, v7, :cond_0

    .line 5435
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5436
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 5437
    const/4 v4, 0x1

    goto :goto_1

    .line 5439
    :cond_4
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword : checkPattern is not successful"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5444
    .end local v0    # "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "quality":I
    :cond_5
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword : old password cannot be null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resetPersona(I)I
    .locals 13
    .param p1, "perId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 4625
    const-string v10, "resetPersona"

    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4629
    move v6, p1

    .line 4630
    .local v6, "personaId":I
    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetPersona :personaId-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4633
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4634
    .local v2, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4635
    .local v1, "currentUser":Ljava/lang/Integer;
    const-string v10, "PersonaManagerService"

    const-string v11, "getting handler for persona"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4639
    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 4640
    .local v5, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 4641
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4642
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetPersona : not valid persona : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    monitor-exit v10

    .line 4711
    :goto_0
    return v8

    .line 4648
    :cond_1
    const/16 v11, 0x3e8

    if-eq v0, v11, :cond_2

    .line 4649
    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v11

    if-eq v0, v11, :cond_2

    .line 4651
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Only creator fo persona can reset it. Calling uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not equal to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    monitor-exit v10

    goto :goto_0

    .line 4695
    .end local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 4682
    .restart local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v7

    .line 4687
    .local v7, "personaState":I
    const/16 v11, 0x63

    invoke-virtual {p0, v6, v11}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4695
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4699
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v6, :cond_3

    .line 4700
    const-string v10, "PersonaManagerService"

    const-string v11, " Calling handler : MSG_START_RESET_PERSONA_AFTER_SWITCH"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4702
    .local v4, "msg":Landroid/os/Message;
    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 4703
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v10, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    move v8, v9

    .line 4705
    goto :goto_0

    .line 4709
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3
    invoke-direct {p0, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I

    move-result v8

    .line 4710
    .local v8, "result":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public resetPersonaOnReboot(IZ)Z
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5904
    const/4 v2, 0x0

    .line 5906
    .local v2, "retVal":Z
    :try_start_0
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetPersonaOnReboot personaId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and enable -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5907
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5908
    const/4 v1, 0x0

    .line 5909
    .local v1, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5910
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5911
    if-nez v1, :cond_0

    .line 5912
    const-string v4, "PersonaManagerService"

    const-string v6, "resetPersonaOnReboot personaInfo is null "

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5913
    monitor-exit v5

    move v3, v2

    .line 5925
    .end local v1    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v2    # "retVal":Z
    .local v3, "retVal":I
    :goto_0
    return v3

    .line 5915
    .end local v3    # "retVal":I
    .restart local v1    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .restart local v2    # "retVal":Z
    :cond_0
    iput-boolean p2, v1, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 5916
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 5917
    const/4 v2, 0x1

    .line 5918
    monitor-exit v5

    .end local v1    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_1
    move v3, v2

    .line 5925
    .restart local v3    # "retVal":I
    goto :goto_0

    .line 5918
    .end local v3    # "retVal":I
    .restart local v1    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5921
    .end local v1    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v0

    .line 5922
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 5923
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to execute resetPersonaOnReboot. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public rollBackToPersona(I)V
    .locals 8
    .param p1, "parentId"    # I

    .prologue
    .line 4968
    const-string v5, "rollBackToPersona"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4969
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4970
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4972
    move v4, p1

    .line 4973
    .local v4, "personaId":I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4974
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4975
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4976
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() after removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4977
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4978
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() after removing still exists "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4983
    :goto_0
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4986
    .local v2, "ident":J
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4988
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityManager;->switchPersonaConditional(IZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4993
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4998
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "ident":J
    .end local v4    # "personaId":I
    :cond_0
    :goto_2
    return-void

    .line 4980
    .restart local v4    # "personaId":I
    :cond_1
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() after removing good job"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4989
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "ident":J
    :catch_0
    move-exception v1

    .line 4990
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while switching to persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4996
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ident":J
    .end local v4    # "personaId":I
    :cond_2
    const-string v5, "PersonaManagerService"

    const-string v6, "rollBackToPersona() is Ignored. Kiosk mode enabled for persona"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public rollUpToParent(I)V
    .locals 8
    .param p1, "personaId"    # I

    .prologue
    .line 4944
    const-string v5, "rollUpToParent"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4945
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollUpToParent() for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4947
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getParentId(I)I

    move-result v4

    .line 4948
    .local v4, "parentId":I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4950
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollUpToParent() to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4953
    .local v2, "ident":J
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4955
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityManager;->switchPersonaConditional(IZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4960
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4964
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "ident":J
    .end local v4    # "parentId":I
    :goto_1
    return-void

    .line 4956
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "ident":J
    .restart local v4    # "parentId":I
    :catch_0
    move-exception v1

    .line 4957
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while switching to persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4962
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ident":J
    .end local v4    # "parentId":I
    :cond_0
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollUpToParent() is Ignored. Kiosk mode enabled for persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .locals 12
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 5326
    const/4 v3, 0x0

    .line 5327
    .local v3, "resullt":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5329
    .local v7, "token":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5330
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 5331
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "savePasswordInTima->  SecureStorage is not enabled  for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5332
    const/4 v9, 0x0

    .line 5369
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5372
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v9

    .line 5334
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    :try_start_1
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "savePasswordInTima->  personaId :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 5337
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->changeEncryptFsKey(ILjava/lang/String;)Z

    .line 5338
    const/4 v6, -0x1

    .line 5339
    .local v6, "timaStatus":I
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 5340
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTIMAStatus()I

    move-result v6

    .line 5342
    :cond_1
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tima device status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5343
    sget-boolean v9, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    if-eqz v9, :cond_2

    if-nez v6, :cond_2

    .line 5344
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->savePasswordInTima20(ILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 5369
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    .end local v6    # "timaStatus":I
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v3

    .line 5372
    goto :goto_0

    .line 5345
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v6    # "timaStatus":I
    :cond_2
    if-nez v6, :cond_3

    .line 5346
    :try_start_2
    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 5347
    .local v2, "ks":Ljava/security/KeyStore;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 5348
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, ""

    invoke-direct {v4, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5349
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 5351
    .local v5, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v10

    invoke-virtual {v2, v9, v5, v10}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 5352
    const/4 v3, 0x1

    .line 5353
    goto :goto_1

    .line 5354
    .end local v2    # "ks":Ljava/security/KeyStore;
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_3
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/PersonaManagerService;->checkTimaError(II)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 5360
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    .end local v6    # "timaStatus":I
    :catch_0
    move-exception v0

    .line 5361
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_3
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 5369
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catchall_0
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 5357
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_4
    :try_start_4
    const-string v9, "PersonaManagerService"

    const-string v10, "password cannot be null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 5362
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catch_1
    move-exception v0

    .line 5363
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_5
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 5364
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 5365
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    .line 5366
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v0

    .line 5367
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public setBackPressed(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "isBackPressed"    # Z

    .prologue
    .line 6213
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handle back called for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6214
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mBackPressed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6215
    return-void
.end method

.method public setCurrentPersonaForUser(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 4346
    const-string/jumbo v0, "setCurrentPersonaForUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4347
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentPersonaForUser() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4349
    return-void
.end method

.method setEcryptAndPasswordIndex(Landroid/content/pm/PersonaInfo;)V
    .locals 11
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;

    .prologue
    const/16 v10, 0x65

    const/16 v9, 0x64

    const/4 v7, 0x4

    const/4 v8, 0x1

    .line 2176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2177
    .local v1, "listOfKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2178
    .local v6, "unusedListOfKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2179
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2180
    const/16 v7, 0x66

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2181
    const/16 v7, 0x67

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2182
    move-object v6, v1

    .line 2183
    invoke-virtual {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    .line 2184
    .local v4, "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_2

    .line 2185
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2187
    invoke-virtual {p1, v9}, Landroid/content/pm/PersonaInfo;->setTimaEcrytfsIndex(I)V

    .line 2188
    invoke-virtual {p1, v10}, Landroid/content/pm/PersonaInfo;->setTimaPasswordIndex(I)V

    .line 2205
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 2192
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 2193
    .local v5, "pInfo":Landroid/content/pm/PersonaInfo;
    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2194
    .local v2, "mEcrptyfsKey":Ljava/lang/Integer;
    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2195
    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2196
    .local v3, "mPasswordKey":Ljava/lang/Integer;
    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2197
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/content/pm/PersonaInfo;->setTimaEcrytfsIndex(I)V

    .line 2198
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/content/pm/PersonaInfo;->setTimaPasswordIndex(I)V

    goto :goto_1

    .line 2203
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mEcrptyfsKey":Ljava/lang/Integer;
    .end local v3    # "mPasswordKey":Ljava/lang/Integer;
    .end local v5    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_2
    const-string v7, "PersonaManagerService"

    const-string v8, "mPersonaInfoList is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFsMountState(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z

    .prologue
    .line 4555
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFsMountState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4557
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4558
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 4559
    const-string v1, "PersonaManagerService"

    const-string/jumbo v3, "setFsMountState personaInfo is null "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    monitor-exit v2

    .line 4566
    :goto_0
    return-void

    .line 4563
    :cond_0
    iput-boolean p2, v0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 4564
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4565
    monitor-exit v2

    goto :goto_0

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLastShortcutState(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "wasShortcut"    # Z

    .prologue
    .line 6263
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set last shortcut mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6264
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLastShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6265
    return-void
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .locals 6
    .param p1, "timeInMs"    # J
    .param p3, "personaId"    # I

    .prologue
    .line 5690
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMaximumScreenOffTimeoutFromDeviceAdmin called but may not be entered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " persona:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    const/16 v2, 0x1388

    .line 5692
    .local v2, "timeMs":I
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p1, v3

    if-lez v3, :cond_2

    .line 5693
    const v2, 0x7fffffff

    .line 5698
    :goto_0
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5699
    .local v1, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5700
    const-string v3, "PersonaManagerService"

    const-string v4, "Pinfo is not null & Persona not removing. Going to refresh timer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    const/16 v3, 0x1388

    if-gt v2, v3, :cond_0

    .line 5702
    const/16 v2, 0x1388

    .line 5704
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminLockSettings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5706
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->refreshTimer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5712
    .end local v1    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_1
    return-void

    .line 5695
    :cond_2
    long-to-int v2, p1

    goto :goto_0

    .line 5708
    :catch_0
    move-exception v0

    .line 5709
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4304
    const-string/jumbo v1, "setPersonaIcon"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4305
    const-string/jumbo v1, "update users"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4306
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 4308
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v1, :cond_1

    .line 4309
    :cond_0
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPersonaIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    monitor-exit v2

    .line 4316
    :goto_0
    return-void

    .line 4312
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/PersonaManagerService;->writeBitmapLocked(Landroid/content/pm/PersonaInfo;Landroid/graphics/Bitmap;)V

    .line 4313
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4314
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4315
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->sendPersonaInfoChangedBroadcast(I)V

    goto :goto_0

    .line 4314
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4390
    const-string/jumbo v2, "setPersonaName"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4391
    const-string v2, "PersonaManagerService"

    const-string/jumbo v3, "setPersonaName()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    const-string v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4393
    const/4 v0, 0x0

    .line 4394
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4395
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    .line 4396
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v2, :cond_2

    .line 4397
    :cond_0
    const-string v2, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPersonaName() unknown persona #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    monitor-exit v3

    .line 4410
    :cond_1
    :goto_0
    return-void

    .line 4401
    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, v1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4402
    iput-object p2, v1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 4403
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4404
    const/4 v0, 0x1

    .line 4406
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4407
    if-eqz v0, :cond_1

    .line 4408
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->sendPersonaInfoChangedBroadcast(I)V

    goto :goto_0

    .line 4406
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 668
    const-string/jumbo v1, "setPersonaSamsungAccount"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 670
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0, p2}, Landroid/content/pm/PersonaInfo;->setsamsungAccount(Ljava/lang/String;)V

    .line 672
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 673
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 674
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 675
    monitor-exit v2

    .line 677
    :cond_0
    return-void

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPersonaState(II)V
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4474
    const-string/jumbo v3, "setPersonaState"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4475
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPersonaState: new state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4476
    const/4 v2, -0x1

    .line 4477
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    if-ne p2, v8, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4478
    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4534
    :goto_0
    return-void

    .line 4481
    :cond_1
    const/4 v1, 0x0

    .line 4482
    .local v1, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4483
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 4484
    if-nez v1, :cond_2

    .line 4485
    const-string v3, "PersonaManagerService"

    const-string/jumbo v5, "setPersonaState personaInfo is null "

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    monitor-exit v4

    goto :goto_0

    .line 4511
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4488
    :cond_2
    :try_start_1
    iget v2, v1, Landroid/content/pm/PersonaInfo;->state:I

    .line 4489
    if-ne v2, p2, :cond_3

    .line 4490
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPersonaState: current and new state are same.. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    monitor-exit v4

    goto :goto_0

    .line 4493
    :cond_3
    iput v2, v1, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 4494
    iput p2, v1, Landroid/content/pm/PersonaInfo;->state:I

    .line 4495
    if-ne p2, v8, :cond_4

    .line 4496
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 4498
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->isSuperLockState(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4499
    iget-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-nez v3, :cond_5

    .line 4500
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 4501
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 4502
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->handleSuperLockPersona(II)V

    .line 4503
    if-ne v2, v8, :cond_5

    .line 4504
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 4510
    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4511
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4513
    if-ne v2, v6, :cond_8

    if-nez p2, :cond_8

    .line 4514
    const-string v3, "PersonaManagerService"

    const-string/jumbo v4, "setPersonaState : first time switch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v3, v4, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4516
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 4517
    .local v0, "i":I
    :goto_2
    if-lez v0, :cond_7

    .line 4518
    add-int/lit8 v0, v0, -0x1

    .line 4520
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v3, p1}, Landroid/content/pm/ISystemPersonaObserver;->onPersonaActive(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 4521
    :catch_0
    move-exception v3

    goto :goto_2

    .line 4508
    .end local v0    # "i":I
    :cond_6
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4526
    .restart local v0    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4529
    .end local v0    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    if-eqz v3, :cond_9

    .line 4530
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/pm/HandlerCacheManager;->onStateChange(III)V

    goto/16 :goto_0

    .line 4532
    :cond_9
    const-string v3, "PersonaManagerService"

    const-string/jumbo v4, "setPersonaState mHandlerCacheManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 647
    const-string/jumbo v1, "setPersonaType"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 649
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p2}, Landroid/content/pm/PersonaInfo;->setType(Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    monitor-exit v2

    .line 655
    :cond_0
    return-void

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPhoneCaller(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4371
    const-string/jumbo v0, "setPhoneCaller"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4372
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPhoneCaller as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    .line 4374
    return-void
.end method

.method public setResetPasswordState(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 4570
    const-string/jumbo v1, "update users"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4571
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setResetPasswordState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4573
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4574
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 4575
    const-string v1, "PersonaManagerService"

    const-string/jumbo v3, "setResetPasswordState personaInfo is null "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    monitor-exit v2

    .line 4582
    :goto_0
    return-void

    .line 4579
    :cond_0
    iput-boolean p2, v0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 4580
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4581
    monitor-exit v2

    goto :goto_0

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setShortcutMode(IZ)V
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "isShortcutMode"    # Z

    .prologue
    .line 3547
    const-string/jumbo v0, "setShortcutMode"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3548
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3549
    return-void
.end method

.method public setSuperLock(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "setLock"    # Z

    .prologue
    .line 4538
    const-string/jumbo v1, "setSuperLock"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4539
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSuperLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4541
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4542
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 4543
    const-string v1, "PersonaManagerService"

    const-string/jumbo v3, "setSuperLock personaInfo is null "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4544
    monitor-exit v2

    .line 4550
    :goto_0
    return-void

    .line 4547
    :cond_0
    iput-boolean p2, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 4548
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4549
    monitor-exit v2

    goto :goto_0

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public settingSyncAllowed(I)Z
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 6019
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 6021
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget v1, v0, Landroid/content/pm/PersonaInfo;->state:I

    packed-switch v1, :pswitch_data_0

    .line 6029
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6026
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 6021
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startRemovingPersona(I)I
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 3562
    const-string/jumbo v0, "startRemovingPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3563
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "startRemovingPersona is called.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I

    move-result v0

    return v0
.end method

.method public stopAndRemovePersona(IZ)I
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "removePersona"    # Z

    .prologue
    .line 3568
    const-string/jumbo v2, "stopAndRemovePersona"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3569
    const-string v2, "PersonaManagerService"

    const-string/jumbo v3, "stopAndRemovePersona is called.."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    const/4 v1, -0x1

    .line 3572
    .local v1, "res":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService$3;-><init>(Lcom/android/server/pm/PersonaManagerService;IZ)V

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3611
    :goto_0
    return v1

    .line 3608
    :catch_0
    move-exception v0

    .line 3609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopAndRemovePersona "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPersona(I)I
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 3556
    const-string/jumbo v0, "stopPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3557
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "stopPersona is called.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I

    move-result v0

    return v0
.end method

.method public switchPersona(I)Z
    .locals 9
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 3376
    const-string/jumbo v6, "switchPersona"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3377
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 3380
    .local v4, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_0

    .line 3381
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 3382
    const-string v6, "PersonaManagerService"

    const-string v7, "Switch not allowed because removePersona flag is true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    :goto_0
    return v5

    .line 3387
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3388
    .local v2, "ident":J
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3390
    .local v0, "activityManager":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->switchPersona(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 3391
    :catch_0
    move-exception v1

    .line 3392
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 3401
    const-string/jumbo v6, "switchPersonaAndLaunch"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3402
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 3405
    .local v4, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_0

    .line 3406
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 3407
    const-string v6, "PersonaManagerService"

    const-string v7, "Switch not allowed because either partial flag or remove flag is true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :goto_0
    return v5

    .line 3412
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3413
    .local v2, "ident":J
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3415
    .local v0, "activityManager":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 3416
    :catch_0
    move-exception v1

    .line 3417
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and launch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 9

    .prologue
    .line 2742
    const-string/jumbo v5, "systemReady"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2744
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaPolicyManagerService;->registerReceivers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2748
    :goto_0
    new-instance v5, Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v7, 0x9

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    .line 2749
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 2750
    const-string v5, "ro.config.knox"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2752
    .local v4, "version":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/pm/PersonaManagerService$BootReceiver;

    invoke-direct {v6, p0}, Lcom/android/server/pm/PersonaManagerService$BootReceiver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2754
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2755
    const-string/jumbo v5, "v30"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2756
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/PersonaManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/PersonaManagerService$1;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    const-wide/16 v7, 0x5

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2773
    :cond_0
    const-string v5, "PersonaManagerService"

    const-string v6, "Pruning of unwanted persona has started..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pruning mPersonas\'s size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2777
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 2778
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 2779
    .local v3, "ui":Landroid/content/pm/PersonaInfo;
    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pruning info is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v3, Landroid/content/pm/PersonaInfo;->partial:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and remove"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v3, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-boolean v5, v3, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v5, :cond_1

    iget-boolean v5, v3, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v5, :cond_2

    .line 2781
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;

    iget v7, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v7, v3, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2777
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2745
    .end local v1    # "i":I
    .end local v3    # "ui":Landroid/content/pm/PersonaInfo;
    .end local v4    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2746
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2785
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v4    # "version":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 2786
    const-string/jumbo v5, "sys.knox.exists"

    const-string v7, "0"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    :cond_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2789
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2790
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2791
    return-void

    .line 2787
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .locals 11
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1744
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "unInstallSystemApplications"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1745
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1746
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1747
    const/4 v4, -0x1

    .line 1748
    .local v4, "result":I
    :try_start_1
    const-string v6, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " in PMS, calling PkgMgr uninstall system apps  :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1750
    .local v5, "userPath":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, p1, v5, p2}, Lcom/android/server/pm/PackageManagerService;->unInstallSystemApplicationsForPersonaLILPw(ILjava/io/File;Ljava/util/List;)I

    move-result v4

    .line 1752
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 1754
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1755
    .local v2, "pkg":Ljava/lang/String;
    const-string v6, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " removing files for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1758
    .local v3, "pkgDir":Ljava/io/File;
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/sec/knox/container/util/EnterprisePartitionManager;ILjava/io/File;)V

    goto :goto_0

    .line 1762
    .end local v0    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "pkgDir":Ljava/io/File;
    .end local v5    # "userPath":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6

    .line 1763
    .end local v4    # "result":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1761
    .restart local v0    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":I
    .restart local v5    # "userPath":Ljava/io/File;
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v4
.end method

.method public unmarkForRemoval(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4864
    const-string/jumbo v0, "unmarkForRemoval"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4865
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unmarkForRemoval() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4867
    return-void
.end method

.method public unregisterObserver(Landroid/content/pm/IPersonaObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3456
    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3459
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3461
    .local v0, "personaId":I
    invoke-static {v0, p1}, Lcom/android/server/pm/HandlerCacheManager;->unregisterObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 3462
    return-void
.end method

.method public userActivity(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 5744
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5745
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5746
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5747
    return-void
.end method

.method public userBackground(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 4171
    const-string/jumbo v8, "userBackground"

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4172
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4173
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 4174
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v8, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v8, :cond_0

    iget-boolean v8, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v8, :cond_1

    .line 4175
    :cond_0
    const-string v8, "SwitchPersona"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "personaBackground: unknown user #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    monitor-exit v9

    .line 4207
    :goto_0
    return-void

    .line 4178
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4179
    .local v3, "now":J
    const-string v8, "SwitchPersona"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userBackground() now "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    iput-wide v3, v0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 4182
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4184
    const-string v8, "SwitchPersona"

    const-string/jumbo v10, "userBackground() changing value in lastTimeToBackground"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4186
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4187
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V

    .line 4189
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    .line 4191
    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v6

    .line 4192
    .local v6, "sessionLength":J
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v10, p1, 0x1388

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4193
    .local v1, "message":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v10, p1, 0x1388

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 4194
    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-gtz v8, :cond_2

    .line 4196
    const-wide v6, 0x7fffffffffffffffL

    .line 4197
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v1, v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 4202
    :goto_1
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4203
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 4204
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v2, v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4206
    monitor-exit v9

    goto/16 :goto_0

    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "now":J
    .end local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v6    # "sessionLength":J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 4200
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v1    # "message":Landroid/os/Message;
    .restart local v3    # "now":J
    .restart local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .restart local v6    # "sessionLength":J
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v1, v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public userForeground(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 4148
    const-string/jumbo v3, "userForeground"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4149
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4150
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 4151
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v3, :cond_1

    .line 4152
    :cond_0
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userForeground: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    monitor-exit v4

    .line 4163
    :goto_0
    return-void

    .line 4155
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4156
    .local v1, "now":J
    const-wide v5, 0xdc46c32800L

    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    .line 4157
    iput-wide v1, v0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 4158
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4160
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4161
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User foreground during switch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->refreshTimer(I)V

    goto :goto_0

    .line 4160
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    .end local v1    # "now":J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
