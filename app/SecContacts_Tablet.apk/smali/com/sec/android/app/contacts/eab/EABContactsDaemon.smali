.class public Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
.super Ljava/lang/Object;
.source "EABContactsDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;,
        Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;,
        Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdaterTask;,
        Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateNonVolteNumber;
    }
.end annotation


# static fields
.field public static final AVAILABILITY_4G_NOTCAPABLE:Ljava/lang/String; = "3"

.field public static final AVAILABILITY_OFF:Ljava/lang/String; = "1"

.field public static final AVAILABILITY_ON:Ljava/lang/String; = "0"

.field public static final AVAILABILITY_UNKNOWN:Ljava/lang/String; = "2"

.field private static final AVAIL_INDEX:I = 0x1

.field public static final CAPABILITY_4G_NOTCAPABLE:Ljava/lang/String; = "4"

.field public static final CAPABILITY_NOTPRESENT:Ljava/lang/String; = "0"

.field public static final CODE:C = '1'

.field public static final CONTACT_AVAILABILITY_4G_NOT_CAPABLE:I = 0x3

.field public static final CONTACT_AVAILABILITY_OFF:I = 0x1

.field public static final CONTACT_AVAILABILITY_ON:I = 0x0

.field public static final CONTACT_AVAILABILITY_UNKNOWN:I = 0x2

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNTRY_CODE:Ljava/lang/String; = "1"

.field public static final DB_OPER_BATCH_SIZE:I = 0x64

.field private static final DEBUG:Z = true

.field public static final EAB_CONTACTS_SERVICE_AUDIO_OFF_VIDEO_ON:I = 0x2

.field public static final EAB_CONTACTS_SERVICE_AUDIO_ON_VIDEO_OFF:I = 0x1

.field public static final EAB_CONTACTS_SERVICE_AUDIO_ON_VIDEO_ON:I = 0x3

.field public static final EAB_CONTACT_SERVICE_AUDIO_OFF_VIDEO_OFF:I = 0x0

.field private static LOCAL_AREA_CODE:Ljava/lang/String; = null

.field public static final NOTIFY_CONTACTCARD_FOR_UPDATE:I = 0xb

.field public static final NOTIFY_CONTACTLIST_FOR_CANCEL_REFRESH_DIALOG:I = 0xd

.field public static final NOTIFY_CONTACTLIST_FOR_UPDATE:I = 0xc

.field private static final NUMBER_INDEX:I = 0x0

.field private static final SERVE_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EAB-ContactsEABDaemon"

.field private static final URI_INDEX:I = 0x3

.field public static final VOLTE:Ljava/lang/String; = "voicecall_type"

.field public static capabilitymap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAlarmSet:Z = false

.field public static mCapabilityDiscover:I = 0x0

.field private static mEvtHandler:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler; = null

.field private static mIMEventCb:Lcom/sec/android/app/contacts/eab/ImsContactEventCallback; = null

.field public static mLVCSetting:I = 0x0

.field public static mMobileData:I = 0x0

.field public static mPollInterval:I = 0x0

.field private static mPref:Landroid/content/SharedPreferences; = null

.field public static final mPublishErrRetryTimer:Ljava/lang/String; = "mPublishErrRetryTimer"

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public static mVoLTEEnabled:I

.field public static publish_403_retry_counter:I

.field public static registrationPublishDone:Z

.field private static sABApplicaton:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

.field private static sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

.field public static userNotRegistered:Z

.field public static final userProfileContacts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CALL_PUBLISH_METHOD:I

.field private final CALL_REG_APP:I

.field private PHONE_MIMETYPE:Ljava/lang/String;

.field private PROJECTION_FOR_FETCH:[Ljava/lang/String;

.field private final REG_APP:I

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private mContactListHandler:Landroid/os/Handler;

.field private mContactcardHandler:Landroid/os/Handler;

.field private mMobileDataEnabledObserver:Landroid/database/ContentObserver;

.field private mRestrictedNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVOLTEEnabledObserver:Landroid/database/ContentObserver;

.field private publish_retry_interval:[I

.field private sharedPrefChangelistener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private subscribe_retry_interval_for_list:[I

.field private subscribe_retry_interval_for_single:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    sput-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mIMEventCb:Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

    .line 90
    sput-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mEvtHandler:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;

    .line 91
    sput-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    .line 103
    sput v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mVoLTEEnabled:I

    .line 104
    sput v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    .line 105
    sput v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mLVCSetting:I

    .line 106
    sput v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mMobileData:I

    .line 107
    sput v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPollInterval:I

    .line 108
    sput-boolean v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mAlarmSet:Z

    .line 132
    sput v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->publish_403_retry_counter:I

    .line 133
    sput-boolean v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->registrationPublishDone:Z

    .line 141
    sput-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->userProfileContacts:Ljava/util/Set;

    .line 145
    sput-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    .line 153
    sput-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->LOCAL_AREA_CODE:Ljava/lang/String;

    .line 155
    sput-boolean v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->userNotRegistered:Z

    .line 2279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    .line 2280
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0x12d

    iput v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->REG_APP:I

    .line 86
    const/16 v0, 0x12e

    iput v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->CALL_REG_APP:I

    .line 87
    const/16 v0, 0x12f

    iput v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->CALL_PUBLISH_METHOD:I

    .line 92
    iput-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactcardHandler:Landroid/os/Handler;

    .line 93
    iput-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    .line 147
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->PROJECTION_FOR_FETCH:[Ljava/lang/String;

    .line 152
    const-string v0, "vnd.android.cursor.item/phone_v2"

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->PHONE_MIMETYPE:Ljava/lang/String;

    .line 285
    new-instance v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mMobileDataEnabledObserver:Landroid/database/ContentObserver;

    .line 312
    new-instance v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$2;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mVOLTEEnabledObserver:Landroid/database/ContentObserver;

    .line 341
    new-instance v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sharedPrefChangelistener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 612
    new-instance v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$4;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handler:Landroid/os/Handler;

    .line 163
    const-string v0, "EABContactsApplication - Constructor"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    .line 165
    invoke-direct {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->Init()V

    .line 166
    sput-object p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sABApplicaton:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .line 168
    return-void
.end method

.method private Init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 510
    const-string v1, " Init Enter"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->publish_retry_interval:[I

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->subscribe_retry_interval_for_list:[I

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->subscribe_retry_interval_for_single:[I

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mRestrictedNumberList:Ljava/util/List;

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    .line 526
    sget-boolean v1, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v1, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setUserProvisionState(Z)V

    .line 529
    const-string v1, "EAB-ContactsEABDaemon"

    const-string v2, "IMS is disabled so setting deprovisional state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->registerToImsService()V

    .line 540
    :goto_1
    const-string v1, "Setting the COntent Observer for VoLTE Beta  settings  in Contact Service"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 544
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mMobileDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 548
    const-string v1, "voicecall_type"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mVOLTEEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 551
    sget-object v1, Lcom/android/contacts/util/Constants;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    new-instance v2, Lcom/sec/android/app/contacts/eab/EabVolteObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/sec/android/app/contacts/eab/EabVolteObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 555
    invoke-direct {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->initVOLTESettings()V

    .line 556
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sharedPrefChangelistener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->registerSharedPrefChangeListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 559
    const-string v1, "EABContactsApplication - Init Exit"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 560
    return-void

    .line 531
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "EAB-ContactsEABDaemon"

    const-string v2, "IMS is enabled so not setting deprovisional state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_1
    const-string v1, "EAB-ContactsEABDaemon"

    const-string v2, "Ims is not enabled so not registering to service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/sec/android/app/contacts/eab/IImsContactAdapter;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    return-object v0
.end method

.method private getCompatibilityFromTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rawcontactid"    # Ljava/lang/String;
    .param p2, "volteMDN"    # Ljava/lang/String;

    .prologue
    .line 2475
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2476
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 2477
    .local v0, "rawIdAndMDN":[Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;)V

    .line 2478
    .local v1, "task":Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2481
    .end local v0    # "rawIdAndMDN":[Ljava/lang/String;
    .end local v1    # "task":Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;
    :cond_0
    return-void
.end method

.method public static getImsContactAdapter()Lcom/sec/android/app/contacts/eab/IImsContactAdapter;
    .locals 2

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsContactAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 609
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    .locals 3

    .prologue
    .line 171
    const-class v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContactsEABDaemon - getInstance"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sABApplicaton:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sABApplicaton:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .line 177
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sABApplicaton:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLocalAreaCode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 563
    const-string v1, "####getLocalAreaCode"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 564
    const-string v0, ""

    .line 565
    .local v0, "localAreaCode":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 569
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 571
    if-nez v0, :cond_1

    .line 572
    const-string v1, ""

    .line 579
    :goto_0
    return-object v1

    .line 574
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 575
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalAreaCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .line 579
    goto :goto_0
.end method

.method private initVOLTESettings()V
    .locals 4

    .prologue
    .line 465
    const-string v1, "initVOLTESettings called"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, "str_temp":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v2, "VoLTEBetaEnabled"

    const-string v3, "VoLTEBetaEnabled"

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVoLTEEnabled is  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 473
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mVoLTEEnabled:I

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v2, "Capability_Discovery"

    const-string v3, "Capability_Discovery"

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCapabilityDiscover is  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 481
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v2, "LVCBetaEnabled"

    const-string v3, "LVCBetaEnabled"

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLVCSetting is  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 489
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mLVCSetting:I

    .line 493
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v2, "mobile_data"

    const-string v3, "mobile_data"

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileData is  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 497
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mMobileData:I

    .line 501
    :cond_3
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 504
    if-eqz p0, :cond_0

    .line 505
    const-string v0, "EAB-ContactsEABDaemon"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    return-void
.end method

.method private printrawcontactids(Landroid/content/ContentResolver;)V
    .locals 15
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 2059
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, " printrawcontactids Entering "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/4 v6, 0x0

    .line 2062
    .local v6, "c":Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 2063
    .local v10, "index":I
    const-string v8, ""

    .line 2064
    .local v8, "data":Ljava/lang/String;
    const-string v11, ""

    .line 2065
    .local v11, "rawcontactid":Ljava/lang/String;
    const-string v14, ""

    .line 2067
    .local v14, "voltemdn":Ljava/lang/String;
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content_uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2070
    if-eqz v6, :cond_3

    .line 2071
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c is not null with count as := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2073
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2074
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2075
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 2077
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2078
    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2080
    .local v12, "rawindex":I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2081
    const-string v0, "data8"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2083
    const-string v1, "EAB-ContactsEABDaemon"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Raw contacid := "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Volte MDN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "capability map = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "number is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 2089
    .end local v12    # "rawindex":I
    :cond_0
    const/4 v7, 0x0

    .line 2090
    .local v7, "count":I
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2091
    .local v13, "values":Ljava/lang/String;
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capabilitymap values :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2094
    .end local v13    # "values":Ljava/lang/String;
    :cond_1
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printrawcontactids count :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    .end local v7    # "count":I
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2099
    :cond_3
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, " printrawcontactids Exiting"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    return-void
.end method

.method private setAlarmInterval(II)V
    .locals 10
    .param p1, "triggerAtMillis"    # I
    .param p2, "intervalMillis"    # I

    .prologue
    const/4 v1, 0x0

    .line 948
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 951
    .local v8, "sContext":Landroid/content/Context;
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v7, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 952
    .local v7, "msgIntent":Landroid/content/Intent;
    const-string v9, "sendSubscribetoContacts"

    .line 953
    .local v9, "strInputMsg":Ljava/lang/String;
    const-string v2, "imsg"

    invoke-virtual {v7, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    const-string v2, "alarm"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 959
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering  capability poll setAlarmInterval  triggerAtMillis  := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "intervalMillis := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 966
    const v2, 0xbde31

    invoke-static {v8, v2, v7, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 975
    .local v6, "pi":Landroid/app/PendingIntent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside setAlarmInterval  mAlarmSet  := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mAlarmSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 984
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mAlarmSet:Z

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capability poll ALARM SET at :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for duration := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method public static setImsContactAdapter(Lcom/sec/android/app/contacts/eab/IImsContactAdapter;)V
    .locals 2
    .param p0, "adapter"    # Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    .prologue
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsContactAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 604
    sput-object p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    .line 605
    return-void
.end method

.method private setPublishRetryAlarmInterval(II)V
    .locals 10
    .param p1, "triggerAtMillis"    # I
    .param p2, "intervalMillis"    # I

    .prologue
    const/4 v1, 0x0

    .line 994
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 997
    .local v8, "sContext":Landroid/content/Context;
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v7, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 998
    .local v7, "msgIntent":Landroid/content/Intent;
    const-string v9, "sendRetryFullPublish"

    .line 999
    .local v9, "strInputMsg":Ljava/lang/String;
    const-string v2, "imsg"

    invoke-virtual {v7, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    const-string v2, "alarm"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1004
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering  setPublishRetryAlarmInterval  triggerAtMillis  := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "intervalMillis := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1007
    const v2, 0xd9038

    invoke-static {v8, v2, v7, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1010
    .local v6, "pi":Landroid/app/PendingIntent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside setPublishRetryAlarmInterval  mAlarmSet  := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mAlarmSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1017
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mAlarmSet:Z

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALARM SET at :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for duration := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method private setSubscribeRetryAlarmInterval(II)V
    .locals 10
    .param p1, "triggerAtMillis"    # I
    .param p2, "intervalMillis"    # I

    .prologue
    const/4 v1, 0x0

    .line 2619
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 2622
    .local v8, "sContext":Landroid/content/Context;
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v7, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2623
    .local v7, "msgIntent":Landroid/content/Intent;
    const-string v9, "sendSubscribetoContacts"

    .line 2624
    .local v9, "strInputMsg":Ljava/lang/String;
    const-string v2, "imsg"

    invoke-virtual {v7, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2626
    const-string v2, "alarm"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2629
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering  setSubscribeRetryAlarmInterval  triggerAtMillis  := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "intervalMillis := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2632
    const v2, 0xd74d9

    invoke-static {v8, v2, v7, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2635
    .local v6, "pi":Landroid/app/PendingIntent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside setSubscribeRetryAlarmInterval  mAlarmSet  := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mAlarmSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2642
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mAlarmSet:Z

    .line 2644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALARM SET at :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for duration := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2647
    return-void
.end method

.method private setSubscribeRetryAlarmIntervalForSingle(IILjava/lang/String;)V
    .locals 10
    .param p1, "triggerAtMillis"    # I
    .param p2, "intervalMillis"    # I
    .param p3, "tokenID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside setSubscribeRetryAlarmIntervalForSingle enter with tokenId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2806
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 2807
    .local v8, "sContext":Landroid/content/Context;
    const-string v9, "sendSubscribeForSingleContact"

    .line 2809
    .local v9, "strInputMsg":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v7, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2811
    .local v7, "msgIntent":Landroid/content/Intent;
    const-string v2, "token_key"

    invoke-virtual {v7, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2812
    const-string v2, "imsg"

    invoke-virtual {v7, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2814
    const-string v2, "alarm"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2816
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering  setSubscribeRetryAlarmIntervalForSingle  triggerAtMillis  := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "intervalMillis := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2819
    const v2, 0xd74da

    invoke-static {v8, v2, v7, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2822
    .local v6, "pi":Landroid/app/PendingIntent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside setSubscribeRetryAlarmIntervalForSingle  mAlarmSet  := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mAlarmSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2829
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mAlarmSet:Z

    .line 2831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALARM SET at :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for duration := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2832
    return-void
.end method

.method private updateDatabaseInBackground(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2517
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, "updateDatabaseInBackground"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    new-instance v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2519
    return-void
.end method


# virtual methods
.method public GetNotifyValuesForContact(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cnt_uri"    # Ljava/lang/String;

    .prologue
    .line 1564
    const-string v0, "GetNotifyValuesForContact - Entering"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1565
    if-nez p1, :cond_0

    .line 1566
    const-string v0, "GetNotifyValuesForContact uri is NULL"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1567
    const/4 v0, 0x0

    .line 1577
    :goto_0
    return v0

    .line 1569
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetNotifyValuesForContact : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1571
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-eqz v0, :cond_1

    .line 1572
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->getNotifyInfoForContact(Ljava/lang/String;)I

    .line 1576
    :goto_1
    const-string v0, "GetNotifyValuesForContact - Exiting"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1577
    const/4 v0, 0x1

    goto :goto_0

    .line 1574
    :cond_1
    const-string v0, "sContactAdpater is NULL"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public NotifyCapabilityPollIntervalChange()V
    .locals 3

    .prologue
    .line 1111
    const-string v1, "NotifyCapabilityPollIntervalChange"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollRepeatIntervalTime()I

    move-result v0

    .line 1115
    .local v0, "pollIntervalTime":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyCapabilityPollIntervalChange pollIntervalTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1118
    mul-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v0, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setAlarmInterval(II)V

    .line 1120
    return-void
.end method

.method public PostEventTomContactListHandler()V
    .locals 4

    .prologue
    .line 2048
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2049
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2050
    const-string v1, "NOTIFY_CONTACTLIST_FOR_CANCEL_REFRESH_DIALOG :sending message to contact list"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2051
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2052
    const-string v1, "contact listhandler is not null"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2053
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2055
    :cond_0
    return-void
.end method

.method public StartPublishMethod(Z)V
    .locals 13
    .param p1, "f_sendinstantly"    # Z

    .prologue
    const/16 v12, 0x12f

    .line 752
    const/4 v0, 0x0

    .line 754
    .local v0, "CachePublishtime":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v10, "PublishTime"

    const-string v11, "PublishTime"

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v10, "PublishTime"

    const-string v11, "PublishTime"

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 764
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v10, "PublishTime"

    const-string v11, "PublishTime"

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    :cond_0
    const/4 v6, 0x0

    .line 772
    .local v6, "publish_resendtime":I
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v10, "Source_Throttle_Publish"

    const-string v11, "Source_Throttle_Publish"

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v10, "Source_Throttle_Publish"

    const-string v11, "Source_Throttle_Publish"

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 785
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v10, "Source_Throttle_Publish"

    const-string v11, "Source_Throttle_Publish"

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 793
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "currenttime":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current date is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 795
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CachePublishtime is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 796
    const-wide/16 v7, 0x0

    .local v7, "time":J
    const-wide/16 v4, 0x0

    .line 804
    .local v4, "expiryval":J
    if-eqz v0, :cond_2

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 806
    int-to-long v2, v6

    .line 807
    .local v2, "deftime":J
    const-wide/16 v9, 0x1

    add-long/2addr v2, v9

    .line 808
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getSeconds(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 811
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_2

    int-to-long v9, v6

    cmp-long v9, v7, v9

    if-gez v9, :cond_2

    .line 812
    int-to-long v9, v6

    sub-long v4, v9, v7

    .line 817
    .end local v2    # "deftime":J
    :cond_2
    if-eqz p1, :cond_3

    .line 818
    const-wide/16 v4, 0x0

    .line 822
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RANI ::  expiryval in seconds  is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 823
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RANI ::  f_sendinstantly is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 826
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 827
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v4

    invoke-virtual {v9, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 835
    :goto_0
    return-void

    .line 832
    :cond_5
    const-string v9, "RANI ::  Skipped sending Publish since device is not EAB Ready"

    invoke-static {v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public StartPublishMethodForExpiry()V
    .locals 1

    .prologue
    .line 2650
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->resetAlarmForPublish()V

    .line 2651
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartPublishMethod(Z)V

    .line 2652
    return-void
.end method

.method public StartSubcribeMethodForSingle(Ljava/lang/String;)V
    .locals 4
    .param p1, "tokenID"    # Ljava/lang/String;

    .prologue
    .line 2835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " StartSubcribeMethodForSingle - Enter with rawIdList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2837
    if-nez p1, :cond_1

    .line 2859
    :cond_0
    :goto_0
    return-void

    .line 2841
    :cond_1
    const/4 v0, 0x0

    .line 2843
    .local v0, "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-nez v2, :cond_2

    .line 2844
    const-string v2, "invalid adapter sContactAdapter = null"

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2848
    :cond_2
    sget-object v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v2, p1}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->getTokenRequestType(Ljava/lang/String;)Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;

    move-result-object v1

    .line 2850
    .local v1, "rType":Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
    if-eqz v1, :cond_0

    .line 2853
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->getContactList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2856
    sget-object v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    sget-object v3, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_SINGLE:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->SendSubscribeForContactsList(Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 2858
    const-string v2, " sentSubscribeForAllContacts - Exit "

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public StartSubscribeForAllContacts(Z)V
    .locals 12
    .param p1, "f_sendinstantly"    # Z

    .prologue
    .line 1060
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StartSubscribeForAllContacts called with f_sendinstantly :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1062
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1065
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollExpiryTime()I

    move-result v6

    .line 1066
    .local v6, "pollExpiryTime":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollRepeatIntervalTime()I

    move-result v7

    .line 1067
    .local v7, "pollIntervalTime":I
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 1069
    .local v8, "sContext":Landroid/content/Context;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheExpiryTime(Landroid/content/ContentResolver;)I

    move-result v0

    .line 1070
    .local v0, "cacheExpiryTime":I
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheTime(Landroid/content/ContentResolver;I)J

    move-result-wide v1

    .line 1072
    .local v1, "cacheTime":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pollExpiryTime"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1073
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pollIntervalTime "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1074
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cacheExpiryTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1075
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cacheTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1076
    const-string v10, "StartSubscribeForAllContacts  Entering "

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1079
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RANI ::  expiryval timeInSec is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " repeatIntervalInSec - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v4

    .line 1087
    .local v4, "isCachecExpired":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCacheExpired(cacheTime, cacheExpiryTime): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1089
    if-nez v6, :cond_0

    .line 1090
    const-string v10, "StartSubscribeForAllContacts as poll is expired"

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1091
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Going to Set Alarm with pollIntervale time : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-int/lit16 v11, v7, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1092
    mul-int/lit16 v10, v6, 0x3e8

    mul-int/lit16 v11, v7, 0x3e8

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setAlarmInterval(II)V

    .line 1107
    .end local v4    # "isCachecExpired":Z
    :goto_0
    return-void

    .line 1094
    .restart local v4    # "isCachecExpired":Z
    :cond_0
    const-string v10, "StartSubscribeForFreshContacts as cache is not expired and poll is not expired"

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1095
    const-string v10, "for 3.7 TC"

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1096
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v5, v8, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1097
    .local v5, "msgIntent":Landroid/content/Intent;
    const-string v9, "sendSubscribetoFreshContacts"

    .line 1098
    .local v9, "strInputMsg":Ljava/lang/String;
    const-string v10, "imsg"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    invoke-virtual {v8, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1101
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Going to Set Alarm with pollIntervale time : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-int/lit16 v11, v7, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1102
    mul-int/lit16 v10, v6, 0x3e8

    mul-int/lit16 v11, v7, 0x3e8

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setAlarmInterval(II)V

    goto :goto_0

    .line 1105
    .end local v4    # "isCachecExpired":Z
    .end local v5    # "msgIntent":Landroid/content/Intent;
    .end local v9    # "strInputMsg":Ljava/lang/String;
    :cond_1
    const-string v10, "RANI ::  Skipped sending SUBSCRIBE since device is not EAB Ready"

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public StartSubscribeForFreshlyAddedContacts()V
    .locals 6

    .prologue
    .line 1031
    const/4 v3, 0x0

    .line 1032
    .local v3, "timeInSec":I
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1035
    .local v1, "sContext":Landroid/content/Context;
    const-string v4, "StartSubscribeForFreshlyAddedContacts - Entered"

    invoke-static {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollExpiryTime()I

    move-result v3

    .line 1040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CAPABILITY_POLL_ExpiryTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1042
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/contacts/eab/EABIntentService;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1043
    .local v0, "msgIntent":Landroid/content/Intent;
    const-string v2, "sendSubscribetoFreshContacts"

    .line 1044
    .local v2, "strInputMsg":Ljava/lang/String;
    const-string v4, "imsg"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1051
    .end local v0    # "msgIntent":Landroid/content/Intent;
    .end local v2    # "strInputMsg":Ljava/lang/String;
    :goto_0
    const-string v4, "StartSubscribeForFreshlyAddedContacts - EXiting"

    invoke-static {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1053
    return-void

    .line 1048
    :cond_0
    const-string v4, "StartSubscribeForFreshlyAddedContacts - Skipping sending subscribe"

    invoke-static {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public convertNumListToURIList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, "arr_list_number":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, " convertNumListToURIList - Enter "

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 729
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 730
    :cond_0
    const-string v2, "convertNumListToURIList - Invalid ArrayList"

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 731
    const/4 v0, 0x0

    .line 746
    :goto_0
    return-object v0

    .line 734
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v0, "arr_list_uri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 741
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 745
    :cond_2
    const-string v2, " convertNumListToURIList - Exit "

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deregisterContactListHandler()V
    .locals 1

    .prologue
    .line 647
    const-string v0, "deregisterContactListHandler"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    .line 649
    return-void
.end method

.method public deregisterContactcardHandler()V
    .locals 1

    .prologue
    .line 637
    const-string v0, "deregisterContactcardHandler"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactcardHandler:Landroid/os/Handler;

    .line 639
    return-void
.end method

.method public eraseCacheInfo(J)V
    .locals 7
    .param p1, "contactId"    # J

    .prologue
    const/4 v4, 0x0

    .line 1838
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactId in eraseCacheInfo is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->PROJECTION_FOR_FETCH:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1846
    .local v6, "c":Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->updateDatabaseInBackground(Landroid/database/Cursor;)V

    .line 1847
    return-void
.end method

.method public fetchDatabaseForProfile(Landroid/content/ContentResolver;J)V
    .locals 23
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # J

    .prologue
    .line 2381
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch database contactId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "data"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2386
    .local v3, "PROFILE_CONTENT_URI":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->PROJECTION_FOR_FETCH:[Ljava/lang/String;

    const-wide/16 v5, -0x1

    cmp-long v2, p2, v5

    if-nez v2, :cond_1

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2389
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_8

    .line 2392
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c is not null with count value :=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 2395
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheExpiryTime(Landroid/content/ContentResolver;)I

    move-result v11

    .line 2396
    .local v11, "cacheExpiryTime":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheTime(Landroid/content/ContentResolver;I)J

    move-result-wide v12

    .line 2399
    .local v12, "cacheTime":J
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Expired time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CAPABILITY_CACHE_EXPIRATION : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    const-string v2, "data1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 2405
    .local v16, "index":I
    const-string v2, "mimetype"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2407
    .local v17, "mimeindex":I
    const-string v2, "raw_contact_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 2409
    .local v20, "rawindex":I
    const-string v2, "data8"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 2412
    .local v22, "voltemdnIndex":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2413
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2415
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2416
    .local v15, "data":Ljava/lang/String;
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2417
    .local v19, "rawcontactid":Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2418
    .local v18, "mimetype":Ljava/lang/String;
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2420
    .local v21, "voltemdn":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2422
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  raw contact id of name is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :cond_0
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2386
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "cacheExpiryTime":I
    .end local v12    # "cacheTime":J
    .end local v15    # "data":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v17    # "mimeindex":I
    .end local v18    # "mimetype":Ljava/lang/String;
    .end local v19    # "rawcontactid":Ljava/lang/String;
    .end local v20    # "rawindex":I
    .end local v21    # "voltemdn":Ljava/lang/String;
    .end local v22    # "voltemdnIndex":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2426
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v11    # "cacheExpiryTime":I
    .restart local v12    # "cacheTime":J
    .restart local v15    # "data":Ljava/lang/String;
    .restart local v16    # "index":I
    .restart local v17    # "mimeindex":I
    .restart local v18    # "mimetype":Ljava/lang/String;
    .restart local v19    # "rawcontactid":Ljava/lang/String;
    .restart local v20    # "rawindex":I
    .restart local v21    # "voltemdn":Ljava/lang/String;
    .restart local v22    # "voltemdnIndex":I
    :cond_2
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2428
    const-string v14, "1"

    .line 2429
    .local v14, "compatibility":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 2432
    const-string v2, "EAB-ContactsEABDaemon"

    const-string v4, "Resetting the Cache Details :"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v4

    const-string v2, "data10"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->updateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const-string v14, "1"

    .line 2457
    :goto_3
    sget-object v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2460
    const-string v4, "EAB-ContactsEABDaemon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after putting in capatibility map: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " rawcontactid"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " number is:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2440
    :cond_3
    sget v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    if-nez v2, :cond_4

    .line 2441
    const-string v14, "1"

    goto :goto_3

    .line 2445
    :cond_4
    if-eqz v19, :cond_6

    .line 2446
    const-string v2, "1"

    sget-object v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2448
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCompatibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 2450
    :cond_5
    sget-object v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "compatibility":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .restart local v14    # "compatibility":Ljava/lang/String;
    goto :goto_3

    .line 2453
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCompatibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 2469
    .end local v11    # "cacheExpiryTime":I
    .end local v12    # "cacheTime":J
    .end local v14    # "compatibility":Ljava/lang/String;
    .end local v15    # "data":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v17    # "mimeindex":I
    .end local v18    # "mimetype":Ljava/lang/String;
    .end local v19    # "rawcontactid":Ljava/lang/String;
    .end local v20    # "rawindex":I
    .end local v21    # "voltemdn":Ljava/lang/String;
    .end local v22    # "voltemdnIndex":I
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2471
    :cond_8
    const-string v2, "EAB-ContactsEABDaemon"

    const-string v4, "Just after fetch database completes"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    return-void
.end method

.method public fetchdatabase(Landroid/content/ContentResolver;J)V
    .locals 22
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # J

    .prologue
    .line 2324
    const-string v3, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch database contactId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    sget-object v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->PROJECTION_FOR_FETCH:[Ljava/lang/String;

    const-wide/16 v6, -0x1

    cmp-long v3, p2, v6

    if-nez v3, :cond_1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2329
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 2330
    sget-object v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2332
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 2333
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheExpiryTime(Landroid/content/ContentResolver;)I

    move-result v10

    .line 2334
    .local v10, "cacheExpiryTime":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheTime(Landroid/content/ContentResolver;I)J

    move-result-wide v11

    .line 2336
    .local v11, "cacheTime":J
    const-string v3, "data1"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 2338
    .local v15, "index":I
    const-string v3, "mimetype"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 2340
    .local v16, "mimeindex":I
    const-string v3, "raw_contact_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 2342
    .local v19, "rawindex":I
    const-string v3, "data8"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 2345
    .local v21, "voltemdnIndex":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2346
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2347
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2348
    .local v14, "data":Ljava/lang/String;
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2349
    .local v18, "rawcontactid":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2350
    .local v17, "mimetype":Ljava/lang/String;
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2352
    .local v20, "voltemdn":Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2353
    const-string v13, "1"

    .line 2354
    .local v13, "compatibility":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2356
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->updateDatabaseInBackground(Landroid/database/Cursor;)V

    .line 2357
    sget-object v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    const-string v4, "1"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    .end local v13    # "compatibility":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2326
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "cacheExpiryTime":I
    .end local v11    # "cacheTime":J
    .end local v14    # "data":Ljava/lang/String;
    .end local v15    # "index":I
    .end local v16    # "mimeindex":I
    .end local v17    # "mimetype":Ljava/lang/String;
    .end local v18    # "rawcontactid":Ljava/lang/String;
    .end local v19    # "rawindex":I
    .end local v20    # "voltemdn":Ljava/lang/String;
    .end local v21    # "voltemdnIndex":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id=\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 2360
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "cacheExpiryTime":I
    .restart local v11    # "cacheTime":J
    .restart local v13    # "compatibility":Ljava/lang/String;
    .restart local v14    # "data":Ljava/lang/String;
    .restart local v15    # "index":I
    .restart local v16    # "mimeindex":I
    .restart local v17    # "mimetype":Ljava/lang/String;
    .restart local v18    # "rawcontactid":Ljava/lang/String;
    .restart local v19    # "rawindex":I
    .restart local v20    # "voltemdn":Ljava/lang/String;
    .restart local v21    # "voltemdnIndex":I
    :cond_2
    sget v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    if-nez v3, :cond_3

    .line 2361
    sget-object v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    const-string v4, "1"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2364
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCompatibilityFromTask(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2372
    .end local v10    # "cacheExpiryTime":I
    .end local v11    # "cacheTime":J
    .end local v13    # "compatibility":Ljava/lang/String;
    .end local v14    # "data":Ljava/lang/String;
    .end local v15    # "index":I
    .end local v16    # "mimeindex":I
    .end local v17    # "mimetype":Ljava/lang/String;
    .end local v18    # "rawcontactid":Ljava/lang/String;
    .end local v19    # "rawindex":I
    .end local v20    # "voltemdn":Ljava/lang/String;
    .end local v21    # "voltemdnIndex":I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2375
    :cond_5
    invoke-virtual/range {p0 .. p3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->fetchDatabaseForProfile(Landroid/content/ContentResolver;J)V

    .line 2376
    const-string v3, "EAB-ContactsEABDaemon"

    const-string v4, "Just after fetch database completes"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    return-void
.end method

.method public getCacheExpiryTime(Landroid/content/ContentResolver;)I
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 2285
    const/4 v0, 0x0

    .line 2287
    .local v0, "cacheExpiryTime":I
    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v3, "CapCacheExp"

    const-string v4, "CapCacheExp"

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2293
    .local v1, "cacheExpiryTimeStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2294
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2296
    :cond_0
    return v0
.end method

.method public getCacheTime(Landroid/content/ContentResolver;I)J
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "cacheExpiryTime"    # I

    .prologue
    .line 2300
    const-wide/16 v0, 0x0

    .line 2301
    .local v0, "cacheTime":J
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    .line 2303
    .local v3, "currenttime":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v7, "LstSubscribeTime"

    const-string v8, "LstSubscribeTime"

    invoke-static {v8}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2309
    .local v2, "cachetime":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2310
    int-to-long v4, p2

    .line 2311
    .local v4, "deftime":J
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 2312
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getSeconds(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2316
    .end local v4    # "deftime":J
    :goto_0
    return-wide v0

    .line 2314
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCapabilityPollExpiryTime()I
    .locals 13

    .prologue
    .line 888
    const-string v10, "getCapabilityPollExpiryTime called "

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 890
    const/4 v5, 0x0

    .line 891
    .local v5, "repeatIntervalInSec":I
    const/4 v0, 0x0

    .line 893
    .local v0, "Lastlistsubstime":Ljava/lang/String;
    const/4 v8, 0x0

    .line 896
    .local v8, "timeInSec":I
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 899
    .local v1, "cr":Landroid/content/ContentResolver;
    if-nez v1, :cond_0

    .line 900
    const-string v10, "getCapabilityPollExpiryTime - Invalid resolver So Setting Invalid Value "

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    move v9, v8

    .line 942
    .end local v8    # "timeInSec":I
    .local v9, "timeInSec":I
    :goto_0
    return v9

    .line 904
    .end local v9    # "timeInSec":I
    .restart local v8    # "timeInSec":I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollRepeatIntervalTime()I

    move-result v5

    .line 905
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCapabilityPollExpiryTime repeatIntervalInSec : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 908
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CAPABILITY_POLL_INTERVAL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 910
    iget-object v10, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v11, "LstSubscribeTime"

    const-string v12, "LstSubscribeTime"

    invoke-static {v12}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastsubscribe time is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 918
    if-eqz v0, :cond_1

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "0"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 921
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastsubscribe time condition success is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 923
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    .line 925
    .local v2, "currenttime":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current date is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 926
    int-to-long v3, v5

    .line 927
    .local v3, "deftime":J
    const-wide/16 v10, 0x1

    add-long/2addr v3, v10

    .line 928
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v10

    invoke-virtual {v10, v0, v2, v3, v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getSeconds(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 931
    .local v6, "time":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    long-to-int v10, v6

    if-ge v10, v5, :cond_1

    .line 933
    long-to-int v10, v6

    sub-int v8, v5, v10

    .line 941
    .end local v2    # "currenttime":Ljava/lang/String;
    .end local v3    # "deftime":J
    .end local v6    # "time":J
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timeInSec time is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    move v9, v8

    .line 942
    .end local v8    # "timeInSec":I
    .restart local v9    # "timeInSec":I
    goto/16 :goto_0
.end method

.method public getCapabilityPollRepeatIntervalTime()I
    .locals 6

    .prologue
    .line 849
    const v1, 0x93a80

    .line 850
    .local v1, "repeatIntervalInSec":I
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 853
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 854
    const-string v3, "getCapabilityPollExpiryTime - Invalid resolver So Setting Invalid Value "

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    move v2, v1

    .line 878
    .end local v1    # "repeatIntervalInSec":I
    .local v2, "repeatIntervalInSec":I
    :goto_0
    return v2

    .line 858
    .end local v2    # "repeatIntervalInSec":I
    .restart local v1    # "repeatIntervalInSec":I
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v4, "Capability_Poll_Interval"

    const-string v5, "Capability_Poll_Interval"

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v4, "Capability_Poll_Interval"

    const-string v5, "Capability_Poll_Interval"

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 871
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v4, "Capability_Poll_Interval"

    const-string v5, "Capability_Poll_Interval"

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    move v2, v1

    .line 878
    .end local v1    # "repeatIntervalInSec":I
    .restart local v2    # "repeatIntervalInSec":I
    goto :goto_0
.end method

.method public getCompatibility(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "voltemdn"    # Ljava/lang/String;

    .prologue
    .line 2561
    const-string v1, "EAB-ContactsEABDaemon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCompatibility start with volte MDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    const/4 v0, 0x0

    .line 2563
    .local v0, "compatibility":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2564
    const-string v1, "false"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2565
    const-string v0, "1"

    .line 2572
    :goto_0
    return-object v0

    .line 2567
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 2570
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public getContactsListUriType(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "numberUri"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1141
    const/4 v6, 0x0

    .line 1142
    .local v6, "c":Landroid/database/Cursor;
    const-string v8, ""

    .line 1143
    .local v8, "selection":Ljava/lang/String;
    const/4 v11, -0x1

    .line 1144
    .local v11, "uritype":I
    const/4 v9, 0x0

    .line 1145
    .local v9, "uriType13":Ljava/lang/String;
    move-object v10, p1

    .line 1147
    .local v10, "uriTypeSingle":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1149
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "data"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1151
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content_uri"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v7, "vnd.android.cursor.item/phone_v2"

    .line 1153
    .local v7, "mimeType":Ljava/lang/String;
    const-string v3, "data10= ? AND mimetype = ?"

    .line 1156
    .local v3, "mSelection":Ljava/lang/String;
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection := "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "data13"

    aput-object v4, v2, v12

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v12

    aput-object v7, v4, v13

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1161
    if-eqz v6, :cond_2

    .line 1162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1163
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1164
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get count value is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1166
    const-string v2, "data13"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1167
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1168
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the uri type index  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " the uri string is  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1171
    move-object v10, v9

    .line 1175
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1173
    :cond_0
    move-object v10, p1

    goto :goto_1

    .line 1178
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1181
    :cond_2
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returing URIType is  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-object v10
.end method

.method public getContactsURIfromDB()V
    .locals 3

    .prologue
    .line 713
    const-string v1, " getContactsURIfromDB - Enter "

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 715
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getContactsList(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 718
    .local v0, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_ALL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForAllContacts(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 722
    const-string v1, " getContactsURIfromDB - Exit "

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1871
    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 1872
    .local v1, "dt1":Ljava/sql/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1873
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1874
    .local v0, "currenttime":Ljava/lang/String;
    return-object v0
.end method

.method public getPublishStatus()Z
    .locals 3

    .prologue
    .line 2689
    const-string v0, "DEBUG"

    const-string v1, "EAB-ContactsEABDaemon  getPublishStatus Called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "currentpublishstate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRegistrationPublish()Z
    .locals 2

    .prologue
    .line 2611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getRegistrationPublish - registrationPublishDone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->registrationPublishDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 2613
    sget-boolean v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->registrationPublishDone:Z

    return v0
.end method

.method public getSeconds(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 29
    .param p1, "storeddate"    # Ljava/lang/String;
    .param p2, "currentdate"    # Ljava/lang/String;
    .param p3, "defval"    # J

    .prologue
    .line 1878
    const/16 v25, 0x0

    const/16 v26, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1879
    .local v11, "storedyear":I
    const/16 v25, 0x5

    const/16 v26, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1880
    .local v12, "storedmonth":I
    const/16 v25, 0x8

    const/16 v26, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1881
    .local v13, "storedday":I
    const/16 v25, 0xb

    const/16 v26, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1882
    .local v14, "storedhour":I
    const/16 v25, 0xe

    const/16 v26, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1883
    .local v15, "storedminute":I
    const/16 v25, 0x11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1885
    .local v16, "storedsecond":I
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "storedyear:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "storedmonth:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "storedday:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "storedhour:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "storedminute:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "storedsecond:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    const/16 v25, 0x0

    const/16 v26, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1892
    .local v4, "currentyear":I
    const/16 v25, 0x5

    const/16 v26, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1893
    .local v5, "currentmonth":I
    const/16 v25, 0x8

    const/16 v26, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1894
    .local v6, "currentday":I
    const/16 v25, 0xb

    const/16 v26, 0xd

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1895
    .local v7, "currenthour":I
    const/16 v25, 0xe

    const/16 v26, 0x10

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1896
    .local v8, "currentminute":I
    const/16 v25, 0x11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1898
    .local v9, "currentsecond":I
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currentyear:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currentmonth:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currentday:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currenthour:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currentminute:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currentsecond:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct/range {v3 .. v9}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 1907
    .local v3, "gc1":Ljava/util/GregorianCalendar;
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct/range {v10 .. v16}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 1909
    .local v10, "gc2":Ljava/util/GregorianCalendar;
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "defval is:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    .line 1911
    .local v17, "d1":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    .line 1912
    .local v18, "d2":Ljava/util/Date;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    .line 1913
    .local v21, "l1":J
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    .line 1914
    .local v23, "l2":J
    sub-long v25, v21, v23

    const-wide/16 v27, 0x3e8

    div-long v19, v25, v27

    .line 1915
    .local v19, "difference":J
    const-wide/16 v25, 0x0

    cmp-long v25, v19, v25

    if-gez v25, :cond_0

    .line 1916
    move-wide/from16 v19, p3

    .line 1919
    :cond_0
    const-string v25, "EAB-ContactsEABDaemon"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "difference in second is:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return-wide v19
.end method

.method public getTelNumberFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/16 v3, 0x40

    .line 1849
    const-string v2, " getTelNumberFromUri  - Enter"

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1850
    move-object v1, p1

    .line 1852
    .local v1, "tel_num":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTelNumberFromUri - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1854
    const/4 v2, 0x0

    .line 1866
    :goto_0
    return-object v2

    .line 1857
    :cond_0
    const-string v2, "sip:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1858
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1859
    .local v0, "endIndex":I
    :goto_1
    const-string v2, "sip:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1865
    .end local v0    # "endIndex":I
    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTelNumberFromUri - Exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    move-object v2, v1

    .line 1866
    goto :goto_0

    .line 1858
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_1

    .line 1860
    :cond_3
    const-string v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1861
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1862
    .restart local v0    # "endIndex":I
    :goto_3
    const-string v2, "tel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1861
    .end local v0    # "endIndex":I
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_3
.end method

.method public handleError(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "uriType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubscribeNotifyForAll - Entering with URI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uriType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1334
    if-nez p1, :cond_0

    .line 1335
    const-string v2, "Invalid uri "

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1354
    :goto_0
    return v1

    .line 1338
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1339
    if-eqz p1, :cond_2

    sget-object v2, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_ALL:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1340
    new-instance v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateNonVolteNumber;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateNonVolteNumber;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1342
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1343
    .local v0, "mesg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1344
    const-string v1, "sending message to contact list"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1345
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1346
    const-string v1, "contact listhandler is not"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1347
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1354
    .end local v0    # "mesg":Landroid/os/Message;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1350
    :cond_2
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_SINGLE:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/contacts/util/Constants;->SUBSCRIBE_TOKEN_FOR_VIEW:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1351
    :cond_3
    const-string v1, "handling error for single subscribe ....."

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->modifyContactInfo(Ljava/lang/String;Z)Z

    goto :goto_1
.end method

.method public handlePublishError(I)V
    .locals 12
    .param p1, "errorCode"    # I

    .prologue
    const v11, 0xea60

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePublishError - Entering with ErrorCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1370
    sparse-switch p1, :sswitch_data_0

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not Handled handlePublishError for errorCode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1373
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Publish Presence FAILED with errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1377
    .local v7, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "initial_publish_404"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1384
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Publish Presence FAILED with errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1388
    .restart local v7    # "pref":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "initial_publish_413"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1393
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    const-string v0, "handlePublishError - publish after getting ErrorCode 412"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartPublishMethod(Z)V

    goto :goto_0

    .line 1402
    :sswitch_3
    sget v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->publish_403_retry_counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->publish_403_retry_counter:I

    .line 1403
    sget v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->publish_403_retry_counter:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePublishError - sending 403 publish counter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->publish_403_retry_counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartPublishMethod(Z)V

    goto/16 :goto_0

    .line 1408
    :cond_1
    sput v10, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->publish_403_retry_counter:I

    .line 1409
    const-string v0, "handlePublishError - 403 publish retry completed and now stop the EAB Traffic"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1411
    .restart local v7    # "pref":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "initial_publish_403"

    const/16 v2, 0x193

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1421
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    :sswitch_4
    sget v0, Lcom/android/contacts/util/Constants;->publish_retry_exponential_back_offcounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/contacts/util/Constants;->publish_retry_exponential_back_offcounter:I

    .line 1422
    sget v0, Lcom/android/contacts/util/Constants;->publish_retry_exponential_back_offcounter:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePublishError - publish_retry_exponential_back_offcounter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/contacts/util/Constants;->publish_retry_exponential_back_offcounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->publish_retry_interval:[I

    sget v1, Lcom/android/contacts/util/Constants;->publish_retry_exponential_back_offcounter:I

    add-int/lit8 v1, v1, -0x1

    aget v9, v0, v1

    .line 1428
    .local v9, "timer":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePublishError - publish_retry_exponential_back_offcounter timer in seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1431
    mul-int v0, v9, v11

    invoke-direct {p0, v0, v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setPublishRetryAlarmInterval(II)V

    goto/16 :goto_0

    .line 1432
    .end local v9    # "timer":I
    :cond_2
    sget v0, Lcom/android/contacts/util/Constants;->publish_retry_exponential_back_offcounter:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1433
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/util/Constants;->DB_IMSSETTINGS_MENU_TABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1436
    .local v6, "cursorVolte":Landroid/database/Cursor;
    const/16 v9, 0x168

    .line 1437
    .restart local v9    # "timer":I
    if-eqz v6, :cond_5

    .line 1439
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1441
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1443
    const-string v8, ""

    .line 1445
    .local v8, "str":Ljava/lang/String;
    const-string v0, "mPublishErrRetryTimer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1447
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUBLISH_ERROR_RETRY_TIME_VALUE value in seconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    if-eqz v8, :cond_3

    .line 1451
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v9, v0, 0x3c

    .line 1453
    :cond_3
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUBLISH_ERROR_RETRY_TIME_VALUE value in minutes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    .end local v8    # "str":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1462
    :cond_5
    mul-int v0, v9, v11

    invoke-direct {p0, v0, v10}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setPublishRetryAlarmInterval(II)V

    goto/16 :goto_0

    .line 1458
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1465
    .end local v6    # "cursorVolte":Landroid/database/Cursor;
    .end local v9    # "timer":I
    :cond_6
    sput v10, Lcom/android/contacts/util/Constants;->publish_retry_exponential_back_offcounter:I

    .line 1467
    const-string v0, "handlePublishError - publish_retry_exponential_back_offcounter completed and now stop the EAB Traffic"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1469
    .restart local v7    # "pref":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "retry_exponential_back_off"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1370
    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_3
        0x194 -> :sswitch_0
        0x198 -> :sswitch_4
        0x19c -> :sswitch_2
        0x19d -> :sswitch_1
        0x1f4 -> :sswitch_4
        0x1f7 -> :sswitch_4
        0x25b -> :sswitch_4
    .end sparse-switch
.end method

.method public handleSubscribeError(Lcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 6
    .param p1, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    const/4 v5, 0x0

    .line 1484
    const-string v3, "errorcode"

    invoke-virtual {p1, v3}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1486
    .local v0, "errorCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not Handled handleSubscribeError for errorCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1522
    :goto_0
    return-void

    .line 1493
    :sswitch_0
    sget v3, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter:I

    .line 1494
    sget v3, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSubscribeError - subscribe_retry_exponential_back_offcounter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1498
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->subscribe_retry_interval_for_list:[I

    sget v4, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter:I

    add-int/lit8 v4, v4, -0x1

    aget v2, v3, v4

    .line 1500
    .local v2, "timer":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSubscribeError - subscribe_retry_exponential_back_offcounter timer in minutes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1503
    const v3, 0xea60

    mul-int/2addr v3, v2

    invoke-direct {p0, v3, v5}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setSubscribeRetryAlarmInterval(II)V

    goto :goto_0

    .line 1507
    .end local v2    # "timer":I
    :cond_0
    const-string v3, "handleSubscribeError - subscribe_retry_exponential_back_offcounter completed and now stop the EAB Traffic"

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1508
    sput v5, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter:I

    .line 1509
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollRepeatIntervalTime()I

    move-result v1

    .line 1511
    .local v1, "pollIntervalTime":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pollIntervalTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1513
    mul-int/lit16 v3, v1, 0x3e8

    mul-int/lit16 v4, v1, 0x3e8

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setAlarmInterval(II)V

    goto :goto_0

    .line 1486
    nop

    :sswitch_data_0
    .sparse-switch
        0x198 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x25b -> :sswitch_0
    .end sparse-switch
.end method

.method public handleSubscribeErrorForSingle(Lcom/samsung/commonimsinterface/imscommon/IMSParameter;Ljava/lang/String;)V
    .locals 5
    .param p1, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;
    .param p2, "tokenID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1525
    const-string v2, "handleSubscribeErrorForSingle enter"

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1526
    const-string v2, "errorcode"

    invoke-virtual {p1, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1528
    .local v0, "errorCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not Handled handleSubscribeErrorForSingle for errorCode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1561
    :goto_0
    return-void

    .line 1535
    :sswitch_0
    sget v2, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter_for_single:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter_for_single:I

    .line 1536
    sget v2, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter_for_single:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubscribeErrorForSingle - subscribe_retry_exponential_back_offcounter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter_for_single:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1541
    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->subscribe_retry_interval_for_single:[I

    sget v3, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter_for_single:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .line 1543
    .local v1, "timer":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubscribeErrorForSingle - subscribe_retry_exponential_back_offcounter timer in minutes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1546
    const v2, 0xea60

    mul-int/2addr v2, v1

    invoke-direct {p0, v2, v4, p2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setSubscribeRetryAlarmIntervalForSingle(IILjava/lang/String;)V

    .line 1554
    .end local v1    # "timer":I
    :goto_1
    const-string v2, "handleSubscribeErrorForSingle exit"

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1550
    :cond_0
    const-string v2, "handleSubscribeErrorForSingle - subscribe_retry_exponential_back_offcounter completed and now stop the EAB Traffic"

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1551
    sput v4, Lcom/android/contacts/util/Constants;->subscribe_retry_exponential_back_offcounter_for_single:I

    goto :goto_1

    .line 1528
    :sswitch_data_0
    .sparse-switch
        0x198 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x25b -> :sswitch_0
    .end sparse-switch
.end method

.method public handleSubscribeNotifyContactInfoForAProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubscribeNotifyContactInfo - Entering-info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1626
    if-nez p1, :cond_0

    .line 1627
    const-string v1, "handleSubscribeNotifyContactInfo - invalid param Info"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1635
    :goto_0
    return v0

    .line 1631
    :cond_0
    new-instance v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdaterTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdaterTask;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1634
    const-string v0, "handleSubscribeNotifyContactInfo - Exiting"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1635
    goto :goto_0
.end method

.method public isCacheExpired()Z
    .locals 8

    .prologue
    .line 2702
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2704
    .local v3, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 2705
    .local v4, "isCacheExpired":Z
    if-eqz v3, :cond_0

    .line 2706
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheExpiryTime(Landroid/content/ContentResolver;)I

    move-result v0

    .line 2707
    .local v0, "cacheExpiryTime":I
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheTime(Landroid/content/ContentResolver;I)J

    move-result-wide v1

    .line 2708
    .local v1, "cacheTime":J
    const-string v5, "EAB-ContactsEABDaemon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CacheExpiryTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const-string v5, "EAB-ContactsEABDaemon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CacheTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v4

    .line 2712
    const-string v5, "EAB-ContactsEABDaemon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isCacheExpired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    .end local v0    # "cacheExpiryTime":I
    .end local v1    # "cacheTime":J
    :cond_0
    return v4
.end method

.method public isCacheExpired(JI)Z
    .locals 2
    .param p1, "cacheTime"    # J
    .param p3, "cacheExpiryTime"    # I

    .prologue
    .line 2320
    if-eqz p3, :cond_0

    int-to-long v0, p3

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceOnEHRPD()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 183
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, " In eHRPD mode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceOnLTE()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 192
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, " In LTE mode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEABReady()Z
    .locals 5

    .prologue
    .line 1187
    const/4 v0, 0x1

    .line 1188
    .local v0, "is4GBetaCapabled":Z
    const/4 v2, 0x0

    .line 1189
    .local v2, "isImsRegistered":Z
    const/4 v1, 0x1

    .line 1191
    .local v1, "isCapbile":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVoLTEEnabled is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mVoLTEEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isVoLTEFeatureEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1193
    const/4 v0, 0x0

    .line 1195
    :cond_0
    sget-object v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-eqz v3, :cond_1

    .line 1196
    sget-object v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v3}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->ValidateIMSRegistration()Z

    move-result v2

    .line 1199
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImsRegistered is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCapabilityDiscover is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1202
    sget v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    if-nez v3, :cond_2

    .line 1203
    const/4 v0, 0x0

    .line 1205
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isInitialPublish403()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1247
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1250
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "initial_publish_403"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1252
    .local v0, "initial_publish":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInitialPublish403 value is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1254
    if-nez v0, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return v2

    .line 1256
    :cond_1
    const/16 v3, 0x193

    if-ne v0, v3, :cond_0

    .line 1257
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInitialPublish404()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1229
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1232
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "initial_publish_404"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1235
    .local v0, "initial_publish_404":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInitialPublish404 - 404 value is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1237
    if-nez v0, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v2

    .line 1239
    :cond_1
    const/16 v3, 0x194

    if-ne v0, v3, :cond_0

    .line 1240
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInitialPublishExponential_Backoff()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1264
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1267
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "retry_exponential_back_off"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1270
    .local v0, "initial_publish":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INITIAL_PUBLISH_RETRY_EXPONENTIAL_BACK_OFF value is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1273
    if-nez v0, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return v2

    .line 1275
    :cond_1
    const/16 v3, 0x198

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1f7

    if-eq v0, v3, :cond_2

    const/16 v3, 0x25b

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1f4

    if-ne v0, v3, :cond_0

    .line 1277
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isLTEVideoCallEnabled()Z
    .locals 2

    .prologue
    .line 2597
    const-string v0, "DEBUG"

    const-string v1, "EAB-ContactsEABDaemon isLTEVideoCallEnabled Called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-eqz v0, :cond_0

    .line 2600
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->isLTEVideoCallEnabled()Z

    move-result v0

    .line 2602
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumSendSubscribe(Ljava/lang/String;)Z
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1925
    const-string v4, "EAB-ContactsEABDaemon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNumSendSubscribe"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    if-nez p1, :cond_0

    .line 1966
    :goto_0
    return v2

    .line 1930
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1932
    .local v0, "returnnumber":Ljava/lang/String;
    const-string v4, "EAB-ContactsEABDaemon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stripSeparator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1935
    const-string v3, "EAB-ContactsEABDaemon"

    const-string v4, "returning as Number is null or starts with #"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1937
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_2

    .line 1938
    const-string v3, "EAB-ContactsEABDaemon"

    const-string v4, "Number length is != 7 and number length is less than 10 "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1940
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 1941
    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1942
    .local v1, "subString":Ljava/lang/String;
    const-string v4, "EAB-ContactsEABDaemon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Substring : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mRestrictedNumberList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1944
    const-string v3, "EAB-ContactsEABDaemon"

    const-string v4, "returning as Number is starts with restricted numbers"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1947
    goto :goto_0

    .line 1948
    .end local v1    # "subString":Ljava/lang/String;
    :cond_4
    const-string v4, "+1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-le v4, v5, :cond_6

    .line 1949
    const/4 v4, 0x2

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1950
    .restart local v1    # "subString":Ljava/lang/String;
    const-string v4, "EAB-ContactsEABDaemon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Substring Starting with +1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mRestrictedNumberList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1952
    const-string v3, "EAB-ContactsEABDaemon"

    const-string v4, "returning as Number is starts with restricted numbers"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 1955
    goto/16 :goto_0

    .line 1956
    .end local v1    # "subString":Ljava/lang/String;
    :cond_6
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_8

    .line 1957
    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1958
    .restart local v1    # "subString":Ljava/lang/String;
    const-string v4, "EAB-ContactsEABDaemon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Substring Starting with 1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    iget-object v4, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mRestrictedNumberList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1960
    const-string v3, "EAB-ContactsEABDaemon"

    const-string v4, "returning as Number is starts with restricted numbers"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 1963
    goto/16 :goto_0

    .end local v1    # "subString":Ljava/lang/String;
    :cond_8
    move v2, v3

    .line 1966
    goto/16 :goto_0
.end method

.method public isPublishRequired()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 200
    const-string v6, "isPublishRequired Called"

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isVoLTEFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish404()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish403()Z

    move-result v6

    if-nez v6, :cond_7

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "isAllowPublish":Z
    sget-object v6, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 211
    .local v2, "networkType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPublishRequired current networkType :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPublishRequired stored networkType :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "network_type"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 214
    sget-object v6, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    const-string v7, "network_type"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v2, :cond_0

    .line 215
    const/16 v6, 0x12

    if-eq v2, v6, :cond_0

    .line 216
    sget-object v6, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "network_type"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    const/4 v0, 0x1

    .line 222
    :cond_0
    const-string v6, "ril.ims.ltevoicesupport"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "strVoPS":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPublishRequired current strVoPS :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 227
    const/4 v4, -0x1

    .line 229
    .local v4, "voip_indication":I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 233
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPublishRequired current voip_indication :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPublishRequired stored voip_indication :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "vops_indication"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 236
    sget-object v6, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    const-string v7, "vops_indication"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 237
    sget-object v6, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "vops_indication"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    const/4 v0, 0x1

    .line 242
    :cond_2
    const/4 v1, 0x1

    .line 244
    .local v1, "lvc_value":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isLTEVideoCallEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 246
    const/4 v1, 0x1

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPublishRequired isLTEVideoCallEnabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 256
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPublishRequired current lvc_value :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPublishRequired stored lvc_value :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "lvc_on_off"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 259
    sget-object v6, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    const-string v7, "lvc_on_off"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v1, :cond_3

    .line 260
    sget-object v6, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "lvc_on_off"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 261
    const/4 v0, 0x1

    .line 264
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getPublishStatus()Z

    move-result v6

    if-nez v6, :cond_4

    .line 266
    const-string v6, "getPublishStatus is false"

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 268
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->setPublishStatus(Z)V

    .line 269
    const/4 v0, 0x1

    .line 272
    :cond_4
    sget-boolean v6, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->userNotRegistered:Z

    if-eqz v6, :cond_5

    .line 274
    const-string v6, "userNotRegistered is true"

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 275
    sput-boolean v5, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->userNotRegistered:Z

    .line 276
    const/4 v0, 0x1

    .line 278
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPublishRequired Called isAllowPublish : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 281
    .end local v0    # "isAllowPublish":Z
    .end local v1    # "lvc_value":I
    .end local v2    # "networkType":I
    .end local v3    # "strVoPS":Ljava/lang/String;
    .end local v4    # "voip_indication":I
    :goto_1
    return v0

    .line 251
    .restart local v0    # "isAllowPublish":Z
    .restart local v1    # "lvc_value":I
    .restart local v2    # "networkType":I
    .restart local v3    # "strVoPS":Ljava/lang/String;
    .restart local v4    # "voip_indication":I
    :cond_6
    const/4 v1, 0x0

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPublishRequired isLTEVideoCallEnabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "isAllowPublish":Z
    .end local v1    # "lvc_value":I
    .end local v2    # "networkType":I
    .end local v3    # "strVoPS":Ljava/lang/String;
    .end local v4    # "voip_indication":I
    :cond_7
    move v0, v5

    .line 281
    goto :goto_1
.end method

.method public isVoLTEFeatureEnabled()Z
    .locals 2

    .prologue
    .line 2673
    const-string v0, "DEBUG"

    const-string v1, "EAB-ContactsEABDaemon  isVoLTEFeatureEnabled Called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-eqz v0, :cond_0

    .line 2676
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->isVoLTEFeatureEnabled()Z

    move-result v0

    .line 2678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolteEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1210
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v4, "VoLTEBetaEnabled"

    const-string v5, "VoLTEBetaEnabled"

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1214
    .local v1, "str_temp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVolteEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1216
    const/4 v0, 0x1

    .line 1218
    .local v0, "isVolteEnabled":I
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1219
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1221
    :cond_0
    if-ne v0, v2, :cond_1

    .line 1224
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public modifyContactInfo(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "uri_List"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const-wide/16 v9, 0x32

    .line 1581
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1583
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v0, "modifyContactInfo - Entering"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1585
    const-string v2, ""

    .line 1586
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getTelNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1587
    const-string v5, ""

    .line 1589
    .local v5, "volteStatus":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 1590
    const-string v5, "true"

    .line 1594
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v0

    const-string v3, ""

    const-string v4, ""

    const-string v6, "true"

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->updateData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 1597
    .local v8, "msg":Landroid/os/Message;
    const/16 v0, 0xb

    iput v0, v8, Landroid/os/Message;->what:I

    .line 1598
    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1599
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactcardHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactcardHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1602
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 1603
    .local v7, "mesg":Landroid/os/Message;
    const/16 v0, 0xc

    iput v0, v7, Landroid/os/Message;->what:I

    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1606
    :cond_1
    const-string v0, "modifyContactInfo before dispatching message to Contactcard"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1615
    const-string v0, "handleSubscribeNotifyForAll - Exiting"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1616
    const/4 v0, 0x1

    return v0

    .line 1592
    .end local v7    # "mesg":Landroid/os/Message;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_2
    const-string v5, "false"

    goto :goto_0
.end method

.method public modifyNumberForSubscribe(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 1971
    move-object v5, p1

    .line 1972
    .local v5, "returnnumber":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getLocalAreaCode()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->LOCAL_AREA_CODE:Ljava/lang/String;

    .line 1973
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LOCAL_AREA_CODE is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->LOCAL_AREA_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object v8, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    const-string v9, "sipuriprefix"

    const-string v10, "sipuriprefix"

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1978
    .local v4, "prefix":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1979
    :cond_0
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prefix is not proper, so returning original number only, prefix - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    .end local p1    # "number":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1985
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1987
    .local v0, "checkNumberstartWithOne":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1988
    .local v3, "flag":Z
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    const-string v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1990
    const/4 v3, 0x1

    .line 1992
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1993
    .local v6, "telnumber":Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v8, v11, :cond_5

    .line 1994
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v11, :cond_3

    .line 1995
    const-string v8, "+"

    invoke-virtual {v6, v13, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1998
    :cond_3
    const-string v2, ""

    .line 1999
    .local v2, "countryCode":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-gt v8, v9, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v11, :cond_7

    .line 2003
    const-string v8, "+"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2004
    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2011
    :goto_1
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_4

    if-eqz v3, :cond_5

    .line 2012
    :cond_4
    invoke-virtual {v6, v12, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2015
    .end local v2    # "countryCode":Ljava/lang/String;
    :cond_5
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Befroe appending area code telnumber length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2020
    .local v1, "convertedNumber":Ljava/lang/String;
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertedNumber length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_8

    .line 2022
    new-instance v6, Ljava/lang/StringBuffer;

    .end local v6    # "telnumber":Ljava/lang/StringBuffer;
    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2023
    .restart local v6    # "telnumber":Ljava/lang/StringBuffer;
    sget-object v8, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->LOCAL_AREA_CODE:Ljava/lang/String;

    invoke-virtual {v6, v11, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2024
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "After appending LocalAreaCode telnumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", and convertedNumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 2032
    .local v7, "temp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    .end local v6    # "telnumber":Ljava/lang/StringBuffer;
    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2034
    .restart local v6    # "telnumber":Ljava/lang/StringBuffer;
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "telnumber is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "length is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2038
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2039
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v8

    invoke-static {v5, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2041
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2042
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number before mofication:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "modified number is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v5

    .line 2044
    goto/16 :goto_0

    .line 2006
    .end local v1    # "convertedNumber":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    .restart local v2    # "countryCode":Ljava/lang/String;
    :cond_6
    move-object v2, v4

    goto/16 :goto_1

    .line 2009
    :cond_7
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prefix length is too long or too small"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2027
    .end local v2    # "countryCode":Ljava/lang/String;
    .restart local v1    # "convertedNumber":Ljava/lang/String;
    :cond_8
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No need to append LocalAreaCode telnumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public printinfoforrawcontactid(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 17
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "Contactid"    # Ljava/lang/String;

    .prologue
    .line 2103
    const-string v1, "EAB-ContactsEABDaemon"

    const-string v3, "printinfoforrawcontactid"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    const/4 v11, -0x1

    .line 2106
    .local v11, "index":I
    const/4 v12, -0x1

    .line 2107
    .local v12, "mimeindex":I
    const/4 v9, -0x1

    .line 2108
    .local v9, "capabilityindex":I
    const/4 v15, -0x1

    .line 2109
    .local v15, "rawindex":I
    const-string v10, ""

    .line 2110
    .local v10, "data":Ljava/lang/String;
    const-string v13, ""

    .line 2111
    .local v13, "mimetype":Ljava/lang/String;
    const-string v8, ""

    .line 2112
    .local v8, "capability":Ljava/lang/String;
    const-string v14, ""

    .line 2113
    .local v14, "rawcontactid":Ljava/lang/String;
    const-string v16, ""

    .line 2115
    .local v16, "voltemdn":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "data"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2117
    .local v2, "CONTENT_URI":Landroid/net/Uri;
    const-string v1, "EAB-ContactsEABDaemon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content_uri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const-string v1, "EAB-ContactsEABDaemon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contactid we get from bindview:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2121
    .local v4, "SELECTION":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2122
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2123
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2124
    const-string v1, "EAB-ContactsEABDaemon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "printinfoforrawcontactid count :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2126
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2127
    const-string v1, "mimetype"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2128
    const-string v1, "data6"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2129
    const-string v1, "raw_contact_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 2131
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2132
    const-string v1, "data8"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2134
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2135
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2136
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2137
    const-string v1, "EAB-ContactsEABDaemon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mimeindex :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " capabilityindex :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " rawindex :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " rawcontactid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " voltemdn "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " data "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    const-string v1, "EAB-ContactsEABDaemon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capability :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mimetype "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2149
    :goto_0
    return-void

    .line 2147
    :cond_1
    const-string v1, "EAB-ContactsEABDaemon"

    const-string v3, "  printinfoforrawcontactid is null"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerContactListHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 642
    const-string v0, "registerContactListHandler"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 643
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    .line 644
    return-void
.end method

.method public registerContactcardHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 632
    const-string v0, "registerContactcardHandler"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 633
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactcardHandler:Landroid/os/Handler;

    .line 634
    return-void
.end method

.method public registerToImsService()V
    .locals 2

    .prologue
    .line 583
    const-string v0, "registerToImsService - start"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 585
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mIMEventCb:Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

    if-nez v0, :cond_0

    .line 586
    const-string v0, "registerToImsService - mIMEventCb is null"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 587
    new-instance v0, Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mIMEventCb:Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

    .line 588
    new-instance v0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;

    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mIMEventCb:Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;-><init>(Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;)V

    sput-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mEvtHandler:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;

    .line 590
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-nez v0, :cond_1

    .line 591
    const-string v0, "registerToImsService - sContactAdapter is null"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 592
    new-instance v0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    .line 593
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mEvtHandler:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->registerEventCallback(Landroid/os/Handler;)V

    .line 594
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->InitiateBootupPublishSubscribe()V

    .line 599
    :cond_1
    const-string v0, "registerToImsService - done"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public sendPublish(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 840
    return-void
.end method

.method public sendSubscribeForAddedNumber(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "num_contacts_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, " sendSubscribeForAddedNumber - Enter "

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 703
    const/4 v0, 0x0

    .line 705
    .local v0, "uri_contacts_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->convertNumListToURIList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 706
    const-string v1, "sending list subscribe for newly added contact as per the new requirement"

    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 708
    sget-object v1, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_SINGLE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForAllContacts(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public sendSubscribeForRefreshMenu(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 9
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "cnt_id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 2718
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSubcribe on Refresh contactId- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2722
    .local v6, "cLook":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2723
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2724
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2726
    :cond_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2728
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isDeviceOnEHRPD()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2729
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;

    invoke-direct {v1, p0, v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2796
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2799
    .end local v7    # "id":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2801
    :cond_2
    return-void

    .line 2794
    .restart local v7    # "id":Ljava/lang/String;
    :cond_3
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, "iMS nOT REGISTERED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendSubscribetoContacts()V
    .locals 1

    .prologue
    .line 654
    const-string v0, " sendSubscribetoContacts - Enter "

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish404()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish403()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getContactsURIfromDB()V

    .line 663
    :goto_0
    const-string v0, " sendSubscribetoContacts - Exit "

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 664
    return-void

    .line 661
    :cond_0
    const-string v0, " List Subscribe Not Triggered due to 404 Initial Publish"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendSubscribetoFreshContacts()V
    .locals 9

    .prologue
    .line 667
    const-string v7, " sendSubscribetoFreshContacts - Enter "

    invoke-static {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish404()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish403()Z

    move-result v7

    if-nez v7, :cond_0

    .line 670
    const/4 v6, 0x0

    .line 672
    .local v6, "uri_contacts_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 674
    .local v4, "num_contacts_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getFreshlyAddedContactsList()Ljava/util/ArrayList;

    move-result-object v4

    .line 677
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->convertNumListToURIList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 678
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 681
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheExpiryTime(Landroid/content/ContentResolver;)I

    move-result v0

    .line 682
    .local v0, "cacheExpiryTime":I
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheTime(Landroid/content/ContentResolver;I)J

    move-result-wide v1

    .line 684
    .local v1, "cacheTime":J
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollExpiryTime()I

    move-result v5

    .line 685
    .local v5, "pollExpiryTime":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CacheExpiryTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 686
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CacheTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 687
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pollExpiryTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 688
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Param testing...4 : mEabDaemon.isCacheExpired(cacheTime, cacheExpiryTime): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 691
    const-string v7, "sending Subscribe for Fresh Contacts - Now "

    invoke-static {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 693
    sget-object v7, Lcom/android/contacts/util/Constants;->LIST_SUBSCRIBE_TOKEN_FOR_ALL:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForAllContacts(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 698
    .end local v0    # "cacheExpiryTime":I
    .end local v1    # "cacheTime":J
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "num_contacts_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "pollExpiryTime":I
    .end local v6    # "uri_contacts_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const-string v7, " sendSubscribetoFreshContacts - Exit "

    invoke-static {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 699
    return-void

    .line 696
    :cond_0
    const-string v7, "Subscribe for Fresh Contacts failed due to 404 Initial Publish"

    invoke-static {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendsubscribe(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 2152
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSubcribe contactId- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2157
    .local v6, "cLook":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2158
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2159
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2163
    :cond_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2166
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isDeviceOnEHRPD()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2167
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$5;

    invoke-direct {v1, p0, v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$5;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2269
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2272
    .end local v7    # "id":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2275
    :cond_2
    return-void

    .line 2267
    .restart local v7    # "id":Ljava/lang/String;
    :cond_3
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, "iMS nOT REGISTERED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sentSubscribeForAllContacts(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1125
    .local p1, "cnt_arr_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, " sentSubscribeForAllContacts - Enter "

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1126
    if-nez p1, :cond_0

    .line 1127
    const-string v0, "sentSubscribeForAllContacts - Invalid uri list"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1138
    :goto_0
    return-void

    .line 1131
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-nez v0, :cond_1

    .line 1132
    const-string v0, "invalid adapter sContactAdapter = null"

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1135
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->SendSubscribeForContactsList(Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 1137
    const-string v0, " sentSubscribeForAllContacts - Exit "

    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sentSubscribeForContact(Ljava/lang/String;ZZ)Z
    .locals 7
    .param p1, "tel_num"    # Ljava/lang/String;
    .param p2, "isTelNum"    # Z
    .param p3, "isListSubscribe"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1286
    const-string v4, " sentSubscribeForContact - Enter "

    invoke-static {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1288
    if-nez p1, :cond_0

    .line 1289
    const-string v3, " sentSubscribeForContact - Invalid tel Number "

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1328
    :goto_0
    return v0

    .line 1300
    :cond_0
    const/4 v2, 0x0

    .line 1302
    .local v2, "sip_uri":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    .line 1304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1310
    :cond_1
    move-object v2, p1

    .line 1311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " calling SendSubscribeForContact sip_uri - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1313
    sget-object v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-nez v4, :cond_2

    .line 1314
    const-string v3, "invalid adapter sContactAdapter = null"

    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1317
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getContactsListUriType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1318
    .local v1, "newuri":Ljava/lang/String;
    const-string v4, "EAB-ContactsEABDaemon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UriList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    if-eqz p3, :cond_3

    move v0, v3

    .line 1322
    .local v0, "iListSubsribe":I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " calling SendSubscribeForContact for - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1323
    sget-object v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v4, v1, v0}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->SendSubscribeForContact(Ljava/lang/String;I)I

    .line 1327
    const-string v4, " sentSubscribeForContact - Exit "

    invoke-static {v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1328
    goto :goto_0
.end method

.method public setLTEVideoCall(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 2582
    const-string v0, "DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EAB-ContactsEABDaemon setLTEVideoCall Enter with value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-eqz v0, :cond_0

    .line 2586
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->setLTEVideoCall(Z)V

    .line 2591
    :goto_0
    const-string v0, "DEBUG"

    const-string v1, "EAB-ContactsEABDaemon setLTEVideoCall Exit"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    return-void

    .line 2589
    :cond_0
    const-string v0, "DEBUG"

    const-string v1, "EAB-ContactsEABDaemon setLTEVideoCall sContactAdapter is NULL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPublishStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 2683
    const-string v0, "DEBUG"

    const-string v1, "EAB-ContactsEABDaemon  setPublishStatus Called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "currentpublishstate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2685
    return-void
.end method

.method public setRegistrationPublish(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2607
    sput-boolean p1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->registrationPublishDone:Z

    .line 2608
    return-void
.end method

.method public setUserProvisionState(Z)V
    .locals 4
    .param p1, "provision"    # Z

    .prologue
    .line 2866
    const-string v1, "EAB-ContactsEABDaemon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserProvisionState with provision : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2868
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isuserprovisioned"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2869
    return-void
.end method

.method public setVoLTEEnableInMobileNetwork(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 2861
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoLTEEnableInMobileNetwork Enter with value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voicecall_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2863
    const-string v0, "DEBUG"

    const-string v1, "EAB-ContactsEABDaemon setVoLTEFeatureEnable Exit"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    return-void
.end method

.method public setVoLTEFeatureEnable(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 2656
    const-string v0, "DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EAB-ContactsEABDaemon setVoLTEFeatureEnable Enter with value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    if-eqz v0, :cond_0

    .line 2661
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->setVoLTEFeatureEnable(Z)V

    .line 2667
    :goto_0
    const-string v0, "DEBUG"

    const-string v1, "EAB-ContactsEABDaemon setVoLTEFeatureEnable Exit"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    return-void

    .line 2664
    :cond_0
    const-string v0, "DEBUG"

    const-string v1, "EAB-ContactsEABDaemon  setVoLTEFeatureEnable sContactAdapter is NULL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toShowVideoCallingGroup()Z
    .locals 4

    .prologue
    .line 2695
    const-string v2, "EAB-ContactsEABDaemon"

    const-string v3, "toShowVideoCallingGroup"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2697
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "isuserprovisioned"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2698
    .local v0, "isProvisioned":Z
    return v0
.end method

.method public unpublishCapabilityAndAvailablity()V
    .locals 2

    .prologue
    .line 2577
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, "unpublishCapabilityAndAvailablity"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->unpublishCapabilitiesAndAvailability()I

    .line 2579
    return-void
.end method

.method public updateUsersAvailability(Ljava/lang/String;)V
    .locals 23
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 1653
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1655
    .local v10, "cr":Landroid/content/ContentResolver;
    new-instance v19, Lcom/sec/android/app/contacts/eab/ImsParams;

    invoke-direct/range {v19 .. v19}, Lcom/sec/android/app/contacts/eab/ImsParams;-><init>()V

    .line 1656
    .local v19, "statusParams":Lcom/sec/android/app/contacts/eab/ImsParams;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/ImsParams;->unflatten(Ljava/lang/String;)V

    .line 1658
    const/4 v4, 0x0

    .line 1659
    .local v4, "avail_status":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1660
    .local v5, "serv_status":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1661
    .local v8, "uritype":Ljava/lang/String;
    const-string v11, "[,]"

    .line 1662
    .local v11, "delims":Ljava/lang/String;
    const-string v2, "count"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/eab/ImsParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1666
    .local v9, "count":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1668
    .local v16, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1669
    .local v17, "recieved_Ph_No":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 1670
    .local v15, "operationCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v9, :cond_7

    .line 1671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/eab/ImsParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1672
    .local v20, "updateinfo":Ljava/lang/String;
    if-nez v20, :cond_1

    .line 1670
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1674
    :cond_1
    const-string v2, "[,]"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1675
    .local v18, "status":[Ljava/lang/String;
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "status.length : "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v7, 0x4

    if-ge v2, v7, :cond_2

    .line 1677
    const-string v2, "EAB-ContactsEABDaemon"

    const-string v7, "updateInfo is not proper "

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1680
    :cond_2
    const/4 v2, 0x1

    aget-object v4, v18, v2

    .line 1681
    const/4 v2, 0x2

    aget-object v5, v18, v2

    .line 1682
    const/4 v2, 0x3

    aget-object v8, v18, v2

    .line 1683
    const/4 v6, 0x0

    .line 1685
    .local v6, "mdn":Ljava/lang/String;
    const-string v2, "EAB-ContactsEABDaemon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "number : "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v21, 0x0

    aget-object v21, v18, v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v21, "avail_status is :"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v21, "serv_status is :"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v21, "uri_type is :"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const-string v2, "2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1691
    const-string v2, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1692
    const-string v4, "1"

    .line 1693
    const-string v6, "false"

    .line 1703
    :cond_3
    :goto_2
    const/4 v2, 0x0

    aget-object v3, v18, v2

    .line 1704
    .local v3, "number":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    sget-object v2, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->userProfileContacts:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1712
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v2

    const-string v7, "true"

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getProfileDBOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1737
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactcardHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1786
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 1787
    .local v14, "msg":Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v14, Landroid/os/Message;->what:I

    .line 1788
    const/4 v2, 0x0

    aget-object v2, v18, v2

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactcardHandler:Landroid/os/Handler;

    const-wide/16 v21, 0x32

    move-wide/from16 v0, v21

    invoke-virtual {v2, v14, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1694
    .end local v3    # "number":Ljava/lang/String;
    .end local v14    # "msg":Landroid/os/Message;
    :cond_4
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1697
    const-string v4, "1"

    .line 1698
    const-string v6, "true"

    goto :goto_2

    .line 1701
    :cond_5
    const-string v6, "true"

    goto :goto_2

    .line 1732
    .restart local v3    # "number":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v2

    const-string v7, "true"

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getDBOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1793
    .end local v3    # "number":Ljava/lang/String;
    .end local v6    # "mdn":Ljava/lang/String;
    .end local v18    # "status":[Ljava/lang/String;
    .end local v20    # "updateinfo":Ljava/lang/String;
    :cond_7
    if-eqz v15, :cond_8

    .line 1794
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v2

    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v2, v7, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->applyBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 1797
    const/4 v15, 0x0

    .line 1798
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1829
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    if-eqz v2, :cond_9

    .line 1830
    const-string v2, "contact listhandler is not null"

    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V

    .line 1831
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 1832
    .local v13, "mesg":Landroid/os/Message;
    const/16 v2, 0xc

    iput v2, v13, Landroid/os/Message;->what:I

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mContactListHandler:Landroid/os/Handler;

    const-wide/16 v21, 0x32

    move-wide/from16 v0, v21

    invoke-virtual {v2, v13, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1835
    .end local v13    # "mesg":Landroid/os/Message;
    :cond_9
    return-void
.end method
