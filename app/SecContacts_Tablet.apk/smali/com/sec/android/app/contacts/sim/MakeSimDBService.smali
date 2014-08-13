.class public Lcom/sec/android/app/contacts/sim/MakeSimDBService;
.super Landroid/app/Service;
.source "MakeSimDBService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/sim/MakeSimDBService$1;,
        Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;,
        Lcom/sec/android/app/contacts/sim/MakeSimDBService$projectionTypes;
    }
.end annotation


# static fields
.field static final ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

.field static final ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

.field static final ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

.field static final ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

.field static final ADN_COMPARE_PROJECTION:[Ljava/lang/String;

.field static final ADN_EMAILS_PROJECTION:[Ljava/lang/String;

.field private static volatile ADN_INDEX_COLUMN_INDEX:I = 0x0

.field static final ADN_PROJECTION:[Ljava/lang/String;

.field private static volatile ANR_A_NUMBER_COLUMN_INDEX:I = 0x0

.field private static volatile ANR_B_NUMBER_COLUMN_INDEX:I = 0x0

.field private static volatile ANR_C_NUMBER_COLUMN_INDEX:I = 0x0

.field private static volatile ANR_NUMBER_COLUMN_INDEX:I = 0x0

.field private static volatile EMAIL_COLUMN_INDEX:I = 0x0

.field private static final IS_SIM_ACCOUNT:Ljava/lang/String; = " account_type = \'vnd.sec.contact.sim\' AND account_name = \'primary.sim.account_name\' "

.field private static volatile NAME_COLUMN_INDEX:I = 0x0

.field private static volatile NUMBER_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MakeSimDBService"

.field private static mBatchCounter:I

.field private static mInitSettingValue:J

.field private static mIsBlockFormatMyProfile:Z

.field private static mLastBatch:I

.field private static mLastOneBatchCount:I

.field static final mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCursor:Landroid/database/Cursor;

.field private volatile mPbInitValue:Ljava/lang/String;

.field private mProviderStatus:I

.field private mResolver:Landroid/content/ContentResolver;

.field private volatile mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 105
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "number"

    aput-object v3, v2, v1

    const-string v3, "emails"

    aput-object v3, v2, v6

    const-string v3, "adn_index"

    aput-object v3, v2, v7

    sput-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_PROJECTION:[Ljava/lang/String;

    .line 112
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "number"

    aput-object v3, v2, v1

    const-string v3, "anr_number"

    aput-object v3, v2, v6

    const-string v3, "anrA_number"

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const-string v4, "anrB_number"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "anrC_number"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "emails"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "adn_index"

    aput-object v4, v2, v3

    sput-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    .line 123
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "number"

    aput-object v3, v2, v1

    const-string v3, "anr_number"

    aput-object v3, v2, v6

    const-string v3, "emails"

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const-string v4, "adn_index"

    aput-object v4, v2, v3

    sput-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    .line 131
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "number"

    aput-object v3, v2, v1

    const-string v3, "adn_index"

    aput-object v3, v2, v6

    sput-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 138
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "number"

    aput-object v3, v2, v1

    const-string v3, "anr_number"

    aput-object v3, v2, v6

    const-string v3, "anrA_number"

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const-string v4, "anrB_number"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "anrC_number"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "adn_index"

    aput-object v4, v2, v3

    sput-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 148
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "number"

    aput-object v3, v2, v1

    const-string v3, "anr_number"

    aput-object v3, v2, v6

    const-string v3, "adn_index"

    aput-object v3, v2, v7

    sput-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 156
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "emails"

    aput-object v3, v2, v0

    const-string v3, "adn_index"

    aput-object v3, v2, v1

    sput-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    .line 161
    sput v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NAME_COLUMN_INDEX:I

    .line 162
    sput v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NUMBER_COLUMN_INDEX:I

    .line 164
    sput v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_NUMBER_COLUMN_INDEX:I

    .line 165
    sput v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    .line 166
    sput v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    .line 167
    sput v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    .line 169
    sput v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->EMAIL_COLUMN_INDEX:I

    .line 170
    sput v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_INDEX_COLUMN_INDEX:I

    .line 172
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mInitSettingValue:J

    .line 173
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    .line 174
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    .line 175
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    .line 177
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_AutoUpdateMyProfile"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mIsBlockFormatMyProfile:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    .line 1601
    return-void
.end method

.method private CompareAdnData(III)V
    .locals 2
    .param p1, "opCode"    # I
    .param p2, "simState"    # I
    .param p3, "startId"    # I

    .prologue
    .line 560
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    :cond_0
    monitor-enter p0

    .line 563
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 568
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCompareData(III)V

    .line 569
    return-void

    .line 564
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/sim/MakeSimDBService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doInitAction(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/sim/MakeSimDBService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doQueryAction(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/sim/MakeSimDBService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCheckAdnAttribute(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/sim/MakeSimDBService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/sim/MakeSimDBService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doBtSapAction(IIZ)V

    return-void
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 25
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1079
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NAME_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1080
    .local v17, "name":Ljava/lang/String;
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1081
    .local v18, "phoneNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1082
    .local v6, "AnrNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1083
    .local v3, "AnrANumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1084
    .local v4, "AnrBNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1085
    .local v5, "AnrCNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v7

    .line 1087
    .local v7, "anrConfigValue":I
    if-lez v7, :cond_0

    .line 1088
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1089
    const/16 v20, 0x3

    move/from16 v0, v20

    if-le v7, v0, :cond_0

    .line 1090
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1091
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1092
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1096
    :cond_0
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->EMAIL_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1097
    .local v13, "emailAddresses":Ljava/lang/String;
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_INDEX_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1099
    .local v15, "index":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 1100
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1105
    .local v12, "emailAddressArray":[Ljava/lang/String;
    :goto_0
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1108
    .local v19, "rawContactIdIndex":I
    sget-object v20, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1110
    .local v9, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v20, "account_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1111
    const-string v20, "account_type"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1112
    const-string v20, "sourceid"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1113
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1117
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1118
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1119
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1120
    const-string v20, "data2"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1121
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1126
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1127
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1128
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1129
    const-string v20, "data2"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1130
    const-string v20, "data1"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1131
    const-string v20, "is_primary"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1132
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 1138
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1139
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1140
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1141
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1142
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1143
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1144
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1149
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1150
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1151
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1152
    const-string v20, "data2"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1153
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1154
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1155
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 1160
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1161
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1162
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1163
    const-string v20, "data2"

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1164
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1165
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1166
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 1171
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1172
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1173
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1174
    const-string v20, "data2"

    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1175
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1176
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1177
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_6
    if-eqz v12, :cond_9

    .line 1182
    move-object v8, v12

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_9

    aget-object v11, v8, v14

    .line 1183
    .local v11, "emailAddress":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 1184
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1185
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1186
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1187
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1188
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1189
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1102
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "emailAddress":Ljava/lang/String;
    .end local v12    # "emailAddressArray":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v19    # "rawContactIdIndex":I
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "emailAddressArray":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1194
    .restart local v9    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v19    # "rawContactIdIndex":I
    :cond_9
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    .line 1195
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    .line 1196
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    const/16 v21, 0x3c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    sget v21, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1198
    :cond_a
    :try_start_0
    const-string v20, "com.android.contacts"

    sget-object v21, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1199
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1200
    const/16 v20, 0x0

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1209
    :cond_b
    :goto_2
    return-void

    .line 1201
    :catch_0
    move-exception v10

    .line 1202
    .local v10, "e":Landroid/os/RemoteException;
    const-string v20, "MakeSimDBService"

    const-string v21, "%s: %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1203
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 1204
    .local v10, "e":Landroid/content/OperationApplicationException;
    const-string v20, "MakeSimDBService"

    const-string v21, "%s: %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1205
    .end local v10    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v10

    .line 1206
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string v20, "MakeSimDBService"

    const-string v21, "%s: %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private checkAndUpdateAdnEditable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1456
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isAdnEditable()Z

    move-result v0

    .line 1457
    .local v0, "isAdnEditable":Z
    const-string v2, "adn_editable"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v1

    .line 1458
    .local v1, "val":I
    if-eqz v0, :cond_1

    if-eq v1, v4, :cond_1

    .line 1459
    const-string v2, "adn_editable"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 1461
    const-string v2, "adn_editable"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkProviderState()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1650
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1653
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1655
    .local v7, "status":I
    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    if-eq v7, v0, :cond_0

    .line 1656
    iput v7, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    .end local v7    # "status":I
    :cond_0
    if-eqz v6, :cond_1

    .line 1661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1664
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_2
    move v0, v9

    :goto_0
    return v0

    .line 1660
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v8

    .line 1664
    goto :goto_0
.end method

.method private doBtSapAction(IIZ)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "startId"    # I
    .param p3, "connected"    # Z

    .prologue
    .line 1444
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1448
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    .line 1453
    :goto_0
    return-void

    .line 1451
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doInitAction(II)V

    goto :goto_0
.end method

.method private doCheckAdnAttribute(II)V
    .locals 12
    .param p1, "opCode"    # I
    .param p2, "startId"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1374
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isFDNEnabled()Z

    move-result v2

    .line 1375
    .local v2, "isFdnEnabled":Z
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isAdnEditable()Z

    move-result v1

    .line 1377
    .local v1, "isAdnEditable":Z
    const-string v6, "adn_editable"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v5

    .line 1378
    .local v5, "val":I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckAdnAttribute isAdnEditable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    if-eqz v1, :cond_2

    if-eq v5, v10, :cond_2

    .line 1380
    const-string v6, "adn_editable"

    invoke-direct {p0, v6, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1385
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 1386
    if-nez v1, :cond_3

    .line 1388
    const-string v6, "fdn_on_adn_deleted"

    invoke-direct {p0, v6, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1389
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->preserveInitStatusForFDN()V

    .line 1391
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 1392
    .local v4, "settingValue":I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckAdnAttribute settingValue(FDNEnable) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    if-ne v4, v10, :cond_1

    .line 1395
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1397
    :cond_1
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    .line 1422
    .end local v4    # "settingValue":I
    :goto_1
    return-void

    .line 1381
    :cond_2
    if-nez v1, :cond_0

    if-eqz v5, :cond_0

    .line 1382
    const-string v6, "adn_editable"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 1399
    :cond_3
    invoke-direct {p0, p1, v11, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_1

    .line 1403
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1405
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "fdn_on_adn_deleted"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1406
    .local v0, "isAdnDeleted":I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckAdnAttribute isAdnDeleted = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    if-ne v0, v10, :cond_6

    .line 1408
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 1409
    .restart local v4    # "settingValue":I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckAdnAttribute settingValue(FDNDisable) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    if-ne v4, v10, :cond_5

    .line 1413
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1416
    :cond_5
    const/4 v6, 0x7

    invoke-direct {p0, p1, v6, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->CompareAdnData(III)V

    goto :goto_1

    .line 1419
    .end local v4    # "settingValue":I
    :cond_6
    invoke-direct {p0, p1, v11, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_1
.end method

.method private doCheckSimState(II)V
    .locals 11
    .param p1, "opCode"    # I
    .param p2, "startId"    # I

    .prologue
    .line 403
    iget-object v8, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    .line 405
    .local v7, "simState":I
    const-string v8, "MakeSimDBService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ doCheckSimState simState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    .line 412
    .local v3, "isAirPlaneOn":Z
    :goto_0
    const-string v8, "gsm.sim.currentcardstatus"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 413
    .local v0, "cardStatus":I
    const-string v8, "MakeSimDBService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@ doCheckSimState isAirPalneMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  cardStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-nez v7, :cond_1

    if-nez v3, :cond_1

    .line 415
    const/4 v5, 0x6

    .line 416
    .local v5, "retry":I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    .line 420
    const/4 v5, 0x2

    .line 421
    const-string v8, "MakeSimDBService"

    const-string v9, " @@ doCheckSimState cardStatus : 2 , wait 10sec to check telephony state"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 424
    monitor-enter p0

    .line 426
    const-wide/16 v8, 0x1388

    :try_start_0
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 427
    iget-object v8, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 429
    if-eqz v7, :cond_4

    .line 430
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    .end local v1    # "i":I
    .end local v5    # "retry":I
    :cond_1
    packed-switch v7, :pswitch_data_0

    .line 507
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    .line 510
    :cond_2
    :goto_2
    return-void

    .line 409
    .end local v0    # "cardStatus":I
    .end local v3    # "isAirPlaneOn":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 431
    .restart local v0    # "cardStatus":I
    .restart local v1    # "i":I
    .restart local v3    # "isAirPlaneOn":Z
    .restart local v5    # "retry":I
    :catch_0
    move-exception v8

    .line 433
    :cond_4
    :try_start_2
    monitor-exit p0

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 439
    .end local v1    # "i":I
    .end local v5    # "retry":I
    :pswitch_0
    const-string v8, "MakeSimDBService"

    const-string v9, "@@ doCheckSimState: UNKNOWN"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x2

    if-eq v0, v8, :cond_5

    if-nez v0, :cond_6

    .line 443
    :cond_5
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 445
    :cond_6
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_2

    .line 451
    :pswitch_1
    const-string v8, "MakeSimDBService"

    const-string v9, "@@ doCheckSimState: No SIM"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 463
    :pswitch_2
    const/16 v8, 0x270f

    if-ne p1, v8, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isIccCardChanged()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 464
    const-string v8, "MakeSimDBService"

    const-string v9, "@@ SIM card is changed"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v8, 0x2

    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    .line 485
    :goto_3
    sget-boolean v8, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mIsBlockFormatMyProfile:Z

    if-eqz v8, :cond_2

    .line 486
    const-string v8, "setInitialMyProfile"

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v6

    .line 487
    .local v6, "setInitialMyProfile":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_a

    .line 488
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isSetupWizard()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 489
    :goto_4
    const-string v8, "FINISH"

    const-string v9, "persist.sys.setupwizard"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 490
    monitor-enter p0

    .line 492
    :try_start_3
    const-string v8, "MakeSimDBService"

    const-string v9, "@@ waiting for finishing setupwizard"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 496
    :goto_5
    :try_start_4
    monitor-exit p0

    goto :goto_4

    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 467
    .end local v6    # "setInitialMyProfile":I
    :cond_7
    const-string v8, "MakeSimDBService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ doCheckSimState: SIM READY opCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v8, "MakeSimDBService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ doCheckSimState: simState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v8, 0x5

    if-ne v7, v8, :cond_9

    const/16 v8, 0x270f

    if-ne p1, v8, :cond_9

    .line 473
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isFDNEnabled()Z

    move-result v4

    .line 474
    .local v4, "isFdnEnabled":Z
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isAdnEditable()Z

    move-result v2

    .line 476
    .local v2, "isAdnEditable":Z
    if-eqz v4, :cond_8

    if-nez v2, :cond_8

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCheckAdnAttribute(II)V

    goto :goto_3

    .line 479
    :cond_8
    const/4 v8, 0x5

    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->CompareAdnData(III)V

    goto :goto_3

    .line 482
    .end local v2    # "isAdnEditable":Z
    .end local v4    # "isFdnEnabled":Z
    :cond_9
    const/4 v8, 0x5

    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->CompareAdnData(III)V

    goto/16 :goto_3

    .line 500
    .restart local v6    # "setInitialMyProfile":I
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doWriteSIMProfile()V

    .line 501
    const-string v8, "setInitialMyProfile"

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 494
    :catch_1
    move-exception v8

    goto :goto_5

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private doCompareData(III)V
    .locals 21
    .param p1, "opCode"    # I
    .param p2, "simState"    # I
    .param p3, "startId"    # I

    .prologue
    .line 583
    const/4 v13, 0x0

    .line 584
    .local v13, "diff":I
    const/4 v14, 0x0

    .line 585
    .local v14, "diff_found":Z
    const/4 v11, 0x0

    .line 586
    .local v11, "dbCursor":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 587
    .local v20, "simCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 590
    .local v12, "db_count":I
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    move/from16 v19, v0

    .line 591
    .local v19, "length":I
    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/String;

    .line 592
    .local v4, "projectionToCompare":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 597
    if-eqz v11, :cond_6

    if-eqz v20, :cond_6

    .line 599
    const-string v2, "MakeSimDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dbCursor count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "    simCursor count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 602
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 603
    const-string v2, "MakeSimDBService"

    const-string v3, "@@ 1st Count is different break"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_0
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 694
    .end local v4    # "projectionToCompare":[Ljava/lang/String;
    .end local v19    # "length":I
    :cond_1
    :goto_0
    return-void

    .line 606
    .restart local v4    # "projectionToCompare":[Ljava/lang/String;
    .restart local v19    # "length":I
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 607
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_3
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 611
    :cond_4
    :try_start_2
    new-instance v18, Landroid/database/CursorJoiner;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v4, v1, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 612
    .local v18, "joiner":Landroid/database/CursorJoiner;
    invoke-virtual/range {v18 .. v18}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/database/CursorJoiner$Result;

    .line 613
    .local v17, "joinResult":Landroid/database/CursorJoiner$Result;
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 626
    :goto_1
    if-lez v13, :cond_5

    .line 627
    const/4 v14, 0x1

    .line 636
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .end local v18    # "joiner":Landroid/database/CursorJoiner;
    :cond_6
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_7
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 640
    .end local v4    # "projectionToCompare":[Ljava/lang/String;
    .end local v19    # "length":I
    :cond_8
    :goto_2
    if-nez v14, :cond_11

    .line 641
    const/4 v11, 0x0

    .line 642
    const/16 v20, 0x0

    .line 645
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 647
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/contacts/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 649
    if-eqz v11, :cond_f

    if-eqz v20, :cond_f

    .line 650
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 651
    const-string v2, "MakeSimDBService"

    const-string v3, "@@ 2nd Count is different break"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 681
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 682
    :cond_9
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 615
    .restart local v4    # "projectionToCompare":[Ljava/lang/String;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .restart local v18    # "joiner":Landroid/database/CursorJoiner;
    .restart local v19    # "length":I
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    .line 616
    goto :goto_1

    .line 619
    :pswitch_1
    add-int/lit8 v13, v13, 0x1

    .line 620
    goto :goto_1

    .line 632
    .end local v4    # "projectionToCompare":[Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .end local v18    # "joiner":Landroid/database/CursorJoiner;
    .end local v19    # "length":I
    :catch_0
    move-exception v15

    .line 634
    .local v15, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 636
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_a
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 636
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_b
    if-eqz v20, :cond_c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 656
    :cond_d
    :try_start_5
    new-instance v18, Landroid/database/CursorJoiner;

    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v2, v1, v3}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 657
    .restart local v18    # "joiner":Landroid/database/CursorJoiner;
    invoke-virtual/range {v18 .. v18}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/database/CursorJoiner$Result;

    .line 658
    .restart local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    packed-switch v2, :pswitch_data_1

    .line 671
    :goto_3
    if-lez v13, :cond_e

    .line 672
    const/4 v14, 0x1

    .line 681
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .end local v18    # "joiner":Landroid/database/CursorJoiner;
    :cond_f
    if-eqz v11, :cond_10

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 682
    :cond_10
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_11
    :goto_4
    if-nez v14, :cond_15

    .line 692
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto/16 :goto_0

    .line 660
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .restart local v18    # "joiner":Landroid/database/CursorJoiner;
    :pswitch_2
    add-int/lit8 v13, v13, 0x1

    .line 661
    goto :goto_3

    .line 664
    :pswitch_3
    add-int/lit8 v13, v13, 0x1

    .line 665
    goto :goto_3

    .line 677
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .end local v18    # "joiner":Landroid/database/CursorJoiner;
    :catch_1
    move-exception v15

    .line 679
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 681
    if-eqz v11, :cond_12

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 682
    :cond_12
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 681
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_13

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 682
    :cond_13
    if-eqz v20, :cond_14

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v2

    .line 689
    :cond_15
    const-string v2, "MakeSimDBService"

    const-string v3, "@@ diff found Goto delete"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto/16 :goto_0

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 658
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doDeleteSIMProfile(Ljava/lang/String;)Z
    .locals 12
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 700
    const-string v0, "MakeSimDBService"

    const-string v2, "@@ doDeleteSIMProfile: "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 706
    .local v1, "simProfileUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 708
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 709
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 710
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "data1"

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "data2"

    aput-object v2, v4, v0

    .line 713
    .local v4, "projection":[Ljava/lang/String;
    const-string v11, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 715
    .local v11, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    .line 719
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 722
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 723
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 724
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 726
    .local v10, "localprofileNumber":Ljava/lang/String;
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 728
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 729
    const/4 v0, 0x0

    .line 744
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "localprofileNumber":Ljava/lang/String;
    .end local v11    # "selection":Ljava/lang/String;
    :goto_0
    return v0

    .line 731
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "localprofileNumber":Ljava/lang/String;
    .restart local v11    # "selection":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 736
    .end local v10    # "localprofileNumber":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x1

    goto :goto_0

    .line 732
    :cond_2
    if-eqz v8, :cond_1

    .line 733
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 739
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "selection":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    .line 740
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 741
    const/4 v0, 0x1

    goto :goto_0

    .line 744
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doDeleteSimDB(III)V
    .locals 12
    .param p1, "opCode"    # I
    .param p2, "simState"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 939
    const-string v0, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ doDeleteSimDB: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    monitor-enter p0

    .line 943
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 948
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 951
    .local v10, "start":J
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v4, "primary.sim.account_name"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 956
    .local v1, "checkUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 957
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 958
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 959
    sget-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v4, "primary.sim.account_name"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 962
    .local v7, "deleteUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v7, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 994
    .end local v7    # "deleteUri":Landroid/net/Uri;
    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 995
    .local v8, "end":J
    const-string v0, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ db delete time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v8, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    packed-switch p2, :pswitch_data_0

    .line 1013
    :goto_3
    :pswitch_0
    return-void

    .line 963
    .end local v8    # "end":J
    :cond_2
    if-eqz v6, :cond_1

    .line 964
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1001
    .restart local v8    # "end":J
    :pswitch_1
    const-string v0, "MakeSimDBService"

    const-string v2, "@@ doDeleteSimDB Go to last action "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_3

    .line 1008
    :pswitch_2
    const-string v0, "MakeSimDBService"

    const-string v2, "@@ doDeleteSimDB Go to Write action "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doWriteSimDB(III)V

    goto :goto_3

    .line 944
    .end local v1    # "checkUri":Landroid/net/Uri;
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v8    # "end":J
    .end local v10    # "start":J
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doInitAction(II)V
    .locals 0
    .param p1, "opCode"    # I
    .param p2, "startId"    # I

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCheckSimState(II)V

    .line 379
    return-void
.end method

.method private doLastAction(III)V
    .locals 11
    .param p1, "opCode"    # I
    .param p2, "simState"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1470
    const/4 v2, 0x0

    .line 1472
    .local v2, "needNotify":Z
    const-string v7, "sim_db_ready"

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 1473
    .local v4, "settingValue":I
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ doLastAction : settingValue= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ doLastAction : simState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " opCode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    if-nez v4, :cond_1

    .line 1477
    const-string v7, "sim_db_ready"

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1478
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setRuntimeFirstBootTime()V

    .line 1479
    if-nez p2, :cond_0

    .line 1486
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.intent.action.SIMDB_UNKNOWN_READY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1488
    :cond_0
    const/4 v2, 0x1

    .line 1502
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1552
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkAndUpdateAdnEditable()V

    .line 1557
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 1559
    const-string v7, "MakeSimDBService"

    const-string v8, "@@  NOTIFY !!"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1563
    :cond_3
    invoke-direct {p0, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doStopService(I)V

    .line 1564
    return-void

    .line 1504
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkAndUpdateAdnEditable()V

    .line 1511
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    goto :goto_0

    .line 1516
    :sswitch_1
    if-eqz p2, :cond_5

    .line 1517
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1519
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "airplane_mode_changed"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1520
    .local v1, "isAirPlainChanged":I
    const/4 v7, 0x1

    if-ne v1, v7, :cond_5

    .line 1521
    const-string v7, "airplain_init_sim_status"

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v5, v7

    .line 1522
    .local v5, "status":J
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ 7777 initStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const-wide/16 v7, 0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    .line 1524
    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateSettingStatus(J)V

    .line 1525
    const/4 v2, 0x0

    .line 1527
    :cond_4
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1528
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "airplane_mode_changed"

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1529
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1532
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "isAirPlainChanged":I
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "status":J
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkAndUpdateAdnEditable()V

    goto :goto_0

    .line 1537
    :sswitch_2
    const/4 v7, 0x7

    if-ne p2, v7, :cond_2

    .line 1538
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateAdnDeletedStatus(I)V

    .line 1539
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1541
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    const-string v7, "fdn_init_sim_status"

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v5, v7

    .line 1542
    .restart local v5    # "status":J
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ 6666 initStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const-wide/16 v7, 0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_2

    .line 1544
    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateSettingStatus(J)V

    .line 1545
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1502
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a0a -> :sswitch_2
        0x1e61 -> :sswitch_1
        0x270f -> :sswitch_0
    .end sparse-switch
.end method

.method private doQueryAction(II)V
    .locals 3
    .param p1, "opCode"    # I
    .param p2, "startId"    # I

    .prologue
    .line 1302
    const-string v1, "sim_db_ready"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1303
    .local v0, "settingValue":I
    if-nez v0, :cond_0

    .line 1304
    const-string v1, "sim_db_ready"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1305
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doStopService(I)V

    .line 1306
    return-void
.end method

.method private doStopService(I)V
    .locals 2
    .param p1, "startId"    # I

    .prologue
    .line 1580
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mIsBlockFormatMyProfile:Z

    if-nez v0, :cond_1

    .line 1581
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1582
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    :goto_0
    const-string v0, "FINISH"

    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1585
    monitor-enter p0

    .line 1587
    :try_start_0
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ waiting for finishing setupwizard"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1595
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doWriteSIMProfile()V

    .line 1596
    const-string v0, "setInitialMyProfile"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1598
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 1599
    return-void

    .line 1589
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private doWriteSIMProfile()V
    .locals 22

    .prologue
    .line 748
    const-string v2, "MakeSimDBService"

    const-string v4, "@@ doWriteSIMProfile: "

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v18

    .line 752
    .local v18, "phone_number":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 755
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_0

    const-string v2, "+82"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 758
    :cond_0
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 762
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mIsBlockFormatMyProfile:Z

    if-eqz v2, :cond_3

    .line 763
    const-string v2, "setInitialMyProfile"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v21

    .line 764
    .local v21, "setInitialMyProfile":I
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSIMProfile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 928
    .end local v21    # "setInitialMyProfile":I
    :cond_2
    :goto_0
    return-void

    .line 766
    :cond_3
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 767
    const-string v2, "MakeSimDBService"

    const-string v4, "@@ SIM PhoneNumber is empty & Not AT&T device "

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_name"

    const-string v6, "vnd.sec.contact.phone"

    invoke-virtual {v2, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_type"

    const-string v6, "vnd.sec.contact.phone"

    invoke-virtual {v2, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 776
    .local v3, "simProfileUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 780
    .local v13, "cur":Landroid/database/Cursor;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "data"

    const-string v6, "profile/data"

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 782
    .local v5, "PROFILE_DATA":Landroid/net/Uri;
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 783
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 784
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 785
    .local v19, "rawContactsId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 786
    .local v12, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 787
    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v6, 0x1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "2"

    aput-object v7, v4, v6

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 791
    const-string v2, "is_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 792
    const-string v2, "is_super_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 793
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 795
    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data1"

    aput-object v7, v6, v2

    const-string v7, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v19, v8, v2

    const/4 v2, 0x1

    const-string v9, "vnd.android.cursor.item/phone_v2"

    aput-object v9, v8, v2

    const/4 v2, 0x2

    const-string v9, "2"

    aput-object v9, v8, v2

    const/4 v2, 0x3

    aput-object v18, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 805
    .local v14, "curData":Landroid/database/Cursor;
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 806
    :cond_5
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 807
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v19

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 808
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 809
    const-string v2, "data2"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 810
    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 811
    const-string v2, "is_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 812
    const-string v2, "is_super_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 813
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    :cond_6
    if-eqz v14, :cond_7

    .line 816
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_7
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 818
    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v6, 0x1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "2"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v18, v4, v6

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 824
    const-string v2, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 825
    const-string v2, "is_super_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 826
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    .end local v14    # "curData":Landroid/database/Cursor;
    :cond_8
    :goto_1
    if-eqz v13, :cond_9

    .line 912
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 913
    :cond_9
    const/4 v13, 0x0

    .line 916
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    sget-object v6, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 917
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 926
    :goto_2
    if-eqz v13, :cond_2

    .line 927
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 830
    .end local v12    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v19    # "rawContactsId":Ljava/lang/String;
    :cond_a
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 832
    .restart local v12    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "account_name"

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 833
    const-string v2, "account_type"

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 834
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    sget-object v6, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 837
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 842
    :goto_3
    const-string v19, ""

    .line 843
    .restart local v19    # "rawContactsId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 847
    .local v20, "rwCur":Landroid/database/Cursor;
    if-eqz v20, :cond_b

    .line 848
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 849
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 850
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 852
    :cond_b
    sget-boolean v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mIsBlockFormatMyProfile:Z

    if-eqz v2, :cond_c

    .line 854
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0009

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 856
    .local v17, "name":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 857
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 858
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 859
    const-string v2, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 860
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v19

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 861
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    sget-object v6, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 863
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 869
    .end local v17    # "name":Ljava/lang/String;
    :cond_c
    :goto_4
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 870
    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v6, 0x1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "2"

    aput-object v7, v4, v6

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 874
    const-string v2, "is_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 875
    const-string v2, "is_super_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 876
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data1"

    aput-object v7, v6, v2

    const-string v7, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v19, v8, v2

    const/4 v2, 0x1

    const-string v9, "vnd.android.cursor.item/phone_v2"

    aput-object v9, v8, v2

    const/4 v2, 0x2

    const-string v9, "2"

    aput-object v9, v8, v2

    const/4 v2, 0x3

    aput-object v18, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 886
    .restart local v14    # "curData":Landroid/database/Cursor;
    if-eqz v14, :cond_d

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_e

    .line 887
    :cond_d
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 888
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v19

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 889
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 890
    const-string v2, "data2"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 891
    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 892
    const-string v2, "is_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 893
    const-string v2, "is_super_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 894
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_e
    if-eqz v14, :cond_f

    .line 897
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 898
    :cond_f
    const/4 v14, 0x0

    .line 899
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 900
    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v6, 0x1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "2"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v18, v4, v6

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 906
    const-string v2, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 907
    const-string v2, "is_super_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 908
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 838
    .end local v14    # "curData":Landroid/database/Cursor;
    .end local v19    # "rawContactsId":Ljava/lang/String;
    .end local v20    # "rwCur":Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 839
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 865
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v19    # "rawContactsId":Ljava/lang/String;
    .restart local v20    # "rwCur":Landroid/database/Cursor;
    :catch_1
    move-exception v16

    .line 866
    .local v16, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 918
    .end local v16    # "ex":Ljava/lang/Exception;
    .end local v20    # "rwCur":Landroid/database/Cursor;
    :catch_2
    move-exception v15

    .line 920
    .local v15, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 921
    .end local v15    # "e":Landroid/content/OperationApplicationException;
    :catch_3
    move-exception v15

    .line 923
    .local v15, "e":Landroid/os/RemoteException;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private doWriteSimDB(III)V
    .locals 6
    .param p1, "opCode"    # I
    .param p2, "simState"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1016
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    .line 1017
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    .line 1020
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    monitor-enter p0

    .line 1023
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    .line 1034
    const-string v0, "MakeSimDBService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ WriteAllSimContactsThread mLastBatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getColumnIndex(Landroid/database/Cursor;)V

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1038
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    goto :goto_2

    .line 1041
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1044
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    .line 1045
    return-void

    .line 1024
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getCallingUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 1271
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1272
    .local v0, "anrConfigValue":I
    const/4 v1, 0x0

    .line 1273
    .local v1, "uri":Landroid/net/Uri;
    if-lez v0, :cond_0

    .line 1274
    sget-object v1, Lcom/android/contacts/util/Constants;->ADN_ANR_URI:Landroid/net/Uri;

    .line 1278
    :goto_0
    const-string v2, "MakeSimDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ calling uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return-object v1

    .line 1276
    :cond_0
    sget-object v1, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getColumnIndex(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1054
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NAME_COLUMN_INDEX:I

    .line 1055
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NUMBER_COLUMN_INDEX:I

    .line 1057
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1058
    .local v0, "anrConfigValue":I
    if-lez v0, :cond_0

    .line 1059
    const-string v1, "anr_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_NUMBER_COLUMN_INDEX:I

    .line 1060
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1061
    const-string v1, "anrA_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    .line 1062
    const-string v1, "anrB_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    .line 1063
    const-string v1, "anrC_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    .line 1068
    :cond_0
    const-string v1, "emails"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->EMAIL_COLUMN_INDEX:I

    .line 1069
    const-string v1, "adn_index"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_INDEX_COLUMN_INDEX:I

    .line 1070
    return-void
.end method

.method private getIntPreferenceValue(Ljava/lang/String;I)I
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "defVal"    # I

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 347
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getProjection(I)[Ljava/lang/String;
    .locals 4
    .param p1, "projectionType"    # I

    .prologue
    const/4 v2, 0x3

    .line 1227
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1229
    .local v0, "anrConfigValue":I
    packed-switch p1, :pswitch_data_0

    .line 1258
    const-string v1, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ Can\'t get a projection it use wrong projecion type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v1

    .line 1231
    :pswitch_0
    if-lez v0, :cond_1

    .line 1232
    if-le v0, v2, :cond_0

    .line 1233
    const-string v1, "MakeSimDBService"

    const-string v2, "@@ ADN_ANR_FULL_COMPARE_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1236
    :cond_0
    const-string v1, "MakeSimDBService"

    const-string v2, "@@ ADN_ANR_PATIAL_COMPARE_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1239
    :cond_1
    const-string v1, "MakeSimDBService"

    const-string v2, "@@ ADN_COMPARE_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1244
    :pswitch_1
    if-lez v0, :cond_3

    .line 1245
    if-le v0, v2, :cond_2

    .line 1246
    const-string v1, "MakeSimDBService"

    const-string v2, "@@ ADN_ANR_FULL_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1249
    :cond_2
    const-string v1, "MakeSimDBService"

    const-string v2, "@@ ADN_ANR_PATIAL_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1252
    :cond_3
    const-string v1, "MakeSimDBService"

    const-string v2, "@@ ADN_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSimAccountStatus()J
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 351
    const-wide/16 v7, 0x0

    .line 353
    .local v7, "simStatus":J
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ungrouped_visible"

    aput-object v3, v2, v9

    const-string v3, " account_type = \'vnd.sec.contact.sim\' AND account_name = \'primary.sim.account_name\' "

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 356
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 357
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_0

    .line 360
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_1
    return-wide v7
.end method

.method private initSimStatus()V
    .locals 4

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getSimAccountStatus()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mInitSettingValue:J

    .line 372
    sget-wide v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mInitSettingValue:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 373
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateSettingStatus(J)V

    .line 375
    :cond_0
    return-void
.end method

.method private isAdnEditable()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1317
    const-string v9, "ril.ICC_TYPE"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1318
    .local v5, "simType":Ljava/lang/String;
    const-string v9, "ril.IsCSIM"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1319
    .local v2, "isCSIM":Ljava/lang/String;
    const-string v9, "2"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "1"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v7, v8

    .line 1370
    :cond_1
    :goto_0
    return v7

    .line 1322
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 1323
    .local v3, "simState":I
    if-eq v8, v3, :cond_1

    if-eqz v3, :cond_1

    .line 1327
    const/4 v4, 0x0

    .line 1333
    .local v4, "simStatus":I
    :try_start_0
    const-string v9, "simphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1336
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_3

    .line 1337
    const/4 v9, 0x1

    sput-boolean v9, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 1338
    const/16 v9, 0x6f3a

    invoke-interface {v1, v9}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfo(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1345
    :cond_3
    sput-boolean v7, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 1352
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_1
    const-string v9, "MakeSimDBService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "@@ AdnEditalbe simStatus = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    and-int/lit8 v0, v4, 0x1

    .line 1354
    .local v0, "firstBit":I
    and-int/lit8 v6, v4, 0x4

    .line 1356
    .local v6, "thirdBit":I
    packed-switch v0, :pswitch_data_0

    move v7, v8

    .line 1370
    goto :goto_0

    .line 1341
    .end local v0    # "firstBit":I
    .end local v6    # "thirdBit":I
    :catch_0
    move-exception v9

    .line 1345
    sput-boolean v7, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    goto :goto_1

    .line 1342
    :catch_1
    move-exception v9

    .line 1345
    sput-boolean v7, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    goto :goto_1

    .line 1343
    :catch_2
    move-exception v9

    .line 1345
    sput-boolean v7, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    goto :goto_1

    :catchall_0
    move-exception v8

    sput-boolean v7, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    throw v8

    .line 1359
    .restart local v0    # "firstBit":I
    .restart local v6    # "thirdBit":I
    :pswitch_0
    if-eqz v6, :cond_1

    .line 1361
    if-ne v6, v8, :cond_4

    move v7, v8

    .line 1362
    goto :goto_0

    :cond_4
    :pswitch_1
    move v7, v8

    .line 1367
    goto :goto_0

    .line 1356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFDNEnabled()Z
    .locals 3

    .prologue
    .line 1432
    const/4 v0, 0x0

    .line 1434
    .local v0, "isFDNEnabled":Z
    :try_start_0
    const-string v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 1435
    .local v1, "phone":Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 1436
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1439
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    :goto_0
    return v0

    .line 1437
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isIccCardChanged()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 520
    const-string v6, "1"

    const-string v7, "ril.isIccChanged"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 554
    :goto_0
    return v4

    .line 526
    :cond_1
    const-string v6, "ro.runtime.firstboot"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "firstBootTime":Ljava/lang/String;
    const-string v0, "1"

    .line 528
    .local v0, "fakeBootTime":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 531
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v6, "runtime_firstboot_time"

    const-string v7, "0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, "iccChangedBootTime":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 536
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "runtime_firstboot_time"

    const-string v7, "1"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 540
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 541
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 543
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "runtime_firstboot_time"

    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    .line 544
    goto :goto_0

    .line 546
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 548
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "runtime_firstboot_time"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private preserveInitStatusForFDN()V
    .locals 4

    .prologue
    .line 1426
    const-wide/16 v0, 0x0

    .line 1427
    .local v0, "initVal":J
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getSimAccountStatus()J

    move-result-wide v0

    .line 1428
    const-string v2, "fdn_init_sim_status"

    long-to-int v3, v0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1429
    return-void
.end method

.method private sendMessage(III)V
    .locals 2
    .param p1, "opCode"    # I
    .param p2, "startId"    # I
    .param p3, "what"    # I

    .prologue
    .line 311
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 312
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 313
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 314
    iput p3, v0, Landroid/os/Message;->what:I

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method private setIntPreferenceValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "prefVal"    # I

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 335
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    return-void
.end method

.method private setRuntimeFirstBootTime()V
    .locals 7

    .prologue
    .line 1567
    const-string v4, "ro.runtime.firstboot"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1568
    .local v1, "firstBootTime":Ljava/lang/String;
    const-string v0, "1"

    .line 1569
    .local v0, "fakeBootTime":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1571
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v4, "runtime_firstboot_time"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1572
    .local v3, "runtimeFirstBootTime":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1573
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1575
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updateAdnDeletedStatus(I)V
    .locals 3
    .param p1, "deleted"    # I

    .prologue
    .line 1309
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1311
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1312
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fdn_on_adn_deleted"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1314
    return-void
.end method

.method private updateSettingStatus(J)V
    .locals 6
    .param p1, "status"    # J

    .prologue
    const/4 v5, 0x0

    .line 382
    sget-object v2, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    const-string v4, "primary.sim.account_name"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 386
    .local v0, "settingUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 387
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "ungrouped_visible"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 389
    return-void
.end method


# virtual methods
.method isSetupWizard()Z
    .locals 5

    .prologue
    .line 1283
    const-string v0, "com.sec.android.app.SecSetupWizard"

    .line 1284
    .local v0, "SETUPWIZARD_PACKAGE_NAME":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1286
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.sec.android.app.SecSetupWizard"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    const/4 v3, 0x1

    .line 1290
    :goto_0
    return v3

    .line 1289
    :catch_0
    move-exception v1

    .line 1290
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 196
    const-string v3, "MakeSimDBService"

    const-string v4, "@@ onCreate!!!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    .line 205
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "primary.sim.account_name"

    const-string v5, "vnd.sec.contact.sim"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mAccount:Landroid/accounts/Account;

    .line 208
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 209
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "MakeSimDBService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 211
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 221
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "MakeSimDBService"

    invoke-direct {v2, v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 222
    .local v2, "thr":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 223
    return-void

    .line 215
    .end local v2    # "thr":Ljava/lang/Thread;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1671
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ onDestory"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 1674
    monitor-enter p0

    .line 1676
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1681
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1682
    return-void

    .line 1677
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v11, 0x1

    const/4 v5, 0x2

    const/4 v10, 0x0

    .line 228
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    if-nez v7, :cond_0

    .line 229
    monitor-enter p0

    .line 231
    const-wide/16 v7, 0x64

    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 237
    :cond_0
    if-nez p1, :cond_1

    .line 238
    const-string v6, "MakeSimDBService"

    const-string v7, "Intent is null in onStartCommand"

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    :goto_2
    return v5

    .line 242
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "op"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 244
    .local v2, "opCode":I
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ onStartCommand!!! opCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ onStartCommand!!! flags = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_3
    move v5, v6

    .line 307
    goto :goto_2

    .line 249
    :sswitch_0
    const-string v5, "isEnabled"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 251
    .local v1, "isEnabled":Z
    if-nez v1, :cond_2

    .line 253
    invoke-direct {p0, v2, p3, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 262
    .end local v1    # "isEnabled":Z
    :sswitch_1
    if-ge p3, v5, :cond_3

    .line 263
    invoke-direct {p0, v2, p3, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 265
    :cond_3
    invoke-direct {p0, v2, p3, v11}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 272
    :sswitch_2
    const-string v7, "sim_db_ready"

    invoke-direct {p0, v7, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 273
    .local v4, "settingValue":I
    if-ne v4, v11, :cond_4

    .line 274
    const-string v7, "sim_db_ready"

    invoke-direct {p0, v7, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 276
    :cond_4
    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 281
    .end local v4    # "settingValue":I
    :sswitch_3
    const/4 v5, 0x4

    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 294
    :sswitch_4
    const-string v5, "service_connected"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 295
    .local v3, "serviceConnected":Z
    if-eqz v3, :cond_5

    .line 296
    const/4 v5, 0x5

    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 298
    :cond_5
    const/4 v5, 0x6

    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 232
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "opCode":I
    .end local v3    # "serviceConnected":Z
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x15b3 -> :sswitch_4
        0x1a0a -> :sswitch_3
        0x1e61 -> :sswitch_2
        0x22b8 -> :sswitch_0
        0x270f -> :sswitch_1
    .end sparse-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 319
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 320
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 321
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceLooper:Landroid/os/Looper;

    .line 322
    new-instance v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;-><init>(Lcom/sec/android/app/contacts/sim/MakeSimDBService;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    .line 323
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 324
    return-void
.end method
