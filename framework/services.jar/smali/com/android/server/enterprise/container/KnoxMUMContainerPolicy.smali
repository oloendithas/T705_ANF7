.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.super Lcom/sec/enterprise/knox/container/IKnoxContainerManager$Stub;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    }
.end annotation


# static fields
.field private static final ADMIN_ALL:I = 0x0

.field private static final APK_PATH:Ljava/lang/String; = "/system/container/"

.field private static final CREATETIME_INSTALL_LIST:[Ljava/lang/String;

.field private static final CREATION_PARAMS:Ljava/lang/String; = "creation_params"

.field private static final FLAG_BASE:I = 0x1

.field private static final FLAG_MIGRATION:I = 0x100

.field private static final FOTA_DEBUG:Z = false

.field private static FOTA_DEBUG_TIME:J = 0x0L

.field private static final HANDLER_APK:Ljava/lang/String; = "KnoxSecureHandler.apk"

.field private static final INTENT_B2B_PERSONA_CREATED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.created.b2b"

.field private static final INTENT_B2B_PERSONA_REMOVED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.removed.b2b"

.field private static final INTENT_B2C_PERSONA_CREATED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.created.b2c"

.field private static final INTENT_B2C_PERSONA_REMOVED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.removed.b2c"

.field private static final INTENT_KNOX_SETUPWIZARD_DIED:Ljava/lang/String; = "com.sec.knox.died.SETUP_WIZARD"

.field private static final INTENT_PERSONA_MDM_LOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmlocked"

.field private static final INTENT_PERSONA_MDM_UNLOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmunlocked"

.field private static final INTENT_START_MIGRATION_WIZARD_ACTION:Ljava/lang/String; = "com.sec.knox.start.MIGRATION_WIZARD"

.field private static final INTENT_START_SETUP_WIZARD_ACTION:Ljava/lang/String; = "com.sec.knox.start.SETUP_WIZARD"

.field private static final INTENT_VALIDATE_LICENSE_KEY_STATUS_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.licensekey.status"

.field private static final LWC_FOLDERHEADERICON_HEIGHT:I = 0x11

.field private static final LWC_FOLDERHEADERICON_WIDTH:I = 0x5a

.field private static final MIGRATION_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final SETUP_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.sec.knox.knoxsetupwizardclient"

.field private static TAG:Ljava/lang/String; = null

.field private static TYPE_FILE_PATH:Ljava/lang/String; = null

.field private static final VALID_KLMS_LICENSE_CODE:I = 0x5a

.field private static final WIZARD_APK:Ljava/lang/String; = "ContainerAgent2.apk"

.field private static mContext:Landroid/content/Context;

.field private static mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;


# instance fields
.field private final DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

.field private final SECOND_KNOX_ICON_PATH:Ljava/lang/String;

.field private containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

.field private final mContainerReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFotaRequired:Z

.field private mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field

.field mParser:Lorg/xmlpull/v1/XmlPullParser;

.field mPersona:Landroid/os/PersonaManager;

.field mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

.field private mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

.field private mSetupWizardUid:I

.field private mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 177
    const-string v0, "KnoxMUMContainerPolicy"

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    .line 178
    const-string v0, "/data/system/container/"

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    .line 211
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.app.memo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.sbrowsertry"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.samsung.android.snote"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.hancom.androidpc.appwidget"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->CREATETIME_INSTALL_LIST:[Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 239
    sput-boolean v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->SEANDROID_SECURITY_VERIFICATION:Z

    .line 244
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->FOTA_DEBUG_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 256
    invoke-direct {p0}, Lcom/sec/enterprise/knox/container/IKnoxContainerManager$Stub;-><init>()V

    .line 201
    const-string v3, "/system/container/resources/knox_icon.png"

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

    .line 202
    const-string v3, "/system/container/resources/knox_icon2.png"

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->SECOND_KNOX_ICON_PATH:Ljava/lang/String;

    .line 204
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    .line 225
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 226
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    .line 230
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    .line 231
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 232
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersonaObservers:Ljava/util/HashMap;

    .line 233
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    .line 236
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 240
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupWizardUid:I

    .line 241
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 242
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    .line 243
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    .line 245
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mIsFotaRequired:Z

    .line 412
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 429
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    sput-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 258
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 259
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 269
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->prepareEnterprisePolicyData()V

    .line 273
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v2, "filter1":Landroid/content/IntentFilter;
    const-string v3, "com.sec.knox.containeragent.klms.licensekey.status"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 278
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 279
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->unregisterPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 173
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 173
    sput-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 173
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    return-void
.end method

.method static synthetic access$2100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 173
    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 173
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    return-object v0
.end method

.method static synthetic access$900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addConfigurationTypeToList(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2552
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processNewTypeObject(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v0

    .line 2553
    .local v0, "ret":Z
    if-ne v0, v1, :cond_0

    .line 2554
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2555
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 2558
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addContainerOwnerRelationship(II)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1851
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Add Container owner relationship."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const/4 v1, 0x0

    .line 1854
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    move-result v1

    .line 1855
    if-eqz v1, :cond_0

    .line 1856
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container Added to DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :goto_0
    return v1

    .line 1865
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add container to DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at addContainerToDB "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 396
    const-string v1, "KnoxMUMContainerPolicy"

    .line 397
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    sget-boolean v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->SEANDROID_SECURITY_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 400
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

    .line 401
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 402
    throw v0

    .line 404
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

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

    .line 405
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

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEANDROID_SECURITY_VERIFICATION false, printing exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkForFOTA()V
    .locals 14

    .prologue
    .line 343
    iget-boolean v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mIsFotaRequired:Z

    if-eqz v10, :cond_1

    .line 344
    const/4 v7, 0x0

    .line 345
    .local v7, "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    const/4 v2, 0x0

    .line 347
    .local v2, "customlParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v11, "reading from xml resource for fota"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10f0006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 349
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10f0003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 351
    new-instance v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v4, p0, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 352
    .local v4, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 353
    invoke-virtual {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    .line 355
    if-eqz v2, :cond_0

    .line 356
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 357
    .local v0, "customEnterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromCustomXml()Ljava/util/List;

    move-result-object v1

    .line 358
    .local v1, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 364
    .end local v0    # "customEnterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v1    # "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 394
    .end local v2    # "customlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v7    # "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_1
    :goto_0
    return-void

    .line 360
    .restart local v2    # "customlParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :catch_0
    move-exception v3

    .line 361
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to open file - Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :cond_2
    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v11

    .line 369
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 370
    .local v6, "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v6, :cond_3

    .line 373
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Upgrading type object:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v10, 0x0

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v8

    .line 376
    .local v8, "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Knox config found existing:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz v8, :cond_4

    .line 378
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v9

    .line 379
    .local v9, "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v6, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    .line 380
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 382
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v8    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v9    # "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 385
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v8    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 386
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    .end local v6    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v8    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 390
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 4559
    if-nez p0, :cond_1

    .line 4560
    const/4 p0, 0x0

    .line 4566
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 4562
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4563
    .restart local v0    # "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 4566
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private dumpAsString()V
    .locals 3

    .prologue
    .line 1518
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1519
    .local v1, "param":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->describeContents()I

    goto :goto_0

    .line 1521
    .end local v1    # "param":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_0
    return-void
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1151
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1088
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1089
    .local v1, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1093
    .end local v1    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private filterType(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v2, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1099
    .local v1, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1100
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1103
    .end local v1    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    return-object v2
.end method

.method private filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    .line 1107
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1108
    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .line 1109
    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1110
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 1115
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findMatchingComponent(II)Landroid/content/ComponentName;
    .locals 15
    .param p1, "userId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 1892
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adminPackageUid parameter: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v12}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1894
    .local v7, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v14, 0x8080

    move/from16 v0, p1

    invoke-virtual {v12, v13, v14, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 1898
    .local v3, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1899
    :cond_0
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v13, "No admins found."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/4 v12, 0x0

    .line 1925
    :goto_0
    return-object v12

    .line 1902
    :cond_1
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 1903
    .local v10, "packages":[Ljava/lang/String;
    if-eqz v10, :cond_3

    array-length v12, v10

    if-lez v12, :cond_3

    .line 1904
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 1906
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1907
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1908
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1909
    .local v9, "packageName":Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1910
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_2

    .line 1911
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "packageName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    invoke-direct {p0, v10, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchPackages([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1915
    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v12, v11}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 1916
    .local v5, "dpi":Landroid/app/admin/DeviceAdminInfo;
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin match returning component: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_0

    .line 1918
    .end local v5    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    :catch_0
    move-exception v6

    .line 1919
    .local v6, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v13, "Exception throw during creating  DeviceAdminInfo "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1925
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private getAvailableInternalMemory()J
    .locals 13

    .prologue
    .line 1566
    const-wide/16 v4, 0x0

    .line 1567
    .local v4, "blockSize":J
    const-wide/16 v0, 0x0

    .line 1568
    .local v0, "availableBlocks":J
    const-wide/16 v7, 0x0

    .line 1569
    .local v7, "mAvailSize":J
    const-wide/16 v2, 0x0

    .line 1571
    .local v2, "availableMemoryInMB":J
    :try_start_0
    new-instance v9, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1572
    .local v9, "stat":Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v4, v10

    .line 1573
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 1574
    mul-long v7, v0, v4

    .line 1575
    const-wide/32 v10, 0x100000

    div-long v2, v7, v10

    .line 1576
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Available internal memory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v12, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and availableMemoryInMB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    .end local v9    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 1577
    :catch_0
    move-exception v6

    .line 1578
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private getContainers(I)Ljava/util/List;
    .locals 11
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2282
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getContainers: admin uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2287
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    .line 2288
    .local v5, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v5, :cond_1

    .line 2289
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 2290
    .local v4, "pInfo":Landroid/content/pm/PersonaInfo;
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 2291
    .local v3, "ownerUid":I
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Persona found with id , creator uid, passed uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    if-ne v3, p1, :cond_0

    .line 2293
    iget v8, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2297
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ownerUid":I
    .end local v4    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v0

    .line 2298
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getContainers exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2300
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2302
    return-object v2

    .line 2300
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 1462
    const/4 v3, 0x0

    .line 1463
    .local v3, "params":Lcom/sec/knox/container/ContainerCreationParams;
    const/4 v1, 0x0

    .line 1464
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v5

    .line 1465
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1466
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1467
    .local v2, "item":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1468
    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    .line 1469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1470
    move-object v3, v2

    goto :goto_0

    .line 1475
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_1
    monitor-exit v5

    .line 1476
    return-object v3

    .line 1475
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getDefaultTypeObj(Z)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 5
    .param p1, "isUserManaged"    # Z

    .prologue
    .line 2562
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDefaultConfigurationTypes()Ljava/util/List;

    move-result-object v2

    .line 2563
    .local v2, "defaultTypes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2564
    :cond_0
    const/4 v0, 0x0

    .line 2572
    :cond_1
    return-object v0

    .line 2566
    :cond_2
    const/4 v0, 0x0

    .line 2567
    .local v0, "defaultType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 2568
    .local v1, "defaultTypeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v4

    if-ne v4, p1, :cond_3

    .line 2569
    move-object v0, v1

    goto :goto_0
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4384
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4385
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    .line 4395
    :goto_0
    return-object v0

    .line 4387
    :cond_0
    const-string v1, "ro.build.PDA"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4388
    .local v0, "pdaVersion":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

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

    .line 4389
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4390
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

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

    .line 4394
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1120
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSSID(I)Ljava/util/Set;
    .locals 10
    .param p1, "adminUid"    # I
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
    .line 4533
    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ContainerOnly_wifiAP"

    const-string/jumbo v9, "wifiSSIDforKNOX"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4535
    .local v6, "var":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4536
    .local v3, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 4537
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4538
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 4539
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4538
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4542
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 1073
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private static getTIMAStatus()I
    .locals 9

    .prologue
    .line 1538
    const/4 v1, -0x1

    .line 1539
    .local v1, "timaStatus":I
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1561
    :goto_0
    return v1

    .line 1542
    :cond_0
    const/4 v2, 0x0

    .local v2, "timaVersion20":Z
    const/4 v3, 0x0

    .line 1543
    .local v3, "timaVersion30":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1545
    .local v4, "token":J
    :try_start_0
    const-string v6, "2.0"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1546
    if-nez v2, :cond_1

    .line 1547
    const-string v6, "3.0"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1549
    :cond_1
    if-eqz v3, :cond_3

    .line 1550
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1558
    :cond_2
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1560
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

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

    goto :goto_0

    .line 1551
    :cond_3
    if-eqz v2, :cond_2

    .line 1552
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 1553
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1558
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private static getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 1532
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 1534
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private installDefaultApplications(ILjava/util/List;)V
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1135
    .local p2, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1136
    .local v1, "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1137
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .restart local v1    # "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1139
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->CREATETIME_INSTALL_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 1140
    .local v4, "pkg":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1141
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1145
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    .line 1147
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Landroid/os/PersonaManager;->installApplications(ILjava/util/List;)Z

    .line 1148
    return-void
.end method

.method private isEnoughMemoryToCreateContainer()Z
    .locals 4

    .prologue
    .line 1584
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAvailableInternalMemory()J

    move-result-wide v1

    long-to-int v0, v1

    .line 1585
    .local v0, "availableSpace":I
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AvailableSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const/16 v1, 0x264

    if-lt v0, v1, :cond_0

    .line 1587
    const/4 v1, 0x1

    .line 1589
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFOTARequired()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 325
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v3

    .line 326
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 327
    :cond_0
    monitor-exit v3

    .line 339
    :goto_0
    return v2

    .line 329
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 330
    .local v1, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-nez v4, :cond_2

    .line 331
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFOTARequired currentversion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 333
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Fota required......"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v3

    goto :goto_0

    .line 338
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isKioskEnabledOnOwner()Z
    .locals 6

    .prologue
    .line 1593
    const/4 v2, 0x0

    .line 1595
    .local v2, "status":Z
    :try_start_0
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .line 1596
    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_0

    .line 1597
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/enterprise/kioskmode/IKioskMode;->isKioskModeEnabledAsUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1602
    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKioskEnabledOnOwner ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return v2

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isTIMAEnabled()Z
    .locals 4

    .prologue
    .line 1524
    const-string v1, "1"

    const-string v2, "ro.config.tima"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1525
    .local v0, "timaEnabled":Z
    if-eqz v0, :cond_0

    .line 1526
    const/4 v1, 0x1

    .line 1528
    :goto_0
    return v1

    .line 1527
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "TIMA is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 5
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1812
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1814
    if-eqz p1, :cond_2

    .line 1815
    const/4 v2, 0x0

    .line 1816
    .local v2, "match":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1817
    .local v1, "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1818
    move-object v2, v1

    .line 1822
    .end local v1    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_1
    if-eqz v2, :cond_2

    .line 1828
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private matchPackages([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1929
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1930
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packages for uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1932
    const/4 v4, 0x1

    .line 1935
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    return v4

    .line 1929
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1935
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private prepareEnterprisePolicyData()V
    .locals 13

    .prologue
    .line 284
    const/4 v5, 0x0

    .line 285
    .local v5, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 287
    .local v2, "customlParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "enterprisedata.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 289
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "reading from xml resource"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10f0006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 291
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10f0003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 298
    :goto_0
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v3, p0, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 299
    .local v3, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 300
    invoke-virtual {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 301
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isFOTARequired()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mIsFotaRequired:Z

    .line 303
    if-eqz v2, :cond_0

    .line 304
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 305
    .local v0, "customEnterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromCustomXml()Ljava/util/List;

    move-result-object v1

    .line 306
    .local v1, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-virtual {v0, v9, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 308
    .end local v0    # "customEnterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v1    # "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkForFOTA()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    if-eqz v5, :cond_1

    .line 316
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 322
    .end local v3    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 293
    .restart local v4    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "reading from xml file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 296
    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v10, 0x0

    invoke-interface {v9, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 309
    .end local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 310
    .local v7, "ioe":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open file - IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    if-eqz v5, :cond_1

    .line 316
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 318
    :catch_1
    move-exception v7

    .line 319
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 311
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 312
    .local v8, "parserException":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_6
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get parser- exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 315
    if-eqz v5, :cond_1

    .line 316
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 318
    :catch_3
    move-exception v7

    .line 319
    .restart local v7    # "ioe":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 314
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v8    # "parserException":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    .line 315
    :goto_5
    if-eqz v5, :cond_3

    .line 316
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 314
    :cond_3
    :goto_6
    throw v9

    .line 318
    :catch_4
    move-exception v7

    .line 319
    .restart local v7    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 318
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v3    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .restart local v4    # "file":Ljava/io/File;
    :catch_5
    move-exception v7

    .line 319
    .restart local v7    # "ioe":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 314
    .end local v3    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_5

    .line 311
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v8

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 309
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v7

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method private processConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 3
    .param p1, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    const/4 v1, 0x0

    .line 2493
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2494
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2511
    :cond_0
    :goto_0
    return v1

    .line 2497
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 2505
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2497
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x11000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)V
    .locals 8
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1480
    if-eqz p1, :cond_1

    .line 1481
    const/4 v2, 0x0

    .line 1482
    .local v2, "processed":Z
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1483
    .local v4, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getLockType()I

    move-result v0

    .line 1484
    .local v0, "lockType":I
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v3

    .line 1485
    .local v3, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    packed-switch v0, :pswitch_data_0

    .line 1510
    :cond_0
    :goto_0
    invoke-virtual {p1, v7}, Lcom/sec/knox/container/ContainerCreationParams;->setPassword(Ljava/lang/String;)V

    .line 1511
    if-eqz v2, :cond_1

    .line 1512
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Container creation params processed successfully"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    .end local v0    # "lockType":I
    .end local v2    # "processed":Z
    .end local v3    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    return-void

    .line 1488
    .restart local v0    # "lockType":I
    .restart local v2    # "processed":Z
    .restart local v3    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v4    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1489
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 1490
    const/4 v2, 0x1

    goto :goto_0

    .line 1494
    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1495
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1496
    .local v1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 1497
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 1498
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 1499
    const/high16 v5, 0x10000

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 1500
    const/4 v2, 0x1

    .line 1501
    goto :goto_0

    .line 1504
    .end local v1    # "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :pswitch_2
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 1505
    const/4 v2, 0x1

    .line 1506
    goto :goto_0

    .line 1485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processNewTypeObject(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 17
    .param p1, "callingUid"    # I
    .param p2, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2658
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2659
    .local v12, "userHandle":I
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    .line 2660
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setUserId(I)V

    .line 2662
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 2664
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 2665
    .local v10, "screenDimesions":Landroid/graphics/Point;
    const/4 v9, 0x0

    .line 2666
    .local v9, "profileDimesions":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 2667
    .local v2, "badgeDimesions":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 2668
    .local v5, "folderHeaderDimensions":Landroid/graphics/Point;
    const/16 v14, 0x5a

    const/16 v15, 0x11

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Point;->set(II)V

    .line 2670
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 2671
    .local v13, "winMgr":Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2673
    iget v14, v10, Landroid/graphics/Point;->x:I

    iget v15, v10, Landroid/graphics/Point;->y:I

    if-le v14, v15, :cond_c

    .line 2674
    iget v14, v10, Landroid/graphics/Point;->x:I

    iput v14, v10, Landroid/graphics/Point;->y:I

    .line 2678
    :goto_0
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Screen dimension: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    const-string v3, "/data/container2.0/"

    .line 2680
    .local v3, "basedir":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2681
    .local v7, "outDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2682
    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2683
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/io/File;->setWritable(Z)Z

    .line 2684
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2689
    const-string v3, "/data/container2.0/icon/"

    .line 2690
    new-instance v7, Ljava/io/File;

    .end local v7    # "outDir":Ljava/io/File;
    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2691
    .restart local v7    # "outDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2692
    :cond_1
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2693
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/io/File;->setWritable(Z)Z

    .line 2694
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2699
    const/4 v4, 0x0

    .line 2700
    .local v4, "destPath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2701
    .local v11, "status":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/container2.0/icon/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2703
    .local v8, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 2704
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CustomBadgeIcon.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2705
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v14, v15, v4, v2}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2707
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image paths: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    if-nez v11, :cond_2

    .line 2709
    const/4 v4, 0x0

    .line 2711
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    .line 2714
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 2715
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CustomHomeScreenWallpaper.jpeg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2716
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v14, v15, v4, v10}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2718
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image paths: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    if-nez v11, :cond_4

    .line 2720
    const/4 v4, 0x0

    .line 2722
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    .line 2725
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 2726
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CustomLockScreenWallpaper.jpeg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2727
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v14, v15, v4, v10}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2729
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image paths: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    if-nez v11, :cond_6

    .line 2731
    const/4 v4, 0x0

    .line 2733
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    .line 2736
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 2737
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CustomStatusIcon.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2738
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v14, v15, v4, v9}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2740
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image paths: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    if-nez v11, :cond_8

    .line 2742
    const/4 v4, 0x0

    .line 2744
    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    .line 2747
    :cond_9
    move-object/from16 v0, p2

    instance-of v14, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v14, :cond_b

    move-object/from16 v14, p2

    .line 2748
    check-cast v14, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    invoke-virtual {v14}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v6

    .line 2749
    .local v6, "headerIcon":Ljava/lang/String;
    if-eqz v6, :cond_b

    .line 2750
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "FolderHeaderIcon.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2751
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v6, v14, v4, v5}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2753
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image path folder header icon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    if-nez v11, :cond_a

    .line 2755
    const/4 v4, 0x0

    :cond_a
    move-object/from16 v14, p2

    .line 2757
    check-cast v14, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    invoke-virtual {v14, v4}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    .line 2761
    .end local v6    # "headerIcon":Ljava/lang/String;
    :cond_b
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Images after copy in services:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    const/4 v14, 0x1

    .end local v4    # "destPath":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v11    # "status":Z
    :goto_1
    return v14

    .line 2676
    .end local v3    # "basedir":Ljava/lang/String;
    .end local v7    # "outDir":Ljava/io/File;
    :cond_c
    iget v14, v10, Landroid/graphics/Point;->y:I

    iput v14, v10, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2686
    .restart local v3    # "basedir":Ljava/lang/String;
    .restart local v7    # "outDir":Ljava/io/File;
    :cond_d
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cannot create folder: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    const/4 v14, 0x0

    goto :goto_1

    .line 2696
    :cond_e
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cannot create folder: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    const/4 v14, 0x0

    goto :goto_1
.end method

.method private registerPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1020
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    .line 1021
    .local v0, "observer":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/os/PersonaManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    .end local v0    # "observer":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;
    :cond_0
    return-void
.end method

.method private removeConfigurationTypeInternal(ILjava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 2588
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v2

    .line 2589
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .line 2590
    .local v0, "lType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2591
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2592
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v1

    monitor-exit v2

    .line 2596
    :goto_0
    return v1

    .line 2595
    :cond_1
    monitor-exit v2

    .line 2596
    const/4 v1, 0x0

    goto :goto_0

    .line 2595
    .end local v0    # "lType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 12
    .param p1, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    const/4 v9, 0x0

    .line 2600
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v8, v9

    .line 2650
    :goto_0
    return v8

    .line 2603
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2605
    .local v6, "token":J
    const/4 v3, 0x0

    .line 2606
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v5

    .line 2607
    .local v5, "iconPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2608
    .local v1, "deleted":Z
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "badge icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    if-eqz v5, :cond_6

    .line 2610
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2611
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2612
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "badge icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :goto_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v5

    .line 2615
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCustomHomeScreenWallpaper icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    if-eqz v5, :cond_2

    .line 2617
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2618
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2619
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "home screen wall paper icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    .line 2621
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v5

    .line 2622
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCustomLockScreenWallpaper icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    if-eqz v5, :cond_3

    .line 2624
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2625
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2626
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lock screen wall paper icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v3

    .line 2628
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_3
    :try_start_5
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v5

    .line 2629
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCustomStatusIcon icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    if-eqz v5, :cond_4

    .line 2631
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2632
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2633
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "custom status icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v3

    .line 2635
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_4
    :try_start_7
    instance-of v8, p1, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v8, :cond_5

    .line 2636
    move-object v0, p1

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v5

    .line 2637
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFolderHeaderIcon icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    if-eqz v5, :cond_5

    .line 2639
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2640
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2641
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "folder header icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :goto_2
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2646
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2647
    const/4 v8, 0x1

    .line 2652
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2648
    .end local v1    # "deleted":Z
    .end local v5    # "iconPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2649
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_9
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2652
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v9

    .line 2650
    goto/16 :goto_0

    .line 2652
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 2648
    .restart local v1    # "deleted":Z
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "iconPath":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_5
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    :cond_6
    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private removeContainer(IZ)I
    .locals 22
    .param p1, "containerId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 2198
    const/16 v13, -0x4b1

    .line 2199
    .local v13, "retVal":I
    const-wide/16 v16, 0x0

    .line 2201
    .local v16, "token":J
    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 2202
    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v20, "removeContainer: CONTAINER_CREATION_IN_PROGRESS is in progress."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    const/16 v19, -0x3f6

    .line 2254
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2262
    :goto_1
    return v19

    .line 2206
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2207
    if-nez p2, :cond_1

    .line 2208
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v11

    .line 2209
    .local v11, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v11, :cond_1

    .line 2210
    iget-boolean v0, v11, Landroid/content/pm/PersonaInfo;->removePersona:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 2211
    const/16 v19, -0x4b2

    goto :goto_0

    .line 2215
    .end local v11    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v10

    .line 2216
    .local v10, "ownerUid":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainerOwnerRelationship(I)Z

    .line 2217
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v18

    .line 2218
    .local v18, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v18, :cond_4

    .line 2219
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2220
    new-instance v19, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v20}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v8

    .line 2221
    .local v8, "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v8, :cond_2

    .line 2222
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    .line 2223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2224
    .local v6, "hwKeyId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v19, 0xbb

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2225
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v6, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->allowHardwareKeys(Ljava/util/List;Z)Ljava/util/List;

    .line 2227
    .end local v6    # "hwKeyId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v20, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2228
    .local v5, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 2229
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/enterprise/RestrictionPolicy;->allowFactoryReset(Z)Z

    .line 2232
    .end local v5    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_3
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->removePersonaId(I)V

    .line 2233
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 2234
    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v20, "removeContainer: configuration list updated successfully."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_4
    new-instance v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2238
    .local v4, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v15

    .line 2239
    .local v15, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    .line 2240
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v9

    .line 2241
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v9, :cond_6

    .line 2242
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 2243
    .local v12, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v12}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 2244
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_5

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2245
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2251
    .end local v4    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v10    # "ownerUid":I
    .end local v12    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v15    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v18    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_0
    move-exception v3

    .line 2252
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2254
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2256
    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "removeContainer("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerRemovalIntent(II)V

    move/from16 v19, v13

    .line 2262
    goto/16 :goto_1

    .line 2249
    .restart local v4    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v10    # "ownerUid":I
    .restart local v15    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v18    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_6
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->removePersona(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v13

    goto :goto_3

    .line 2254
    .end local v4    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v10    # "ownerUid":I
    .end local v15    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v18    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v19

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method private removeContainerOwnerRelationship(I)Z
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    .line 1874
    const/4 v2, 0x0

    .line 1875
    .local v2, "retVal":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 1877
    .local v1, "ownerUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeMUMContainer(I)Z

    move-result v2

    .line 1878
    if-eqz v2, :cond_0

    .line 1879
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container removed from ownership DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :goto_0
    return v2

    .line 1881
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container not found or Failed to remove container from DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at removeContainerOwnerRelationship "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 6
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1832
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1834
    const/4 v2, 0x0

    .line 1835
    .local v2, "match":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1836
    .local v1, "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1837
    move-object v2, v1

    .line 1841
    .end local v1    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_1
    if-eqz v2, :cond_2

    .line 1842
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCreationParams ->  :  match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1844
    const/4 v3, 0x1

    .line 1847
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 4570
    if-nez p0, :cond_1

    .line 4571
    const/4 p0, 0x0

    .line 4577
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 4573
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4574
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 4575
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .locals 7
    .param p1, "adminUid"    # I
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
    .line 4494
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4495
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4496
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4498
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerOnly_wifiAP"

    const-string/jumbo v5, "wifiSSIDforKNOX"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4500
    return-void
.end method

.method private sendContainerAdminLockIntent(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.locked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 837
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    :cond_0
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 840
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method private sendContainerAdminUnlockIntent(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 845
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.unlocked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 847
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    :cond_0
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method private sendContainerCreationIntent(Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "retCode"    # I
    .param p3, "requestId"    # I
    .param p4, "uid"    # I
    .param p5, "adminUid"    # I

    .prologue
    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.container.creation.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 745
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    :cond_0
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    const-string v1, "requestId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    const-string v1, "admin_uid"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 750
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method private sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "requestId"    # I
    .param p4, "adminUid"    # I
    .param p5, "uid"    # I

    .prologue
    .line 773
    if-lez p2, :cond_2

    .line 775
    new-instance v1, Landroid/content/Intent;

    const-string v4, "enterprise.container.created.nonactive"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v1, "creationSuccess":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 778
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    :cond_0
    const-string v4, "containerid"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v4, "admin_uid"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 785
    new-instance v3, Landroid/content/Intent;

    const-string v4, "enterprise.container.setup.success"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 787
    .local v3, "setupSuccess":Landroid/content/Intent;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 788
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    :cond_1
    const-string v4, "containerid"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 791
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 812
    .end local v1    # "creationSuccess":Landroid/content/Intent;
    .end local v3    # "setupSuccess":Landroid/content/Intent;
    :goto_0
    return-void

    .line 793
    :cond_2
    const/16 v4, -0x3f9

    if-ne p2, v4, :cond_4

    .line 794
    new-instance v0, Landroid/content/Intent;

    const-string v4, "enterprise.container.cancelled"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v0, "creationCancelled":Landroid/content/Intent;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 797
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    :cond_3
    const-string v4, "containerid"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    const-string v4, "requestid"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    .line 804
    .end local v0    # "creationCancelled":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v4, "enterprise.container.setup.failure"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 806
    .local v2, "creationfailure":Landroid/content/Intent;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 807
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    :cond_5
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendContainerRemovalIntent(II)V
    .locals 5
    .param p1, "retVal"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 815
    new-instance v0, Landroid/content/Intent;

    const-string v2, "enterprise.container.remove.progress"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 817
    .local v0, "removeInProgress":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 821
    const/4 v1, 0x0

    .line 822
    .local v1, "removeStatus":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 823
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "removeStatus":Landroid/content/Intent;
    const-string v2, "enterprise.container.uninstalled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .restart local v1    # "removeStatus":Landroid/content/Intent;
    :goto_0
    const-string v2, "containerid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 832
    return-void

    .line 826
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "removeStatus":Landroid/content/Intent;
    const-string v2, "enterprise.container.unmountfailure"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "removeStatus":Landroid/content/Intent;
    goto :goto_0
.end method

.method private sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I
    .param p4, "oldState"    # I
    .param p5, "newState"    # I

    .prologue
    .line 756
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.enterprise.container_state_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 758
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 761
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 763
    const-string v2, "container_old_state"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 764
    const-string v2, "container_new_state"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 766
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 767
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method private setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    .line 2933
    const/4 v2, 0x0

    .line 2934
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2935
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2936
    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2937
    const-string v4, "propertyName"

    const-string v5, "EnforceAuthForContainer"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " EnforceAuthForContainer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 2941
    .local v0, "count":I
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setEnforceAuthForContainer: already row present ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    if-lez v0, :cond_2

    .line 2944
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2945
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2946
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 2953
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v2, :cond_0

    .line 2954
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setEnforceAuthForContainer failed : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :cond_0
    return v2

    .line 2941
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2949
    :cond_2
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2950
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_1
.end method

.method private setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 37
    .param p1, "adminComp"    # Landroid/content/ComponentName;
    .param p2, "adminUid"    # I
    .param p3, "userId"    # I
    .param p4, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    .line 1940
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v26

    .line 1941
    .local v26, "pinfo":Landroid/content/pm/PersonaInfo;
    if-nez v26, :cond_0

    .line 1942
    const/16 v34, 0x0

    .line 2185
    .end local v26    # "pinfo":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v34

    .line 1945
    .restart local v26    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v9

    .line 1946
    .local v9, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v35, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v35

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v9, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v20

    .line 1948
    .local v20, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-nez v20, :cond_1

    .line 1949
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v35, "failed to get container manager"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const/16 v34, 0x0

    goto :goto_0

    .line 1953
    :cond_1
    if-nez p4, :cond_2

    .line 1954
    new-instance v34, Ljava/lang/NullPointerException;

    const-string v35, "Container type object is null."

    invoke-direct/range {v34 .. v35}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v34
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2181
    .end local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v20    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v26    # "pinfo":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v7

    .line 2182
    .local v7, "e":Ljava/lang/Exception;
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Exception:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const/16 v34, 0x0

    goto :goto_0

    .line 1955
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v20    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v26    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_2
    if-gtz p3, :cond_3

    .line 1956
    :try_start_1
    new-instance v34, Ljava/lang/NullPointerException;

    const-string v35, "PersonaInfo is null."

    invoke-direct/range {v34 .. v35}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 1958
    :cond_3
    const-string v34, "KNOX"

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_15

    .line 1959
    const-string v34, "/system/container/resources/knox_icon.png"

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    .line 1964
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v29

    .line 1966
    .local v29, "quality":I
    if-lez v29, :cond_4

    .line 1967
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordQuality: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 1971
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v10

    .line 1972
    .local v10, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_5

    .line 1973
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setForbiddenStrings: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Landroid/app/enterprise/PasswordPolicy;->setForbiddenStrings(Ljava/util/List;)Z

    .line 1977
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v24

    .line 1978
    .local v24, "patternRestriction":Ljava/lang/String;
    if-eqz v24, :cond_6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_6

    .line 1979
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setRequiredPasswordPattern: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setRequiredPasswordPattern(Ljava/lang/String;)Z

    .line 1983
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v33

    .line 1984
    .local v33, "value":I
    if-lez v33, :cond_7

    .line 1985
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumCharacterOccurrences: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumCharacterOccurrences(I)Z

    .line 1989
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v33

    .line 1990
    if-lez v33, :cond_8

    .line 1991
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumCharacterSequenceLength: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumCharacterSequenceLength(I)Z

    .line 1995
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v33

    .line 1996
    if-lez v33, :cond_9

    .line 1997
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumFailedPasswordsForWipe: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 2001
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v33

    .line 2002
    if-lez v33, :cond_a

    .line 2003
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumNumericSequenceLength: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumNumericSequenceLength(I)Z

    .line 2007
    :cond_a
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v33

    .line 2008
    if-lez v33, :cond_b

    .line 2009
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumLength: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 2013
    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v33

    .line 2014
    if-lez v33, :cond_c

    .line 2015
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumLetters: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 2019
    :cond_c
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v33

    .line 2020
    if-lez v33, :cond_d

    .line 2021
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumNonLetter: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 2025
    :cond_d
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v33

    .line 2026
    if-lez v33, :cond_e

    .line 2027
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumSymbols: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 2031
    :cond_e
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v33

    .line 2032
    if-lez v33, :cond_f

    .line 2033
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumTimeToLock: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/BasePasswordPolicy;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 2037
    :cond_f
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v33

    .line 2038
    if-lez v33, :cond_10

    .line 2039
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumUpperCase: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 2043
    :cond_10
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v33

    .line 2044
    if-lez v33, :cond_11

    .line 2045
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumLowerCase: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 2049
    :cond_11
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2050
    .local v5, "booleanVal":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-nez v34, :cond_12

    .line 2051
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setSimplePasswordEnabled: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    const-string v34, "device_policy"

    invoke-static/range {v34 .. v34}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v31

    check-cast v31, Lcom/android/server/DevicePolicyManagerService;

    .line 2054
    .local v31, "service":Lcom/android/server/DevicePolicyManagerService;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v34

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V

    .line 2057
    .end local v31    # "service":Lcom/android/server/DevicePolicyManagerService;
    :cond_12
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMultifactorAuthenticationEnabled()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2058
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_13

    .line 2059
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set enforceMultifactorAuthentication: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v34

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->enforceMultifactorAuthentication(Z)V

    .line 2063
    :cond_13
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v30

    .line 2064
    .local v30, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v32

    .line 2065
    .local v32, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v32, :cond_17

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_17

    .line 2066
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 2067
    .local v28, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 2068
    .local v23, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_14
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2069
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v23, Ljava/util/List;

    .line 2070
    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v23, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_14

    .line 2071
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy setAllowChangeDataSyncPolicy for "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Pair;

    .line 2074
    .local v22, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v35

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/RCPPolicy;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)Z

    goto :goto_3

    .line 1961
    .end local v5    # "booleanVal":Ljava/lang/Boolean;
    .end local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v24    # "patternRestriction":Ljava/lang/String;
    .end local v28    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "quality":I
    .end local v30    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .end local v32    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v33    # "value":I
    :cond_15
    const-string v34, "/system/container/resources/knox_icon2.png"

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2077
    .restart local v5    # "booleanVal":Ljava/lang/Boolean;
    .restart local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v24    # "patternRestriction":Ljava/lang/String;
    .restart local v28    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "quality":I
    .restart local v30    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .restart local v32    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v33    # "value":I
    :cond_16
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 2082
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v28    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v32

    .line 2083
    if-eqz v32, :cond_1a

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_1a

    .line 2084
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2085
    .local v21, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 2086
    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_18
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2087
    .restart local v17    # "key":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v23, Ljava/util/List;

    .line 2088
    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v23, :cond_18

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_18

    .line 2089
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy setNotificationSyncPolicy for "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2091
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_19

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Pair;

    .line 2092
    .restart local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/RCPPolicy;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 2094
    .end local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_19
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    goto :goto_4

    .line 2099
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v21    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1a
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v25

    .line 2100
    .local v25, "personaIcon":Ljava/lang/String;
    if-eqz v25, :cond_1b

    const-string v34, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v34

    if-nez v34, :cond_1b

    .line 2102
    :try_start_2
    invoke-static/range {v25 .. v25}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2103
    .local v4, "bmp":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/PersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    .line 2104
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Persona Bitmap:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2111
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    :cond_1b
    :goto_6
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->setScreenCapture(Z)Z

    .line 2112
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->allowRemoteControl(Z)Z

    .line 2115
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2116
    .restart local v21    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2117
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2118
    .local v12, "handlerPkgName":Ljava/lang/String;
    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_1c

    .line 2119
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2121
    :cond_1c
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 2122
    .local v27, "pkg":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    goto :goto_7

    .line 2105
    .end local v12    # "handlerPkgName":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v21    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 2106
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Bitmap decodeFile:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2124
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v12    # "handlerPkgName":Ljava/lang/String;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v21    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    .line 2125
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    .line 2126
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    .line 2129
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 2131
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v35, "Disabling google apps from container"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v11

    .line 2133
    .local v11, "googlePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_23

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_23

    .line 2134
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Google apps size "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 2136
    .local v6, "disablePackages":[Ljava/lang/String;
    if-eqz v6, :cond_22

    array-length v0, v6

    move/from16 v34, v0

    if-lez v34, :cond_22

    .line 2137
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v6, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 2145
    .end local v6    # "disablePackages":[Ljava/lang/String;
    :goto_8
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    .line 2146
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/kioskmode/KioskMode;->allowTaskManager(Z)Z

    .line 2150
    move-object/from16 v0, p4

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v16, v0

    .line 2151
    .local v16, "isKioskModeEnabled":Z
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isKioskModeEnabled- "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    if-eqz v16, :cond_21

    .line 2153
    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v19, v0

    .line 2154
    .local v19, "kioskType":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->allowSettingsChanges(Z)Z

    .line 2155
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->allowStatusBarExpansion(Z)Z

    .line 2156
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->setHomeKeyState(Z)Z

    .line 2158
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v34

    if-eqz v34, :cond_1e

    .line 2159
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/kioskmode/KioskMode;->clearAllNotifications()Z

    .line 2161
    :cond_1e
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    .line 2162
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 2163
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/kioskmode/KioskMode;->wipeRecentTasks()Z

    .line 2166
    :cond_1f
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v35, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v35

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v8, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2167
    .local v8, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v8, :cond_20

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    if-eqz v34, :cond_20

    .line 2168
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->allowFactoryReset(Z)Z

    .line 2172
    :cond_20
    new-instance v34, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v35, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static/range {v34 .. v35}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v18

    .line 2173
    .local v18, "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v18, :cond_21

    .line 2174
    const/16 v34, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    .line 2175
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2176
    .local v13, "hwKeyId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v34, 0xbb

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2177
    const/16 v34, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-virtual {v0, v13, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->allowHardwareKeys(Ljava/util/List;Z)Ljava/util/List;

    .line 2185
    .end local v8    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v13    # "hwKeyId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v19    # "kioskType":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    :cond_21
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 2139
    .end local v16    # "isKioskModeEnabled":Z
    .restart local v6    # "disablePackages":[Ljava/lang/String;
    :cond_22
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v35, "Error converting List[] to String[]"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2142
    .end local v6    # "disablePackages":[Ljava/lang/String;
    :cond_23
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v35, "No Google apps to disable"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8
.end method

.method private static translateStatus(I)I
    .locals 0
    .param p0, "status"    # I

    .prologue
    .line 1035
    packed-switch p0, :pswitch_data_0

    .line 1067
    .end local p0    # "status":I
    :goto_0
    return p0

    .line 1039
    .restart local p0    # "status":I
    :pswitch_0
    const/4 p0, -0x1

    goto :goto_0

    .line 1045
    :pswitch_1
    const/16 p0, 0x5f

    goto :goto_0

    .line 1051
    :pswitch_2
    const/16 p0, 0x5b

    goto :goto_0

    .line 1055
    :pswitch_3
    const/16 p0, 0x5a

    goto :goto_0

    .line 1060
    :pswitch_4
    const/16 p0, 0x5d

    goto :goto_0

    .line 1064
    :pswitch_5
    const/16 p0, 0x5e

    goto :goto_0

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5f

    .line 4400
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

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

    .line 4401
    const/4 v0, 0x0

    .line 4402
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4403
    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4407
    :goto_0
    return-object v0

    .line 4405
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private unregisterPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    .line 1029
    .local v0, "observer":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;
    if-eqz v0, :cond_0

    .line 1030
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/PersonaManager;->unregisterObserver(Landroid/content/pm/IPersonaObserver;)V

    .line 1032
    :cond_0
    return-void
.end method

.method private updateConfigurationXml()V
    .locals 3

    .prologue
    .line 2190
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    monitor-enter v2

    .line 2191
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2192
    .local v0, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->setTypeList(Ljava/util/List;)V

    .line 2193
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->writeToXml()V

    .line 2194
    monitor-exit v2

    .line 2195
    return-void

    .line 2194
    .end local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    .locals 10
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "retVal"    # I
    .param p3, "adminUid"    # I

    .prologue
    const/4 v9, 0x3

    .line 716
    if-nez p1, :cond_0

    .line 717
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "updateContainerCreationStatus: creation params: NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getCreatorUid()I

    move-result v1

    .line 721
    .local v1, "creatorUid":I
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateContainerCreationStatus retVal: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "admin uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "creator Uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 723
    .local v3, "msg":Landroid/os/Message;
    const/4 v6, 0x4

    new-array v0, v6, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v9

    .line 724
    .local v0, "arguments":[Ljava/lang/Integer;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 725
    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v7

    .line 726
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    .line 727
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 731
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-virtual {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->reset()V

    .line 732
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 733
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Process kill observer unregistered."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 735
    .end local v4    # "token":J
    :catch_0
    move-exception v2

    .line 736
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NullPointerException :("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 737
    :catch_1
    move-exception v2

    .line 738
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException :("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public addConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "types"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    .line 2517
    const/4 v2, 0x0

    .line 2518
    .local v2, "uid":I
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v6, "Activate Container permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v4, :cond_1

    .line 2522
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2527
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2548
    :cond_0
    :goto_1
    return v3

    .line 2524
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    goto :goto_0

    .line 2530
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 2532
    .local v1, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v1, :cond_0

    .line 2537
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameter name :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfigurationTypeByName value :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2542
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2543
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addConfigurationTypeToList(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 2545
    :catch_0
    move-exception v0

    .line 2546
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addNetworkSSID(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4473
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4474
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNetworkSSID - ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    if-nez p2, :cond_1

    .line 4489
    :cond_0
    :goto_0
    return v2

    .line 4479
    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4481
    .local v0, "adminUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v1

    .line 4482
    .local v1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4484
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4485
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4486
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 4487
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public cancelCreateContainer(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 6
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1796
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelCreateContainer ->  :  adminParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const/4 v1, 0x0

    .line 1798
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v3

    .line 1799
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 1800
    .local v0, "match":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestState()I

    move-result v2

    if-nez v2, :cond_0

    .line 1801
    const/16 v2, -0x3f9

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1802
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v1

    .line 1803
    if-eqz v1, :cond_0

    .line 1804
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelCreateContainer ->  :  result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_0
    monitor-exit v3

    .line 1808
    return v1

    .line 1807
    .end local v0    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearNetworkSSID(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4546
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4547
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearNetworkSSID - admin UID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4551
    .local v0, "adminUid":I
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v6

    .line 4552
    .local v1, "columns":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 4554
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerOnly_wifiAP"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public createContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "adminParam"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .prologue
    .line 1616
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "createContainer ->  :  cxtInfo:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", type-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",adminParam-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",flags-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isTIMAEnabled()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1619
    const/16 v13, -0x3fa

    .line 1773
    :cond_0
    :goto_0
    return v13

    .line 1621
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTIMAStatus()I

    move-result v13

    .line 1622
    .local v13, "tima_code":I
    if-eqz v13, :cond_2

    .line 1623
    if-lez v13, :cond_0

    .line 1625
    mul-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 1631
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEnoughMemoryToCreateContainer()Z

    move-result v20

    if-nez v20, :cond_3

    .line 1632
    const/16 v13, -0x3f3

    goto :goto_0

    .line 1635
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1636
    const/16 v6, -0x3f6

    .line 1637
    .local v6, "id":I
    if-eqz p3, :cond_6

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1638
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v22, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v23, "Activate Container permission"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    :goto_1
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    if-lez v20, :cond_5

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1646
    :cond_5
    sget-object v22, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bad arguments: caller uid: "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez p1, :cond_7

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v23, " type: "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    monitor-exit v21

    move v13, v6

    goto/16 :goto_0

    .line 1642
    :cond_6
    const-string v20, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_1

    .line 1774
    .end local v13    # "tima_code":I
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 1646
    .restart local v13    # "tima_code":I
    :cond_7
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_2

    .line 1650
    :cond_8
    const/16 v19, 0x0

    .line 1651
    .local v19, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1652
    .local v3, "creatorUid":I
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    if-lez v20, :cond_9

    .line 1653
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    .line 1658
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1662
    .local v14, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v20

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1663
    new-instance v20, Ljava/lang/SecurityException;

    const-string v22, "Admin inside container cannot create another container"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1655
    .end local v14    # "token":J
    :cond_9
    move/from16 v19, v3

    goto :goto_3

    .line 1668
    .restart local v14    # "token":J
    :cond_a
    :try_start_2
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "createContainer ->  :  uid -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v20

    if-eqz v20, :cond_b

    .line 1671
    const/16 v13, -0x3fc

    .line 1687
    .end local v13    # "tima_code":I
    :try_start_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1671
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1674
    .restart local v13    # "tima_code":I
    :cond_b
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v20

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v11

    .line 1675
    .local v11, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v11, :cond_c

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_c

    .line 1676
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Containers max limit reached, returning.."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Personasize exclude dying : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1678
    const/16 v13, -0x3f4

    .line 1687
    .end local v13    # "tima_code":I
    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1678
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1679
    .restart local v13    # "tima_code":I
    :cond_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_18

    .line 1680
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpAsString()V

    .line 1681
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Creation already in progress, returning.."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1682
    const/16 v13, -0x3f8

    .line 1687
    .end local v13    # "tima_code":I
    :try_start_7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1682
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1684
    .end local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v13    # "tima_code":I
    :catch_0
    move-exception v4

    .line 1685
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getPersonas exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1687
    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1690
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v18

    .line 1691
    .local v18, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-nez v18, :cond_d

    .line 1692
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v18

    .line 1695
    :cond_d
    const/4 v8, 0x0

    .line 1696
    .local v8, "name":Ljava/lang/String;
    if-nez v18, :cond_e

    .line 1697
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "TYPE with name "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " not found!!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    const/16 v13, -0x3f6

    monitor-exit v21

    goto/16 :goto_0

    .line 1687
    .end local v8    # "name":Ljava/lang/String;
    .end local v18    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_1
    move-exception v20

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 1700
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v18    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_e
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Type object firmware version:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Device firmware version:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v20

    if-eqz v20, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 1704
    const/16 v13, -0x3fb

    monitor-exit v21

    goto/16 :goto_0

    .line 1706
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v8

    .line 1707
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1708
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1709
    .local v9, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v20

    if-nez v20, :cond_11

    .line 1710
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v20

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 1711
    invoke-virtual {v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 1718
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_12
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 1719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v16

    .line 1721
    .local v16, "token1":J
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isKioskEnabledOnOwner()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v20

    if-eqz v20, :cond_13

    .line 1722
    const/16 v13, -0x3fe

    .line 1735
    .end local v13    # "tima_code":I
    :try_start_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1722
    monitor-exit v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 1724
    .restart local v13    # "tima_code":I
    :cond_13
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v20

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v11

    .line 1725
    .restart local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v11, :cond_14

    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v20

    if-lez v20, :cond_14

    .line 1726
    const/16 v13, -0x3fd

    .line 1735
    .end local v13    # "tima_code":I
    :try_start_d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1726
    monitor-exit v21

    goto/16 :goto_0

    .line 1729
    .restart local v13    # "tima_code":I
    :cond_14
    if-eqz p3, :cond_17

    .line 1730
    const/16 v13, -0x3ff

    .line 1735
    .end local v13    # "tima_code":I
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1730
    monitor-exit v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 1732
    .end local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v13    # "tima_code":I
    :catch_1
    move-exception v4

    .line 1733
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_e
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getPersonas exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1735
    :try_start_f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1739
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v16    # "token1":J
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v12

    .line 1740
    .local v12, "requestId":I
    new-instance v10, Lcom/sec/knox/container/ContainerCreationParams;

    invoke-direct {v10}, Lcom/sec/knox/container/ContainerCreationParams;-><init>()V

    .line 1741
    .local v10, "params":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v10, v12}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestId(I)V

    .line 1742
    invoke-virtual {v10, v8}, Lcom/sec/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    .line 1743
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminUid(I)V

    .line 1744
    invoke-virtual {v10, v3}, Lcom/sec/knox/container/ContainerCreationParams;->setCreatorUid(I)V

    .line 1745
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminParam(Ljava/lang/String;)V

    .line 1746
    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setFlags(I)V

    .line 1747
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1749
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1750
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1751
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Process kill observer registered."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1757
    :try_start_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1759
    :goto_7
    const/4 v7, 0x0

    .line 1761
    .local v7, "msg":Landroid/os/Message;
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    const/16 v22, 0x100

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 1762
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Calling handler MSG_START_MIGRATION_WIZARD"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1770
    :goto_8
    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1773
    monitor-exit v21

    move v13, v12

    goto/16 :goto_0

    .line 1735
    .end local v7    # "msg":Landroid/os/Message;
    .end local v10    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    .end local v12    # "requestId":I
    .restart local v16    # "token1":J
    :catchall_2
    move-exception v20

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1752
    .end local v16    # "token1":J
    .restart local v10    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    .restart local v12    # "requestId":I
    :catch_2
    move-exception v4

    .line 1753
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_12
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NullPointerException :("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1757
    :try_start_13
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 1754
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v4

    .line 1755
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_14
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RemoteException :("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1757
    :try_start_15
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v20

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 1767
    .restart local v7    # "msg":Landroid/os/Message;
    :cond_16
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Calling handler MSG_START_SETUP_WIZARD"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    goto/16 :goto_8

    .line 1735
    .end local v7    # "msg":Landroid/os/Message;
    .end local v10    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    .end local v12    # "requestId":I
    .restart local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v16    # "token1":J
    :cond_17
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    .line 1687
    .end local v8    # "name":Ljava/lang/String;
    .end local v16    # "token1":J
    .end local v18    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_18
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_4
.end method

.method public createContainerInternal(Lcom/sec/knox/container/ContainerCreationParams;)I
    .locals 54
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1158
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createContainerInternal --> requestId:"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/16 v32, -0x3f6

    .line 1160
    .local v32, "id":I
    const/4 v6, 0x0

    .line 1161
    .local v6, "containerName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1162
    .local v10, "type":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1163
    .local v11, "adminParam":Ljava/lang/String;
    const/16 v29, 0x0

    .line 1164
    .local v29, "flags":I
    const/16 v52, 0x0

    .line 1165
    .local v52, "uid":I
    const/16 v51, 0x0

    .line 1166
    .local v51, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v37, 0x0

    .line 1167
    .local v37, "isUserManaged":Z
    const/16 v36, 0x0

    .line 1168
    .local v36, "isLightWeightContainer":Z
    const/16 v46, 0x0

    .line 1169
    .local v46, "requestFound":Z
    const/16 v35, 0x0

    .line 1170
    .local v35, "isKioskModeEnabled":Z
    if-nez p1, :cond_1

    .line 1171
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "ContainerCreationParams is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v33, v32

    .line 1422
    .end local v32    # "id":I
    .local v33, "id":I
    :goto_1
    return v33

    .line 1158
    .end local v6    # "containerName":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "adminParam":Ljava/lang/String;
    .end local v29    # "flags":I
    .end local v33    # "id":I
    .end local v35    # "isKioskModeEnabled":Z
    .end local v36    # "isLightWeightContainer":Z
    .end local v37    # "isUserManaged":Z
    .end local v46    # "requestFound":Z
    .end local v51    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v52    # "uid":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 1175
    .restart local v6    # "containerName":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "adminParam":Ljava/lang/String;
    .restart local v29    # "flags":I
    .restart local v32    # "id":I
    .restart local v35    # "isKioskModeEnabled":Z
    .restart local v36    # "isLightWeightContainer":Z
    .restart local v37    # "isUserManaged":Z
    .restart local v46    # "requestFound":Z
    .restart local v51    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v52    # "uid":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1176
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminParam()Ljava/lang/String;

    move-result-object v11

    .line 1177
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getFlags()I

    move-result v29

    .line 1178
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v51

    .line 1179
    invoke-virtual/range {v51 .. v51}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1180
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v52

    .line 1181
    invoke-virtual/range {v51 .. v51}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v37

    .line 1183
    move-object/from16 v0, v51

    instance-of v5, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_2

    .line 1184
    const/16 v35, 0x1

    .line 1186
    :cond_2
    move-object/from16 v0, v51

    instance-of v5, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v5, :cond_3

    .line 1187
    const/16 v36, 0x1

    .line 1190
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v7

    .line 1191
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v46

    .line 1192
    if-nez v46, :cond_4

    .line 1193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1194
    monitor-exit v7

    move/from16 v33, v32

    .end local v32    # "id":I
    .restart local v33    # "id":I
    goto :goto_1

    .line 1196
    .end local v33    # "id":I
    .restart local v32    # "id":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    move/from16 v24, v52

    .line 1201
    .local v24, "creatorUid":I
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createContainerInternal: type: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "adminParam-"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, ",flags-"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " uid: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v49

    .line 1204
    .local v49, "token":J
    :try_start_1
    new-instance v30, Ljava/io/File;

    const-string v5, "/system/container/KnoxSecureHandler.apk"

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1205
    .local v30, "handlerApk":Ljava/io/File;
    new-instance v53, Ljava/io/File;

    const-string v5, "/system/container/ContainerAgent2.apk"

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v53, "wizardApk":Ljava/io/File;
    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 1207
    .local v12, "handlerApkUri":Landroid/net/Uri;
    invoke-static/range {v53 .. v53}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 1209
    .local v13, "wizardApkUri":Landroid/net/Uri;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v51

    .line 1210
    if-nez v51, :cond_5

    .line 1211
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v51

    .line 1213
    :cond_5
    if-nez v51, :cond_6

    .line 1214
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TYPE with name "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " not found!!"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1417
    invoke-static/range {v49 .. v50}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v33, v32

    .line 1216
    .end local v32    # "id":I
    .restart local v33    # "id":I
    goto/16 :goto_1

    .line 1197
    .end local v12    # "handlerApkUri":Landroid/net/Uri;
    .end local v13    # "wizardApkUri":Landroid/net/Uri;
    .end local v24    # "creatorUid":I
    .end local v30    # "handlerApk":Ljava/io/File;
    .end local v33    # "id":I
    .end local v49    # "token":J
    .end local v53    # "wizardApk":Ljava/io/File;
    .restart local v32    # "id":I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1219
    .restart local v12    # "handlerApkUri":Landroid/net/Uri;
    .restart local v13    # "wizardApkUri":Landroid/net/Uri;
    .restart local v24    # "creatorUid":I
    .restart local v30    # "handlerApk":Ljava/io/File;
    .restart local v49    # "token":J
    .restart local v53    # "wizardApk":Ljava/io/File;
    :cond_6
    const/16 v44, 0x0

    .line 1220
    .local v44, "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/16 v39, 0x0

    .line 1221
    .local v39, "matchedAdmin":Landroid/content/ComponentName;
    const/16 v22, 0x0

    .line 1222
    .local v22, "adminActInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v15, 0x0

    .line 1223
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/admin/DevicePolicyManager;

    .line 1225
    .local v25, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {v25 .. v25}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    .line 1226
    .local v20, "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Admin param :"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v41

    .line 1229
    .local v41, "pm":Landroid/content/pm/PackageManager;
    if-nez v11, :cond_e

    if-eqz v20, :cond_e

    .line 1230
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v48

    .line 1231
    .local v48, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v43, 0x0

    .line 1233
    .local v43, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :try_start_4
    invoke-static/range {v52 .. v52}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v43

    .line 1237
    :goto_2
    if-eqz v43, :cond_a

    .line 1238
    :try_start_5
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1239
    .local v42, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v42 .. v42}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v52

    if-ne v5, v0, :cond_7

    .line 1240
    invoke-virtual/range {v42 .. v42}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v39

    .line 1241
    invoke-virtual/range {v42 .. v42}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 1242
    move-object/from16 v44, v42

    goto :goto_3

    .line 1234
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v42    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    :catch_0
    move-exception v26

    .line 1235
    .local v26, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getting proxyadmin list failed:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1414
    .end local v12    # "handlerApkUri":Landroid/net/Uri;
    .end local v13    # "wizardApkUri":Landroid/net/Uri;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v20    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v22    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v30    # "handlerApk":Ljava/io/File;
    .end local v39    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v41    # "pm":Landroid/content/pm/PackageManager;
    .end local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v44    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v53    # "wizardApk":Ljava/io/File;
    :catch_1
    move-exception v26

    .line 1415
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1417
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_4
    invoke-static/range {v49 .. v50}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1419
    if-gtz v32, :cond_9

    .line 1420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    :cond_9
    move/from16 v33, v32

    .line 1422
    .end local v32    # "id":I
    .restart local v33    # "id":I
    goto/16 :goto_1

    .line 1247
    .end local v33    # "id":I
    .restart local v12    # "handlerApkUri":Landroid/net/Uri;
    .restart local v13    # "wizardApkUri":Landroid/net/Uri;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v22    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v30    # "handlerApk":Ljava/io/File;
    .restart local v32    # "id":I
    .restart local v39    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v41    # "pm":Landroid/content/pm/PackageManager;
    .restart local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v44    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v53    # "wizardApk":Ljava/io/File;
    :cond_a
    if-nez v39, :cond_c

    .line 1248
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ComponentName;

    .line 1249
    .local v21, "admin":Landroid/content/ComponentName;
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v40

    .line 1250
    .local v40, "pName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current admin loop :"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1252
    if-eqz v40, :cond_b

    if-eqz v41, :cond_b

    .line 1254
    const/4 v5, 0x0

    :try_start_8
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v22

    .line 1258
    :goto_5
    if-eqz v22, :cond_b

    :try_start_9
    move-object/from16 v0, v22

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v52

    if-ne v5, v0, :cond_b

    .line 1259
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Admin found :"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "Uid: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    move-object/from16 v39, v21

    .line 1261
    new-instance v47, Landroid/content/Intent;

    invoke-direct/range {v47 .. v47}, Landroid/content/Intent;-><init>()V

    .line 1262
    .local v47, "resolveIntent":Landroid/content/Intent;
    move-object/from16 v0, v47

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1263
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v7, 0x80

    invoke-static/range {v52 .. v52}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    move-object/from16 v0, v47

    move/from16 v1, v16

    invoke-virtual {v5, v0, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v34

    .line 1265
    .local v34, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v34, :cond_c

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1266
    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 1274
    .end local v21    # "admin":Landroid/content/ComponentName;
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v34    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v40    # "pName":Ljava/lang/String;
    .end local v47    # "resolveIntent":Landroid/content/Intent;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_c
    if-eqz v39, :cond_d

    if-nez v15, :cond_e

    .line 1275
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1276
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown admin: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1417
    .end local v12    # "handlerApkUri":Landroid/net/Uri;
    .end local v13    # "wizardApkUri":Landroid/net/Uri;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v20    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v22    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v30    # "handlerApk":Ljava/io/File;
    .end local v39    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v41    # "pm":Landroid/content/pm/PackageManager;
    .end local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v44    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v53    # "wizardApk":Ljava/io/File;
    :catchall_1
    move-exception v5

    invoke-static/range {v49 .. v50}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1255
    .restart local v12    # "handlerApkUri":Landroid/net/Uri;
    .restart local v13    # "wizardApkUri":Landroid/net/Uri;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v21    # "admin":Landroid/content/ComponentName;
    .restart local v22    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v30    # "handlerApk":Ljava/io/File;
    .restart local v31    # "i$":Ljava/util/Iterator;
    .restart local v39    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v40    # "pName":Ljava/lang/String;
    .restart local v41    # "pm":Landroid/content/pm/PackageManager;
    .restart local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v44    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v53    # "wizardApk":Ljava/io/File;
    :catch_2
    move-exception v28

    .line 1256
    .local v28, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_a
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getting app info failed. package Name: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1280
    .end local v21    # "admin":Landroid/content/ComponentName;
    .end local v28    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v40    # "pName":Ljava/lang/String;
    .end local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_e
    move/from16 v0, v29

    int-to-long v8, v0

    .line 1281
    .local v8, "personaflags":J
    const/16 v45, -0x1

    .line 1282
    .local v45, "removeid":I
    if-eqz v37, :cond_f

    .line 1283
    const-wide/16 v16, 0x80

    or-long v8, v8, v16

    .line 1286
    :cond_f
    if-eqz v35, :cond_10

    .line 1287
    const-wide/16 v16, 0x400

    or-long v8, v8, v16

    .line 1289
    :cond_10
    if-eqz v36, :cond_11

    .line 1290
    const-wide/16 v16, 0x200

    or-long v8, v8, v16

    .line 1293
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v5 .. v13}, Landroid/os/PersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v32

    .line 1294
    if-lez v32, :cond_18

    .line 1295
    invoke-virtual/range {v51 .. v51}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->installDefaultApplications(ILjava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1296
    if-nez v11, :cond_16

    .line 1298
    :try_start_b
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Enabling proxy admins."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v27, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1300
    .local v27, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v14, 0x0

    .line 1301
    .local v14, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    if-eqz v44, :cond_15

    .line 1302
    new-instance v14, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v44 .. v44}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v18

    invoke-virtual/range {v44 .. v44}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v14 .. v19}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    .line 1308
    .restart local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_6
    move/from16 v0, v32

    move/from16 v1, v52

    invoke-static {v0, v1}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v5

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v52

    invoke-virtual {v0, v14, v5, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 1309
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 1310
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Activating proxy admins done."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1331
    .end local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v27    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_7
    if-lez v32, :cond_13

    .line 1333
    if-eqz v39, :cond_17

    .line 1334
    :try_start_c
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Admin container relationship added."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addContainerOwnerRelationship(II)Z

    .line 1336
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Setup default policy called."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v52

    move/from16 v3, v32

    move-object/from16 v4, v51

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1338
    move/from16 v45, v32

    .line 1339
    const/16 v32, -0x3f5

    .line 1341
    :cond_12
    if-lez v32, :cond_13

    if-eqz v11, :cond_13

    if-eqz v39, :cond_13

    invoke-virtual/range {v39 .. v39}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual/range {v39 .. v39}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1344
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v48

    .line 1346
    .restart local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-virtual/range {v39 .. v39}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v48

    move/from16 v1, v24

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->restoreContainerAdminData(ILjava/lang/String;I)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v5

    if-nez v5, :cond_13

    .line 1348
    move/from16 v45, v32

    .line 1349
    const/16 v32, -0x3f5

    .line 1368
    .end local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_13
    :goto_8
    if-lez v32, :cond_1a

    .line 1371
    :try_start_d
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v38

    .line 1372
    .local v38, "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v38, :cond_14

    .line 1373
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "***************************Writing to type object : "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "***************************Writing to type object :"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 1376
    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->removePersonaId(I)V

    .line 1377
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 1378
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "removeContainerId from create. Hmm fishy: configuration list updated successfully."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_14
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "***************************Writing to type object : "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "***************************Writing to type object :"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    if-eqz v11, :cond_19

    .line 1383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "knox-b2c-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->clone(Ljava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v23

    .line 1384
    .local v23, "cloneType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->addPersonaId(I)V

    .line 1388
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v52

    move/from16 v1, v32

    invoke-direct {v5, v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/16 v16, 0x0

    aput-object v23, v7, v16

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    .line 1389
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V

    .line 1390
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Byod case, cloning a new type"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    .end local v23    # "cloneType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :goto_9
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestState(I)V

    .line 1399
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1400
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v7, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    invoke-interface {v5, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    .line 1403
    .end local v38    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_3
    move-exception v26

    .line 1404
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_e
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error creating persona:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1405
    move/from16 v45, v32

    .line 1406
    const/16 v32, -0x3f5

    .line 1407
    goto/16 :goto_4

    .line 1306
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v27    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_15
    :try_start_f
    new-instance v14, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .restart local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_6

    .line 1311
    .end local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v27    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :catch_4
    move-exception v26

    .line 1313
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_10
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception cannot create or activate proxyadmins:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1314
    move/from16 v45, v32

    .line 1315
    const/16 v32, -0x3f5

    .line 1316
    goto/16 :goto_7

    .line 1319
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_16
    :try_start_11
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Admin is inside container. Need to find admin."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->getAdminUidForPersona(I)I

    move-result v52

    .line 1322
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->findMatchingComponent(II)Landroid/content/ComponentName;

    move-result-object v39

    .line 1323
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Admin found in findMatchingComponent: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v39 .. v39}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_7

    .line 1324
    :catch_5
    move-exception v26

    .line 1325
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_12
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception while getting admin id or finding admin removeContainer:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1327
    move/from16 v45, v32

    .line 1328
    const/16 v32, -0x3f5

    goto/16 :goto_7

    .line 1353
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_17
    :try_start_13
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "matchedAdmin is null. removeContainer"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1355
    move/from16 v45, v32

    .line 1356
    const/16 v32, -0x3f5

    goto/16 :goto_8

    .line 1358
    :catch_6
    move-exception v26

    .line 1360
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_14
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    move/from16 v45, v32

    .line 1362
    const/16 v32, -0x3f5

    .line 1363
    goto/16 :goto_8

    .line 1366
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_18
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Error creating persona."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_8

    .line 1392
    .restart local v38    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_19
    :try_start_15
    invoke-virtual/range {v51 .. v51}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 1393
    move-object/from16 v0, v51

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->addPersonaId(I)V

    .line 1394
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 1395
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_9

    .line 1409
    .end local v38    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1a
    const/16 v5, 0x64

    move/from16 v0, v45

    if-lt v0, v5, :cond_8

    .line 1410
    const/4 v5, 0x1

    :try_start_16
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_4
.end method

.method public createContainerMarkSuccess(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 4
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1780
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContainerMarkSuccess ->  : param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v2

    .line 1783
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 1784
    .local v0, "match":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_0

    .line 1786
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestState(I)V

    .line 1787
    const/4 v1, 0x1

    monitor-exit v2

    .line 1790
    :goto_0
    return v1

    .line 1789
    :cond_0
    monitor-exit v2

    .line 1790
    const/4 v1, 0x0

    goto :goto_0

    .line 1789
    .end local v0    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createContainerWithCallback(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "adminParam"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 1609
    sput-object p5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 1610
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public doSelfUninstall()V
    .locals 8

    .prologue
    .line 3084
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v6, "Activate Container permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3089
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3092
    .local v2, "token":J
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3099
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3100
    return-void

    .line 3095
    :catch_0
    move-exception v1

    .line 3096
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail doSelfUninstall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enforceMultifactorAuthentication(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3028
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3029
    if-eqz p1, :cond_0

    .line 3030
    const/4 v2, 0x0

    .line 3031
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3032
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3033
    const-string v4, "adminUid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3034
    const-string v4, "propertyName"

    const-string v7, "MultifactorAuthentication"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceMultifactorAuthentication: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MultifactorAuthentication"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3038
    .local v0, "count":I
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceMultifactorAuthentication: already row present ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    if-lez v0, :cond_2

    .line 3041
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3042
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3043
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 3050
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v2, :cond_3

    .line 3051
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enforceMultifactorAuthentication failed : result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :cond_0
    :goto_2
    return v6

    .restart local v0    # "count":I
    .restart local v2    # "result":Z
    .restart local v3    # "where":Landroid/content/ContentValues;
    :cond_1
    move v4, v6

    .line 3038
    goto :goto_0

    .line 3046
    :cond_2
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3047
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_1

    :cond_3
    move v6, v5

    .line 3054
    goto :goto_2
.end method

.method public forceResetPassword(Landroid/app/enterprise/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2420
    if-nez p1, :cond_0

    .line 2469
    :goto_0
    return v8

    .line 2423
    :cond_0
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "forceResetPassword: containerId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    const-string v10, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2428
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2429
    .local v2, "pinfo":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_2

    .line 2467
    .end local v2    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2432
    .restart local v2    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    iget v10, v2, Landroid/content/pm/PersonaInfo;->state:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_3

    iget-boolean v10, v2, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-ne v10, v9, :cond_4

    .line 2433
    :cond_3
    const-string v10, "password_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 2435
    .local v3, "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v3, :cond_1

    .line 2436
    const/4 v10, 0x0

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v10, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedForUser(II)I

    move-result v1

    .line 2438
    .local v1, "enforcePwdStatus":I
    if-lez v1, :cond_1

    .line 2439
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v10, v11, v12}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 2441
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v11, "forceResetPassword: cleared enforcepwdchange state."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2467
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v9

    .line 2443
    goto :goto_0

    .line 2447
    .end local v1    # "enforcePwdStatus":I
    .end local v3    # "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :cond_4
    :try_start_2
    iget-boolean v10, v2, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v10, :cond_5

    .line 2448
    const-string v10, "persona"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersonaManagerService;

    .line 2450
    .local v5, "service":Lcom/android/server/pm/PersonaManagerService;
    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lcom/android/server/pm/PersonaManagerService;->setResetPasswordState(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2467
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v9

    .line 2451
    goto :goto_0

    .line 2454
    .end local v5    # "service":Lcom/android/server/pm/PersonaManagerService;
    :cond_5
    :try_start_3
    const-string v10, "persona_state_manager"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersonaStateManagerService;

    .line 2456
    .local v5, "service":Lcom/android/server/pm/PersonaStateManagerService;
    if-eqz v5, :cond_1

    .line 2457
    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    new-instance v11, Landroid/content/pm/PersonaEvent;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-virtual {v5, v10, v11}, Lcom/android/server/pm/PersonaStateManagerService;->postEventForPersona(ILandroid/content/pm/PersonaEvent;)I

    move-result v4

    .line 2459
    .local v4, "result":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_1

    .line 2460
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v11, "forceResetPassword: successfully posted event"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2467
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v9

    .line 2461
    goto/16 :goto_0

    .line 2464
    .end local v2    # "pinfo":Landroid/content/pm/PersonaInfo;
    .end local v4    # "result":I
    .end local v5    # "service":Lcom/android/server/pm/PersonaStateManagerService;
    :catch_0
    move-exception v0

    .line 2465
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Failed to post force reset event"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2467
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public getConfigurationType(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2770
    const/4 v2, 0x0

    .line 2771
    .local v2, "uid":I
    if-eqz p1, :cond_1

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v5, :cond_1

    .line 2772
    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2773
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2779
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2780
    .local v3, "userHandle":I
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2781
    if-ne p2, v3, :cond_2

    .line 2782
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2799
    .end local v3    # "userHandle":I
    :cond_0
    :goto_1
    return-object v4

    .line 2775
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    goto :goto_0

    .line 2784
    .restart local v3    # "userHandle":I
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Caller inside persona ? : false throw exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No priviledge on containerId "

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2797
    .end local v3    # "userHandle":I
    :catch_0
    move-exception v1

    .line 2798
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

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

    .line 2788
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "userHandle":I
    :cond_3
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .line 2789
    .local v0, "cType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v5, 0x3e8

    if-eq v2, v5, :cond_4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-eq v5, v2, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-nez v5, :cond_0

    .line 2792
    :cond_4
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2474
    const/4 v0, 0x0

    .line 2475
    .local v0, "callingUid":I
    if-eqz p1, :cond_1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v2, :cond_1

    .line 2476
    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2477
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2481
    :goto_0
    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v1

    .line 2482
    .local v1, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-nez v1, :cond_0

    .line 2483
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v1

    .line 2485
    :cond_0
    if-nez v1, :cond_2

    .line 2486
    const/4 v2, 0x0

    .line 2488
    :goto_1
    return-object v2

    .line 2479
    .end local v1    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0

    .line 2488
    .restart local v1    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method public getConfigurationTypes(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2831
    const/4 v3, 0x0

    .line 2832
    .local v3, "uid":I
    if-eqz p1, :cond_3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v4, :cond_3

    .line 2833
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2834
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2838
    :goto_0
    const/4 v1, 0x0

    .line 2839
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxConfigurationType: input uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 2841
    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-nez v4, :cond_0

    .line 2842
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    if-nez v1, :cond_2

    .line 2844
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2846
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2836
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    .end local v2    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_0

    .line 2849
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_4
    return-object v1
.end method

.method public getContainerCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 2
    .param p1, "containerId"    # I

    .prologue
    .line 2822
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 2823
    .local v0, "params":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_0

    .line 2824
    invoke-virtual {v0}, Lcom/sec/knox/container/ContainerCreationParams;->clone()Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v1

    .line 2826
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainers(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2307
    const/4 v0, 0x0

    .line 2308
    .local v0, "callingUid":I
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_0

    .line 2309
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2310
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2314
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2312
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultConfigurationTypes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2806
    const/4 v1, 0x0

    .line 2807
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 2808
    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-nez v3, :cond_0

    .line 2809
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    if-nez v1, :cond_1

    .line 2811
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2813
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2816
    .end local v2    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_2
    return-object v1
.end method

.method public getEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2854
    if-eqz p1, :cond_2

    .line 2855
    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "propertyValue"

    aput-object v5, v0, v7

    .line 2858
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2859
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2860
    const-string v5, "propertyName"

    const-string v8, "EnforceAuthForContainer"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 2862
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2863
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 2865
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 2867
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2868
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 2880
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_0
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_0
    move v5, v7

    .line 2871
    goto :goto_0

    .end local v4    # "ret":Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 2876
    goto :goto_0

    .line 2879
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 2880
    goto :goto_0
.end method

.method public getHibernationTimeout(Landroid/app/enterprise/ContextInfo;)J
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    .line 4413
    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 4414
    if-eqz p1, :cond_2

    .line 4415
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "propertyValue"

    aput-object v5, v0, v11

    .line 4418
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4419
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4420
    const-string v5, "propertyName"

    const-string v8, "HibernationTimeout"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4421
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 4422
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4423
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 4425
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 4426
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "time=- "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4428
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-wide v5, v6

    .line 4440
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_0
    return-wide v5

    .line 4431
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    .line 4435
    .end local v4    # "ret":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getHibernationTimeout failed to get value from DB > returning true"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v6

    .line 4436
    goto :goto_0

    .line 4439
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getHibernationTimeout failed > returning true"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v6

    .line 4440
    goto :goto_0
.end method

.method public getNetworkSSID(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4522
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4523
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkSSID - adminUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4525
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 4526
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4527
    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4529
    .end local v0    # "aux":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getOwnContainers()[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .locals 15

    .prologue
    .line 2319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2320
    .local v0, "callingUid":I
    const/4 v9, 0x0

    .line 2321
    .local v9, "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    const/4 v3, 0x0

    .line 2322
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2324
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v8

    .line 2325
    .local v8, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v8, :cond_1

    .line 2326
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2327
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    const/4 v5, 0x0

    .line 2328
    .local v5, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    .line 2329
    .local v7, "pInfo":Landroid/content/pm/PersonaInfo;
    iget-object v12, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v13, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 2330
    .local v6, "ownerUid":I
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Persona found with id , creator uid, passed uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    if-ne v6, v0, :cond_0

    .line 2332
    new-instance v5, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .end local v5    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-direct {v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    .line 2333
    .restart local v5    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    iget v12, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v12}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    .line 2334
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    .line 2335
    iget-object v12, v7, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    .line 2336
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 2340
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v6    # "ownerUid":I
    .end local v7    # "pInfo":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 2341
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v8    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :goto_1
    :try_start_2
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getOwnContainers exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2343
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2345
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 2346
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-interface {v3, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    check-cast v9, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 2348
    .restart local v9    # "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_2
    return-object v9

    .line 2343
    :catchall_0
    move-exception v12

    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v8    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    goto :goto_3

    .line 2340
    .end local v8    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v5    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v8    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    goto :goto_2
.end method

.method public getStatus(Landroid/app/enterprise/ContextInfo;)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2353
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2354
    const/4 v1, -0x1

    .line 2355
    .local v1, "status":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2357
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonaState(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2361
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I

    move-result v4

    return v4

    .line 2358
    :catch_0
    move-exception v0

    .line 2359
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStatus exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2361
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isMultifactorAuthenticationEnforced(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2994
    if-eqz p1, :cond_2

    .line 2995
    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "propertyValue"

    aput-object v5, v0, v7

    .line 2998
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2999
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3000
    const-string v5, "propertyName"

    const-string v8, "MultifactorAuthentication"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 3002
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3003
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMultifactorAuthenticationEnforced: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EnforceAuthForContainer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 3007
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 3008
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMultifactorAuthenticationEnforced: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3010
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 3022
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_0
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_0
    move v5, v7

    .line 3013
    goto :goto_0

    .line 3017
    .end local v4    # "ret":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "getEnforceAuthForContainer failed to get value from DB > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 3018
    goto :goto_0

    .line 3021
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 3022
    goto :goto_0
.end method

.method public lockContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2368
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "lockContainer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2370
    const/4 v1, 0x0

    .line 2371
    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2373
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2374
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, p2}, Landroid/os/PersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2379
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2381
    return v1

    .line 2376
    :catch_0
    move-exception v0

    .line 2377
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API adminLockPersona "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2379
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 4352
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 4357
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdminRemoval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 4362
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreAdminRemoval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object v1

    .line 4365
    .local v1, "containerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4366
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting containers for owner Uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4369
    .local v0, "containerId":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4370
    :catch_0
    move-exception v2

    .line 4371
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4376
    .end local v0    # "containerId":Ljava/lang/Integer;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz p1, :cond_1

    .line 4377
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 4378
    .local v4, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    goto :goto_1

    .line 4381
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    return-void
.end method

.method public registerBroadcastReceiverIntent(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    .line 2886
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2888
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2889
    .local v0, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2890
    .local v5, "userId":I
    const/4 v2, 0x0

    .line 2891
    .local v2, "retVal":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 2892
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Invalid action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    const/4 v6, 0x0

    .line 2905
    :goto_0
    return v6

    .line 2895
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2897
    .local v3, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-virtual {v6, v5, p2, p3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->registerBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2903
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2905
    goto :goto_0

    .line 2899
    :catch_0
    move-exception v1

    .line 2900
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2903
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public removeConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 2577
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2578
    const/4 v0, 0x0

    .line 2579
    .local v0, "uid":I
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_0

    .line 2580
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2584
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 2582
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0
.end method

.method public removeContainer(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2269
    :try_start_0
    const-string v1, "removeContainer"

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2274
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2275
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I

    move-result v1

    .line 2277
    :goto_1
    return v1

    .line 2270
    :catch_0
    move-exception v0

    .line 2271
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEAMS invalidated caller. lets go for MDM. Printing stack anyway :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_0

    .line 2277
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/16 v1, -0x4b2

    goto :goto_1
.end method

.method public removeNetworkSSID(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 4503
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4504
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNetworkSSID - SSID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4506
    if-nez p2, :cond_0

    .line 4507
    const/4 v2, 0x0

    .line 4518
    :goto_0
    return v2

    .line 4510
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4512
    .local v0, "adminUid":I
    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4514
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v1

    .line 4515
    .local v1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4516
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 4518
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public resetContainerOnReboot(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 3065
    if-nez p1, :cond_0

    .line 3066
    const/4 v1, 0x0

    .line 3080
    :goto_0
    return v1

    .line 3068
    :cond_0
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3069
    const/4 v1, 0x0

    .line 3070
    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3072
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3073
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, p2}, Landroid/os/PersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3078
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3075
    :catch_0
    move-exception v0

    .line 3076
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API resetPersonaOnBoot "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3078
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2961
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2962
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-ne v6, p2, :cond_0

    .line 2989
    :goto_0
    return v4

    .line 2965
    :cond_0
    if-eqz p1, :cond_3

    .line 2966
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2968
    .local v2, "token":J
    if-nez p2, :cond_1

    .line 2969
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v6}, Landroid/os/PersonaManager;->disablePersonaKeyGuard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2970
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 2986
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2972
    :cond_1
    if-ne p2, v4, :cond_2

    .line 2973
    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    .line 2974
    .local v1, "ret":Z
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->enablePersonaKeyGuard(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2975
    if-eqz v1, :cond_2

    .line 2976
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->refreshTimer(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2983
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 2984
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2986
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_3
    move v4, v5

    .line 2989
    goto :goto_0

    .line 2979
    .restart local v1    # "ret":Z
    .restart local v2    # "token":J
    :cond_4
    if-eqz v1, :cond_2

    .line 2980
    const/4 v4, 0x0

    :try_start_3
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2986
    .end local v1    # "ret":Z
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setHibernationTimeout(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # J

    .prologue
    .line 4446
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 4448
    const/4 v2, 0x0

    .line 4449
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4450
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4451
    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4452
    const-string v4, "propertyName"

    const-string v5, "HibernationTimeout"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4453
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 4454
    .local v0, "count":I
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHibernationTimeout: already row present ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4455
    if-lez v0, :cond_2

    .line 4457
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4458
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "propertyValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4459
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 4466
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v2, :cond_0

    .line 4467
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHibernationTimeout failed : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    :cond_0
    return v2

    .line 4454
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 4462
    :cond_2
    const-string v4, "propertyValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4463
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_1
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 1079
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "SystemReady called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 1083
    new-instance v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    .line 1084
    return-void
.end method

.method public unlockContainer(Landroid/app/enterprise/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2386
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "unlockContainer"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const-string v11, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2388
    const/4 v7, 0x0

    .line 2389
    .local v7, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2391
    .local v8, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2392
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v11, v12}, Landroid/os/PersonaManager;->adminUnLockPersona(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 2397
    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2401
    if-eqz v7, :cond_2

    .line 2402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2403
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2404
    .local v10, "userId":I
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2405
    .local v6, "pkgNames":[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 2406
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 2407
    .local v5, "pkgName":Ljava/lang/String;
    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5, v11, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminUnlockIntent(Ljava/lang/String;II)V

    .line 2406
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2394
    .end local v0    # "adminUid":I
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "userId":I
    :catch_0
    move-exception v2

    .line 2395
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v12, "Failed at KnoxMUMContainerPolicy API adminUnLockPersona "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2397
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 2410
    .restart local v0    # "adminUid":I
    .restart local v6    # "pkgNames":[Ljava/lang/String;
    .restart local v10    # "userId":I
    :cond_1
    const/4 v11, 0x0

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminUnlockIntent(Ljava/lang/String;II)V

    .line 2415
    .end local v0    # "adminUid":I
    .end local v6    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "userId":I
    :cond_2
    return v7
.end method

.method public unregisterBroadcastReceiverIntent(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    .line 2909
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2911
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2912
    .local v0, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2913
    .local v5, "userId":I
    const/4 v2, 0x0

    .line 2914
    .local v2, "retVal":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 2915
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Invalid action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    const/4 v6, 0x0

    .line 2929
    :goto_0
    return v6

    .line 2918
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2920
    .local v3, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-virtual {v6, v5, p2, p3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->unregisterBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2927
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2929
    goto :goto_0

    .line 2923
    :catch_0
    move-exception v1

    .line 2924
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2927
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
