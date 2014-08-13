.class public Lcom/sec/android/app/contacts/sim/MakeSim2DBService;
.super Landroid/app/Service;
.source "MakeSim2DBService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/sim/MakeSim2DBService$1;,
        Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;,
        Lcom/sec/android/app/contacts/sim/MakeSim2DBService$projectionTypes;
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

.field private static final IS_SIM_ACCOUNT:Ljava/lang/String; = " account_type = \'vnd.sec.contact.sim2\' AND account_name = \'primary.sim2.account_name\' "

.field private static volatile NAME_COLUMN_INDEX:I = 0x0

.field private static volatile NUMBER_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MakeSim2DBService"

.field private static mBatchCounter:I

.field private static mInitSettingValue:J

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
.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field private mAccount:Landroid/accounts/Account;

.field private mCursor:Landroid/database/Cursor;

.field private mProviderStatus:I

.field private mResolver:Landroid/content/ContentResolver;

.field private volatile mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "emails"

    aput-object v1, v0, v6

    const-string v1, "adn_index"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_PROJECTION:[Ljava/lang/String;

    .line 98
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "anrA_number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "anrB_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anrC_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "emails"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 124
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "anrA_number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "anrB_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anrC_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "adn_index"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 142
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "emails"

    aput-object v1, v0, v3

    const-string v1, "adn_index"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    .line 147
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NAME_COLUMN_INDEX:I

    .line 148
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NUMBER_COLUMN_INDEX:I

    .line 150
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_NUMBER_COLUMN_INDEX:I

    .line 151
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    .line 152
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    .line 153
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    .line 155
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->EMAIL_COLUMN_INDEX:I

    .line 156
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_INDEX_COLUMN_INDEX:I

    .line 158
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mInitSettingValue:J

    .line 159
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    .line 160
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastBatch:I

    .line 161
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    iput v1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->SIM_ZERO:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->SIM_ONE:I

    .line 163
    iput v1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    .line 1399
    return-void
.end method

.method private CompareAdnData(III)V
    .locals 2
    .param p1, "opCode"    # I
    .param p2, "simState"    # I
    .param p3, "startId"    # I

    .prologue
    .line 489
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    :cond_0
    monitor-enter p0

    .line 492
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
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

    .line 497
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doCompareData(III)V

    .line 498
    return-void

    .line 493
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/sim/MakeSim2DBService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doInitAction(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/sim/MakeSim2DBService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doQueryAction(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/sim/MakeSim2DBService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doCheckAdnAttribute(II)V

    return-void
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 25
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 869
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NAME_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 870
    .local v17, "name":Ljava/lang/String;
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 871
    .local v18, "phoneNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 872
    .local v6, "AnrNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 873
    .local v3, "AnrANumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 874
    .local v4, "AnrBNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 875
    .local v5, "AnrCNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v7

    .line 878
    .local v7, "anrConfigValue":I
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 879
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v7

    .line 881
    :cond_0
    if-lez v7, :cond_1

    .line 882
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 883
    const/16 v20, 0x3

    move/from16 v0, v20

    if-le v7, v0, :cond_1

    .line 884
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 885
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 886
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 890
    :cond_1
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->EMAIL_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 891
    .local v13, "emailAddresses":Ljava/lang/String;
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_INDEX_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 893
    .local v15, "index":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 894
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 899
    .local v12, "emailAddressArray":[Ljava/lang/String;
    :goto_1
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 902
    .local v19, "rawContactIdIndex":I
    sget-object v20, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 904
    .local v9, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v20, "account_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 905
    const-string v20, "account_type"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 906
    const-string v20, "sourceid"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 907
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 911
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 912
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 913
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 914
    const-string v20, "data2"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 915
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    :cond_2
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 920
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 921
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 922
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 923
    const-string v20, "data2"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 924
    const-string v20, "data1"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 925
    const-string v20, "is_primary"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 926
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 932
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 933
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 934
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 935
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 936
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 937
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 938
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 943
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 944
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 945
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 946
    const-string v20, "data2"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 947
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 948
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 949
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 954
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 955
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 956
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 957
    const-string v20, "data2"

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 958
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 959
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 960
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 965
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 966
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 967
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 968
    const-string v20, "data2"

    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 969
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 970
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 971
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_7
    if-eqz v12, :cond_b

    .line 976
    move-object v8, v12

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_b

    aget-object v11, v8, v14

    .line 977
    .local v11, "emailAddress":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 978
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 979
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 980
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 981
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 982
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 983
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 875
    .end local v7    # "anrConfigValue":I
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "emailAddress":Ljava/lang/String;
    .end local v12    # "emailAddressArray":[Ljava/lang/String;
    .end local v13    # "emailAddresses":Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v15    # "index":Ljava/lang/String;
    .end local v16    # "len$":I
    .end local v19    # "rawContactIdIndex":I
    :cond_9
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v7

    goto/16 :goto_0

    .line 896
    .restart local v7    # "anrConfigValue":I
    .restart local v13    # "emailAddresses":Ljava/lang/String;
    .restart local v15    # "index":Ljava/lang/String;
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "emailAddressArray":[Ljava/lang/String;
    goto/16 :goto_1

    .line 988
    .restart local v9    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v19    # "rawContactIdIndex":I
    :cond_b
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    .line 989
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    .line 990
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    const/16 v21, 0x3c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    sget v21, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastBatch:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 992
    :cond_c
    :try_start_0
    const-string v20, "com.android.contacts"

    sget-object v21, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 993
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 994
    const/16 v20, 0x0

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1003
    :cond_d
    :goto_3
    return-void

    .line 995
    :catch_0
    move-exception v10

    .line 996
    .local v10, "e":Landroid/os/RemoteException;
    const-string v20, "MakeSim2DBService"

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

    goto :goto_3

    .line 997
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 998
    .local v10, "e":Landroid/content/OperationApplicationException;
    const-string v20, "MakeSim2DBService"

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

    goto :goto_3

    .line 999
    .end local v10    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v10

    .line 1000
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string v20, "MakeSim2DBService"

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

    goto :goto_3
.end method

.method private checkAndUpdateAdnEditable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1259
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->isAdnEditable()Z

    move-result v0

    .line 1260
    .local v0, "isAdnEditable":Z
    const-string v2, "adn2_editable"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v1

    .line 1261
    .local v1, "val":I
    if-eqz v0, :cond_1

    if-eq v1, v4, :cond_1

    .line 1262
    const-string v2, "adn2_editable"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1263
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 1264
    const-string v2, "adn2_editable"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkProviderState()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1440
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

    .line 1443
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1445
    .local v7, "status":I
    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    if-eq v7, v0, :cond_0

    .line 1446
    iput v7, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    .end local v7    # "status":I
    :cond_0
    if-eqz v6, :cond_1

    .line 1451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1454
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_2
    move v0, v9

    :goto_0
    return v0

    .line 1450
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v8

    .line 1454
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

    .line 1174
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->isFDNEnabled()Z

    move-result v2

    .line 1175
    .local v2, "isFdnEnabled":Z
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->isAdnEditable()Z

    move-result v1

    .line 1177
    .local v1, "isAdnEditable":Z
    const-string v6, "adn2_editable"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v5

    .line 1178
    .local v5, "val":I
    const-string v6, "MakeSim2DBService"

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

    .line 1179
    if-eqz v1, :cond_3

    if-eq v5, v10, :cond_3

    .line 1180
    const-string v6, "adn2_editable"

    invoke-direct {p0, v6, v10}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1185
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 1186
    if-nez v1, :cond_5

    .line 1188
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    const-string v6, "fdn2_on_adn_deleted"

    :goto_1
    invoke-direct {p0, v6, v10}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1190
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->preserveInitStatusForFDN()V

    .line 1192
    const-string v6, "sim2_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 1193
    .local v4, "settingValue":I
    const-string v6, "MakeSim2DBService"

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

    .line 1194
    if-ne v4, v10, :cond_2

    .line 1196
    const-string v6, "sim2_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1198
    :cond_2
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    .line 1224
    .end local v4    # "settingValue":I
    :goto_2
    return-void

    .line 1181
    :cond_3
    if-nez v1, :cond_0

    if-eqz v5, :cond_0

    .line 1182
    const-string v6, "adn2_editable"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 1188
    :cond_4
    const-string v6, "fdn_on_adn_deleted"

    goto :goto_1

    .line 1200
    :cond_5
    invoke-direct {p0, p1, v11, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_2

    .line 1204
    :cond_6
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1206
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_7
    const-string v6, "fdn2_on_adn_deleted"

    :goto_3
    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1208
    .local v0, "isAdnDeleted":I
    const-string v6, "MakeSim2DBService"

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

    .line 1209
    if-ne v0, v10, :cond_a

    .line 1210
    const-string v6, "sim2_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 1211
    .restart local v4    # "settingValue":I
    const-string v6, "MakeSim2DBService"

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

    .line 1213
    if-ne v4, v10, :cond_8

    .line 1215
    const-string v6, "sim2_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1218
    :cond_8
    const/4 v6, 0x7

    invoke-direct {p0, p1, v6, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->CompareAdnData(III)V

    goto :goto_2

    .line 1206
    .end local v0    # "isAdnDeleted":I
    .end local v4    # "settingValue":I
    :cond_9
    const-string v6, "fdn_on_adn_deleted"

    goto :goto_3

    .line 1221
    .restart local v0    # "isAdnDeleted":I
    :cond_a
    invoke-direct {p0, p1, v11, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_2
.end method

.method private doCheckSimState(II)V
    .locals 11
    .param p1, "opCode"    # I
    .param p2, "startId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 350
    iget-object v7, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 351
    .local v4, "simState":I
    const-string v7, "MakeSim2DBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ doCheckSimState simState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 357
    .local v2, "isAirPlaneOn":Z
    :goto_0
    const-string v7, "gsm.sim.currentcardstatus2"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "cardStatus":I
    const-string v7, "MakeSim2DBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@ doCheckSimState isAirPalneMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   cardStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-nez v4, :cond_1

    if-nez v2, :cond_1

    .line 360
    const/4 v3, 0x6

    .line 362
    .local v3, "retry":I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v0, v10, :cond_0

    .line 364
    const/4 v3, 0x2

    .line 365
    const-string v7, "MakeSim2DBService"

    const-string v8, " @@ doCheckSimState cardStatus: 2, wait 10 sec telephony state"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 369
    monitor-enter p0

    .line 371
    const-wide/16 v7, 0x1388

    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 372
    iget-object v7, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 373
    if-eqz v4, :cond_4

    .line 374
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .end local v1    # "i":I
    .end local v3    # "retry":I
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 426
    invoke-direct {p0, p1, v6, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    .line 429
    :cond_2
    :goto_2
    return-void

    .end local v0    # "cardStatus":I
    .end local v2    # "isAirPlaneOn":Z
    :cond_3
    move v2, v6

    .line 355
    goto :goto_0

    .line 375
    .restart local v0    # "cardStatus":I
    .restart local v1    # "i":I
    .restart local v2    # "isAirPlaneOn":Z
    .restart local v3    # "retry":I
    :catch_0
    move-exception v7

    .line 377
    :cond_4
    :try_start_2
    monitor-exit p0

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 383
    .end local v1    # "i":I
    .end local v3    # "retry":I
    :pswitch_0
    const-string v5, "MakeSim2DBService"

    const-string v7, "@@ doCheckSimState: UNKNOWN"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eq v0, v10, :cond_5

    if-nez v0, :cond_6

    .line 387
    :cond_5
    invoke-direct {p0, p1, v6, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 389
    :cond_6
    invoke-direct {p0, p1, v6, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_2

    .line 395
    :pswitch_1
    const-string v6, "MakeSim2DBService"

    const-string v7, "@@ doCheckSimState: No SIM"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 407
    :pswitch_2
    const/16 v5, 0x270f

    if-ne p1, v5, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->isIccCardChanged()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 408
    const-string v5, "MakeSim2DBService"

    const-string v6, "@@ SIM card is changed"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-direct {p0, p1, v10, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    .line 410
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 412
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doWriteSIMProfile()V

    goto :goto_2

    .line 415
    :cond_7
    const-string v5, "MakeSim2DBService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@@ doCheckSimState: SIM READY opCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v5, 0x5

    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->CompareAdnData(III)V

    .line 417
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 419
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doWriteSIMProfile()V

    goto/16 :goto_2

    .line 381
    nop

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
    .line 512
    const/4 v13, 0x0

    .line 513
    .local v13, "diff":I
    const/4 v14, 0x0

    .line 514
    .local v14, "diff_found":Z
    const/4 v11, 0x0

    .line 515
    .local v11, "dbCursor":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 516
    .local v20, "simCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 519
    .local v12, "db_count":I
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    move/from16 v19, v0

    .line 520
    .local v19, "length":I
    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/String;

    .line 521
    .local v4, "projectionToCompare":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN2_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 526
    if-eqz v11, :cond_6

    if-eqz v20, :cond_6

    .line 527
    const-string v2, "MakeSim2DBService"

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

    .line 529
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 530
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 531
    const-string v2, "MakeSim2DBService"

    const-string v3, "@@ 1st Count is different break"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_0
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 622
    .end local v4    # "projectionToCompare":[Ljava/lang/String;
    .end local v19    # "length":I
    :cond_1
    :goto_0
    return-void

    .line 534
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

    .line 535
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_3
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 539
    :cond_4
    :try_start_2
    new-instance v18, Landroid/database/CursorJoiner;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v4, v1, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 540
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

    .line 541
    .local v17, "joinResult":Landroid/database/CursorJoiner$Result;
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 554
    :goto_1
    if-lez v13, :cond_5

    .line 555
    const/4 v14, 0x1

    .line 564
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .end local v18    # "joiner":Landroid/database/CursorJoiner;
    :cond_6
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_7
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 568
    .end local v4    # "projectionToCompare":[Ljava/lang/String;
    .end local v19    # "length":I
    :cond_8
    :goto_2
    if-nez v14, :cond_11

    .line 569
    const/4 v11, 0x0

    .line 570
    const/16 v20, 0x0

    .line 573
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN2_EMAILS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 575
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/contacts/util/Constants;->ADN2_EMAILS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 577
    if-eqz v11, :cond_f

    if-eqz v20, :cond_f

    .line 578
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 579
    const-string v2, "MakeSim2DBService"

    const-string v3, "@@ 2nd Count is different break"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 609
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_9
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 543
    .restart local v4    # "projectionToCompare":[Ljava/lang/String;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .restart local v18    # "joiner":Landroid/database/CursorJoiner;
    .restart local v19    # "length":I
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    .line 544
    goto :goto_1

    .line 547
    :pswitch_1
    add-int/lit8 v13, v13, 0x1

    .line 548
    goto :goto_1

    .line 560
    .end local v4    # "projectionToCompare":[Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .end local v18    # "joiner":Landroid/database/CursorJoiner;
    .end local v19    # "length":I
    :catch_0
    move-exception v15

    .line 562
    .local v15, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 564
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_a
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 564
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_b
    if-eqz v20, :cond_c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 584
    :cond_d
    :try_start_5
    new-instance v18, Landroid/database/CursorJoiner;

    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v2, v1, v3}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 585
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

    .line 586
    .restart local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    packed-switch v2, :pswitch_data_1

    .line 599
    :goto_3
    if-lez v13, :cond_e

    .line 600
    const/4 v14, 0x1

    .line 609
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .end local v18    # "joiner":Landroid/database/CursorJoiner;
    :cond_f
    if-eqz v11, :cond_10

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_10
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_11
    :goto_4
    if-nez v14, :cond_12

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    if-lez v12, :cond_16

    .line 617
    :cond_12
    const-string v2, "MakeSim2DBService"

    const-string v3, "@@ diff found Goto delete"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto/16 :goto_0

    .line 588
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .restart local v18    # "joiner":Landroid/database/CursorJoiner;
    :pswitch_2
    add-int/lit8 v13, v13, 0x1

    .line 589
    goto :goto_3

    .line 592
    :pswitch_3
    add-int/lit8 v13, v13, 0x1

    .line 593
    goto :goto_3

    .line 605
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "joinResult":Landroid/database/CursorJoiner$Result;
    .end local v18    # "joiner":Landroid/database/CursorJoiner;
    :catch_1
    move-exception v15

    .line 607
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 609
    if-eqz v11, :cond_13

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_13
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 609
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_14

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_14
    if-eqz v20, :cond_15

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v2

    .line 620
    :cond_16
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto/16 :goto_0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 586
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
    .line 627
    const-string v0, "MakeSim2DBService"

    const-string v2, "@@ doDeleteSIMProfile: "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
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

    .line 633
    .local v1, "simProfileUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

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

    .line 635
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 636
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 637
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "data1"

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "data2"

    aput-object v2, v4, v0

    .line 640
    .local v4, "projection":[Ljava/lang/String;
    const-string v11, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 642
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

    .line 646
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

    .line 649
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 650
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 651
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 653
    .local v10, "localprofileNumber":Ljava/lang/String;
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 656
    const/4 v0, 0x0

    .line 670
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "localprofileNumber":Ljava/lang/String;
    .end local v11    # "selection":Ljava/lang/String;
    :goto_0
    return v0

    .line 661
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v11    # "selection":Ljava/lang/String;
    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 664
    const/4 v0, 0x1

    goto :goto_0

    .line 665
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "selection":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    .line 666
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 667
    const/4 v0, 0x1

    goto :goto_0

    .line 670
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doDeleteSimDB(III)V
    .locals 16
    .param p1, "opCode"    # I
    .param p2, "simState"    # I
    .param p3, "startId"    # I

    .prologue
    .line 734
    const-string v1, "MakeSim2DBService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ doDeleteSimDB: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkProviderState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    monitor-enter p0

    .line 738
    const-wide/16 v5, 0x1388

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 743
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 746
    .local v14, "start":J
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_name"

    const-string v5, "primary.sim2.account_name"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_type"

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    const-string v5, "1"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 751
    .local v2, "checkUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 752
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 753
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 754
    sget-object v1, Lcom/android/contacts/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_name"

    const-string v5, "primary.sim2.account_name"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_type"

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 757
    .local v11, "deleteUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v11, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 762
    .end local v11    # "deleteUri":Landroid/net/Uri;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 763
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_name"

    const-string v5, "primary.sim2.account_name"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_type"

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    const-string v5, "1"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 768
    .local v4, "checkUri2":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 769
    .local v10, "cur2":Landroid/database/Cursor;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 770
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 771
    sget-object v1, Lcom/android/contacts/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_name"

    const-string v5, "primary.sim2.account_name"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_type"

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 774
    .restart local v11    # "deleteUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v11, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 779
    .end local v4    # "checkUri2":Landroid/net/Uri;
    .end local v10    # "cur2":Landroid/database/Cursor;
    .end local v11    # "deleteUri":Landroid/net/Uri;
    :cond_2
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 780
    .local v12, "end":J
    const-string v1, "MakeSim2DBService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ db delete time : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v5, v12, v14

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "msec"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    packed-switch p2, :pswitch_data_0

    .line 798
    :goto_4
    :pswitch_0
    return-void

    .line 758
    .end local v12    # "end":J
    :cond_3
    if-eqz v9, :cond_1

    .line 759
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 775
    .restart local v4    # "checkUri2":Landroid/net/Uri;
    .restart local v10    # "cur2":Landroid/database/Cursor;
    :cond_4
    if-eqz v10, :cond_2

    .line 776
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 786
    .end local v4    # "checkUri2":Landroid/net/Uri;
    .end local v10    # "cur2":Landroid/database/Cursor;
    .restart local v12    # "end":J
    :pswitch_1
    const-string v1, "MakeSim2DBService"

    const-string v3, "@@ doDeleteSimDB Go to last action "

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_4

    .line 793
    :pswitch_2
    const-string v1, "MakeSim2DBService"

    const-string v3, "@@ doDeleteSimDB Go to Write action "

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doWriteSimDB(III)V

    goto :goto_4

    .line 739
    .end local v2    # "checkUri":Landroid/net/Uri;
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v12    # "end":J
    .end local v14    # "start":J
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 782
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
    .line 325
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doCheckSimState(II)V

    .line 326
    return-void
.end method

.method private doLastAction(III)V
    .locals 12
    .param p1, "opCode"    # I
    .param p2, "simState"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1273
    const/4 v3, 0x0

    .line 1275
    .local v3, "needNotify":Z
    const-string v8, "sim2_db_ready"

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v5

    .line 1276
    .local v5, "settingValue":I
    const-string v8, "MakeSim2DBService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ doLastAction : settingValue= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const-string v8, "MakeSim2DBService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ doLastAction : simState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " opCode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    if-nez v5, :cond_1

    .line 1280
    const-string v8, "sim2_db_ready"

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1281
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setRuntimeFirstBootTime()V

    .line 1282
    if-nez p2, :cond_0

    .line 1289
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.intent.action.SIM2DB_UNKNOWN_READY"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1291
    :cond_0
    const/4 v3, 0x1

    .line 1295
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "V2"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "1"

    const-string v9, "ril.isIccChanged"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1299
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1300
    .local v2, "mgtIntent":Landroid/content/Intent;
    const-string v8, "DEFAULT_CALL_LINE_RESET"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    const-string v8, "simcard_sim_id"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1302
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1305
    .end local v2    # "mgtIntent":Landroid/content/Intent;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1358
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkAndUpdateAdnEditable()V

    .line 1363
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 1365
    const-string v8, "MakeSim2DBService"

    const-string v9, "@@  NOTIFY !!"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1370
    :cond_4
    invoke-direct {p0, p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doStopService(I)V

    .line 1371
    return-void

    .line 1307
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkAndUpdateAdnEditable()V

    .line 1308
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1309
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    goto :goto_0

    .line 1310
    :cond_5
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1311
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v8

    const-string v9, "ril.ICC_TYPE2"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "vnd.sec.contact.sim2"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1318
    :sswitch_1
    if-eqz p2, :cond_7

    .line 1319
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1321
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "airplane_mode_changed2"

    :goto_1
    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1323
    .local v1, "isAirPlainChanged":I
    const/4 v8, 0x1

    if-ne v1, v8, :cond_7

    .line 1324
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "airplain_init_sim2_status"

    :goto_2
    const/4 v9, 0x1

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-long v6, v8

    .line 1326
    .local v6, "status":J
    const-string v8, "MakeSim2DBService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ 7777 initStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const-wide/16 v8, 0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_6

    .line 1328
    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->updateSettingStatus(J)V

    .line 1329
    const/4 v3, 0x0

    .line 1331
    :cond_6
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1332
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "airplane_mode_changed2"

    :goto_3
    const/4 v9, 0x0

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1337
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "isAirPlainChanged":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "status":J
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkAndUpdateAdnEditable()V

    goto/16 :goto_0

    .line 1321
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    const-string v8, "airplane_mode_changed"

    goto :goto_1

    .line 1324
    .restart local v1    # "isAirPlainChanged":I
    :cond_9
    const-string v8, "airplain_init_sim_status"

    goto :goto_2

    .line 1332
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v6    # "status":J
    :cond_a
    const-string v8, "airplane_mode_changed"

    goto :goto_3

    .line 1342
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "isAirPlainChanged":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "status":J
    :sswitch_2
    const/4 v8, 0x7

    if-ne p2, v8, :cond_3

    .line 1343
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->updateAdnDeletedStatus(I)V

    .line 1344
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1346
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "fdn2_init_sim_status"

    :goto_4
    const/4 v9, 0x1

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-long v6, v8

    .line 1348
    .restart local v6    # "status":J
    const-string v8, "MakeSim2DBService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ 6666 initStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const-wide/16 v8, 0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    .line 1350
    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->updateSettingStatus(J)V

    .line 1351
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1346
    .end local v6    # "status":J
    :cond_b
    const-string v8, "fdn_init_sim_status"

    goto :goto_4

    .line 1305
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
    .line 1093
    const-string v1, "sim2_db_ready"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1094
    .local v0, "settingValue":I
    if-nez v0, :cond_0

    .line 1095
    const-string v1, "sim2_db_ready"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1096
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doStopService(I)V

    .line 1097
    return-void
.end method

.method private doStopService(I)V
    .locals 0
    .param p1, "startId"    # I

    .prologue
    .line 1396
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 1397
    return-void
.end method

.method private doWriteSIMProfile()V
    .locals 8

    .prologue
    .line 676
    const-string v5, "MakeSim2DBService"

    const-string v6, "@@ doWriteSIMProfile: "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v5, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "phone_number":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSIMProfile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 723
    :goto_0
    return-void

    .line 684
    :cond_0
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 686
    .local v4, "rawContactIdIndex":I
    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 688
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "account_name"

    const-string v6, "vnd.sec.contact.phone"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 689
    const-string v5, "account_type"

    const-string v6, "vnd.sec.contact.phone"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 690
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 694
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 695
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 696
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 697
    const-string v5, "data2"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 698
    const-string v5, "raw_contact_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 699
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 703
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 704
    const-string v5, "raw_contact_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 705
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 706
    const-string v5, "data2"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 707
    const-string v5, "data1"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 708
    const-string v5, "is_primary"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 709
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "com.android.contacts"

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 714
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 715
    :catch_0
    move-exception v1

    .line 717
    .local v1, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 718
    .end local v1    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v1

    .line 720
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private doWriteSimDB(III)V
    .locals 6
    .param p1, "opCode"    # I
    .param p2, "simState"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 801
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    .line 802
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    .line 805
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 806
    :cond_0
    monitor-enter p0

    .line 808
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
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

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastBatch:I

    .line 819
    const-string v0, "MakeSim2DBService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ WriteAllSimContactsThread mLastBatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastBatch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getColumnIndex(Landroid/database/Cursor;)V

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 823
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    goto :goto_2

    .line 826
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 829
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    .line 830
    return-void

    .line 809
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getCallingUri()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1069
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1072
    .local v0, "anrConfigValue":I
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1073
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v0

    .line 1075
    :cond_0
    const/4 v1, 0x0

    .line 1076
    .local v1, "uri":Landroid/net/Uri;
    if-lez v0, :cond_2

    .line 1077
    sget-object v1, Lcom/android/contacts/util/Constants;->ADN2_ANR_URI:Landroid/net/Uri;

    .line 1081
    :goto_1
    const-string v2, "MakeSim2DBService"

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

    .line 1082
    return-object v1

    .line 1069
    .end local v0    # "anrConfigValue":I
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v0

    goto :goto_0

    .line 1079
    .restart local v0    # "anrConfigValue":I
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    sget-object v1, Lcom/android/contacts/util/Constants;->ADN2_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private getColumnIndex(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 839
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NAME_COLUMN_INDEX:I

    .line 840
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NUMBER_COLUMN_INDEX:I

    .line 842
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 845
    .local v0, "anrConfigValue":I
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v0

    .line 848
    :cond_0
    if-lez v0, :cond_1

    .line 849
    const-string v1, "anr_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_NUMBER_COLUMN_INDEX:I

    .line 850
    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 851
    const-string v1, "anrA_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    .line 852
    const-string v1, "anrB_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    .line 853
    const-string v1, "anrC_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    .line 858
    :cond_1
    const-string v1, "emails"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->EMAIL_COLUMN_INDEX:I

    .line 859
    const-string v1, "adn_index"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_INDEX_COLUMN_INDEX:I

    .line 860
    return-void

    .line 842
    .end local v0    # "anrConfigValue":I
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v0

    goto :goto_0
.end method

.method private getIntPreferenceValue(Ljava/lang/String;I)I
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "defVal"    # I

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getProjection(I)[Ljava/lang/String;
    .locals 4
    .param p1, "projectionType"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1021
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1024
    .local v0, "anrConfigValue":I
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v0

    .line 1027
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1056
    const-string v1, "MakeSim2DBService"

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

    .line 1060
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    :goto_1
    return-object v1

    .line 1021
    .end local v0    # "anrConfigValue":I
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v0

    goto :goto_0

    .line 1029
    .restart local v0    # "anrConfigValue":I
    :pswitch_0
    if-lez v0, :cond_3

    .line 1030
    if-le v0, v3, :cond_2

    .line 1031
    const-string v1, "MakeSim2DBService"

    const-string v2, "@@ ADN_ANR_FULL_COMPARE_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 1034
    :cond_2
    const-string v1, "MakeSim2DBService"

    const-string v2, "@@ ADN_ANR_PATIAL_COMPARE_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 1037
    :cond_3
    const-string v1, "MakeSim2DBService"

    const-string v2, "@@ ADN_COMPARE_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 1042
    :pswitch_1
    if-lez v0, :cond_5

    .line 1043
    if-le v0, v3, :cond_4

    .line 1044
    const-string v1, "MakeSim2DBService"

    const-string v2, "@@ ADN_ANR_FULL_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 1047
    :cond_4
    const-string v1, "MakeSim2DBService"

    const-string v2, "@@ ADN_ANR_PATIAL_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 1050
    :cond_5
    const-string v1, "MakeSim2DBService"

    const-string v2, "@@ ADN_PROJECTION "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 1027
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

    .line 298
    const-wide/16 v7, 0x0

    .line 300
    .local v7, "simStatus":J
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ungrouped_visible"

    aput-object v3, v2, v9

    const-string v3, " account_type = \'vnd.sec.contact.sim2\' AND account_name = \'primary.sim2.account_name\' "

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 303
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 304
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_0

    .line 307
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_1
    return-wide v7
.end method

.method private initSimStatus()V
    .locals 4

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getSimAccountStatus()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mInitSettingValue:J

    .line 319
    sget-wide v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mInitSettingValue:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 320
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->updateSettingStatus(J)V

    .line 322
    :cond_0
    return-void
.end method

.method private isAdnEditable()Z
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1109
    const-string v10, "ril.ICC_TYPE2"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1110
    .local v6, "simType":Ljava/lang/String;
    const-string v10, "ril.IsCSIM2"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1111
    .local v3, "isCSIM2":Ljava/lang/String;
    const-string v10, "2"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "1"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    move v8, v9

    .line 1170
    :cond_1
    :goto_0
    return v8

    .line 1114
    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 1116
    .local v4, "simState":I
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1119
    :cond_3
    if-eq v9, v4, :cond_1

    if-eqz v4, :cond_1

    .line 1123
    const/4 v5, 0x0

    .line 1128
    .local v5, "simStatus":I
    :try_start_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1129
    const-string v10, "simphonebook2"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1132
    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_4

    .line 1133
    const/16 v10, 0x6f3a

    invoke-interface {v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfo(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1152
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_4
    :goto_1
    const-string v10, "MakeSim2DBService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@@ AdnEditalbe simStatus = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    and-int/lit8 v1, v5, 0x1

    .line 1154
    .local v1, "firstBit":I
    and-int/lit8 v7, v5, 0x4

    .line 1156
    .local v7, "thirdBit":I
    packed-switch v1, :pswitch_data_0

    move v8, v9

    .line 1170
    goto :goto_0

    .line 1135
    .end local v1    # "firstBit":I
    .end local v7    # "thirdBit":I
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1136
    const-string v10, "simphonebook"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1139
    .restart local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_4

    .line 1140
    const/16 v10, 0x6f3a

    invoke-interface {v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfo(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_1

    .line 1143
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1159
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "firstBit":I
    .restart local v7    # "thirdBit":I
    :pswitch_0
    if-eqz v7, :cond_1

    .line 1161
    if-ne v7, v9, :cond_6

    move v8, v9

    .line 1162
    goto :goto_0

    :cond_6
    :pswitch_1
    move v8, v9

    .line 1167
    goto :goto_0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFDNEnabled()Z
    .locals 5

    .prologue
    .line 1235
    const/4 v0, 0x0

    .line 1246
    .local v0, "isFDNEnabled":Z
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1248
    :try_start_0
    const-string v3, "phoneext"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 1249
    .local v1, "phone":Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 1250
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1255
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    :goto_0
    return v0

    .line 1251
    :catch_0
    move-exception v2

    .line 1252
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "MakeSim2DBService"

    const-string v4, "failed to get phone "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isIccCardChanged()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 440
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    const-string v4, "ril.isIcc2Changed"

    .line 448
    .local v4, "simSlotProperty":Ljava/lang/String;
    :goto_0
    const-string v5, "1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 451
    const-string v5, "ro.runtime.firstboot"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "firstBootTime":Ljava/lang/String;
    const-string v0, "1"

    .line 453
    .local v0, "fakeBootTime":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 456
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    const-string v5, "runtime_firstboot_time2"

    :goto_1
    const-string v8, "0"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "iccChangedBootTime":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 462
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    const-string v5, "runtime_firstboot_time2"

    :goto_2
    const-string v8, "1"

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v5, v6

    .line 483
    .end local v0    # "fakeBootTime":Ljava/lang/String;
    .end local v1    # "firstBootTime":Ljava/lang/String;
    .end local v2    # "iccChangedBootTime":Ljava/lang/String;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :goto_3
    return v5

    .line 442
    .end local v4    # "simSlotProperty":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 443
    const-string v5, "ril.isIccChanged"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "simSlotProperty":Ljava/lang/String;
    goto :goto_0

    .line 445
    .end local v4    # "simSlotProperty":Ljava/lang/String;
    :cond_3
    const-string v4, "ril.isIccChanged_1"

    .restart local v4    # "simSlotProperty":Ljava/lang/String;
    goto :goto_0

    .line 456
    .restart local v0    # "fakeBootTime":Ljava/lang/String;
    .restart local v1    # "firstBootTime":Ljava/lang/String;
    .restart local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_4
    const-string v5, "runtime_firstboot_time"

    goto :goto_1

    .line 462
    .restart local v2    # "iccChangedBootTime":Ljava/lang/String;
    :cond_5
    const-string v5, "runtime_firstboot_time"

    goto :goto_2

    .line 467
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 468
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 470
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string v5, "runtime_firstboot_time2"

    :goto_4
    invoke-interface {v6, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v5, v7

    .line 472
    goto :goto_3

    .line 470
    :cond_8
    const-string v5, "runtime_firstboot_time"

    goto :goto_4

    .line 474
    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 476
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    const-string v5, "runtime_firstboot_time2"

    :goto_5
    invoke-interface {v7, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v5, v6

    .line 479
    goto :goto_3

    .line 476
    :cond_b
    const-string v5, "runtime_firstboot_time"

    goto :goto_5

    .end local v0    # "fakeBootTime":Ljava/lang/String;
    .end local v1    # "firstBootTime":Ljava/lang/String;
    .end local v2    # "iccChangedBootTime":Ljava/lang/String;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_c
    move v5, v7

    .line 483
    goto :goto_3
.end method

.method private preserveInitStatusForFDN()V
    .locals 4

    .prologue
    .line 1228
    const-wide/16 v0, 0x0

    .line 1229
    .local v0, "initVal":J
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getSimAccountStatus()J

    move-result-wide v0

    .line 1230
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "fdn2_init_sim_status"

    :goto_0
    long-to-int v3, v0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1232
    return-void

    .line 1230
    :cond_1
    const-string v2, "fdn_init_sim_status"

    goto :goto_0
.end method

.method private sendMessage(III)V
    .locals 2
    .param p1, "opCode"    # I
    .param p2, "startId"    # I
    .param p3, "what"    # I

    .prologue
    .line 258
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 259
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 260
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 261
    iput p3, v0, Landroid/os/Message;->what:I

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method private setIntPreferenceValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "prefVal"    # I

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    return-void
.end method

.method private setRuntimeFirstBootTime()V
    .locals 7

    .prologue
    .line 1374
    const-string v4, "ro.runtime.firstboot"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1375
    .local v1, "firstBootTime":Ljava/lang/String;
    const-string v0, "1"

    .line 1376
    .local v0, "fakeBootTime":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1378
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1379
    :cond_0
    const-string v4, "runtime_firstboot_time2"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1380
    .local v3, "runtimeFirstBootTime":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1381
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time2"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1393
    :cond_1
    :goto_0
    return-void

    .line 1382
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1383
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time2"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1386
    .end local v3    # "runtimeFirstBootTime":Ljava/lang/String;
    :cond_3
    const-string v4, "runtime_firstboot_time"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1387
    .restart local v3    # "runtimeFirstBootTime":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1388
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1389
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1390
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
    .line 1100
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1102
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "fdn2_on_adn_deleted"

    :goto_0
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1106
    return-void

    .line 1103
    :cond_1
    const-string v2, "fdn_on_adn_deleted"

    goto :goto_0
.end method

.method private updateSettingStatus(J)V
    .locals 6
    .param p1, "status"    # J

    .prologue
    const/4 v5, 0x0

    .line 329
    sget-object v2, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    const-string v4, "primary.sim2.account_name"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 333
    .local v0, "settingUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "ungrouped_visible"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 336
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 174
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 176
    const-string v2, "MakeSim2DBService"

    const-string v3, "@@ onCreate!!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    .line 178
    new-instance v2, Landroid/accounts/Account;

    const-string v3, "primary.sim2.account_name"

    const-string v4, "vnd.sec.contact.sim2"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mAccount:Landroid/accounts/Account;

    .line 179
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 180
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "MakeSim2DBService"

    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 181
    invoke-static {v5}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 185
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "MakeSim2DBService"

    invoke-direct {v1, v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 186
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 187
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1461
    const-string v0, "MakeSim2DBService"

    const-string v1, "@@ onDestory"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 1464
    monitor-enter p0

    .line 1466
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
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

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1472
    return-void

    .line 1467
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 192
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    if-nez v6, :cond_0

    .line 193
    monitor-enter p0

    .line 195
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 201
    :cond_0
    if-nez p1, :cond_1

    .line 202
    const-string v5, "MakeSim2DBService"

    const-string v6, "Intent is null in onStartCommand"

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :goto_2
    return v4

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "op"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, "opCode":I
    const-string v6, "MakeSim2DBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ onStartCommand!!! opCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v6, "MakeSim2DBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ onStartCommand!!! flags = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_3
    move v4, v5

    .line 254
    goto :goto_2

    .line 213
    :sswitch_0
    const-string v4, "isEnabled"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 215
    .local v1, "isEnabled":Z
    if-nez v1, :cond_2

    .line 217
    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 226
    .end local v1    # "isEnabled":Z
    :sswitch_1
    if-ge p3, v4, :cond_3

    .line 227
    invoke-direct {p0, v2, p3, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 229
    :cond_3
    invoke-direct {p0, v2, p3, v10}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 236
    :sswitch_2
    const-string v6, "sim2_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v3

    .line 237
    .local v3, "settingValue":I
    if-ne v3, v10, :cond_4

    .line 238
    const-string v6, "sim2_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 240
    :cond_4
    invoke-direct {p0, v2, p3, v4}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 245
    .end local v3    # "settingValue":I
    :sswitch_3
    const/4 v4, 0x4

    invoke-direct {p0, v2, p3, v4}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 196
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "opCode":I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a0a -> :sswitch_3
        0x1e61 -> :sswitch_2
        0x22b8 -> :sswitch_0
        0x270f -> :sswitch_1
    .end sparse-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 267
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 268
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceLooper:Landroid/os/Looper;

    .line 269
    new-instance v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;-><init>(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    .line 270
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 271
    return-void
.end method
