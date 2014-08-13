.class public Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
.super Landroid/app/Activity;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final CALL_OUT_DURATION_INDEX:I = 0xf

.field static final CALL_TYPE_COLUMN_INDEX:I = 0x4

.field static final CDNIP_NUMBER_COLUMN_INDEX:I = 0xa

.field static final CNAP_NAME_COLUMN_INDEX:I = 0x9

.field static final COLUMN_INDEX_ID:I = 0x0

.field static final COLUMN_INDEX_LABEL:I = 0x3

.field static final COLUMN_INDEX_LOOKUP_KEY:I = 0x7

.field static final COLUMN_INDEX_NAME:I = 0x1

.field static final COLUMN_INDEX_NORMALIZED_NUMBER:I = 0x5

.field static final COLUMN_INDEX_NUMBER:I = 0x4

.field static final COLUMN_INDEX_PHOTO_URI:I = 0x6

.field static final COLUMN_INDEX_TYPE:I = 0x2

.field static final CONTACT_ID_COLUMN_INDEX:I = 0xc

.field static final COUNTRY_ISO_COLUMN_INDEX:I = 0x5

.field static final DATE_COLUMN_INDEX:I = 0x1

.field private static final DBG:Z

.field static final DURATION_COLUMN_INDEX:I = 0x2

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field public static final EXTRA_IS_ALL_LOGS:Ljava/lang/String; = "EXTRA_IS_ALL_LOGS"

.field static final GEOCODED_LOCATION_COLUMN_INDEX:I = 0x6

.field static final ID_INDEX:I = 0x0

.field static final LOGTYPE_COLUMN_INDEX:I = 0x7

.field public static final MAKE_LIST_FINISH:I = 0x1

.field static final NUMBER_COLUMN_INDEX:I = 0x3

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final PROXIMITY_BLANK_DELAY_MILLIS:J = 0x64L

.field private static final PROXIMITY_UNBLANK_DELAY_MILLIS:J = 0x1f4L

.field static final REAL_PHONE_NUMBER_INDEX:I = 0x12

.field public static final REJECTED_DETAIL_DELETE:Ljava/lang/String; = "VIP_Detail_Delete"

.field public static final REJECTED_DETAIL_RESTORE:Ljava/lang/String; = "VIP_Detail_Restore"

.field static final REMIND_ME_LATER_TIME:I = 0xd

.field static final SDN_ALPHA_ID_INDEX:I = 0x11

.field static final SERVICE_TYPE_COLUMN_INDEX:I = 0xb

.field static final SIMNUM_COLUMN_INDEX:I = 0x8

.field static final SIM_CARD_ID_COLUMN_INDEX:I = 0xe

.field private static final TAG:Ljava/lang/String; = "CallDetailDeleteActivity"

.field static final VOICEMAIL_MSGID_COLUMN_INDEX:I = 0x10

.field public static final WHICH_OP_ALL_DELTE:I = 0x1

.field public static final WHICH_OP_MULTI_DELETE:I = 0x2

.field public static bVIP_Detail_Delete:Z

.field public static bVIP_Detail_Restore:Z

.field public static isSupportMultiWindow:Z

.field private static mContext:Landroid/content/Context;

.field private static mDoneEable:Z


# instance fields
.field HEADER_VALUE:Ljava/lang/String;

.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field VIEW_BY:Ljava/lang/String;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private customActionBarView:Landroid/view/View;

.field private deleteItem:Landroid/view/View;

.field private deletedData:Z

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field idsStr:Ljava/lang/String;

.field private isUsingTwoPanel:Z

.field public mActionMode:Landroid/view/ActionMode;

.field public mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

.field private mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field mBundle:Landroid/os/Bundle;

.field private mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field mCdnipNumber:Ljava/lang/String;

.field private mCnapName:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDisplayAllLogs:Z

.field private mEnableVIPApp:Z

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field mInflater:Landroid/view/LayoutInflater;

.field private volatile mIsListDone:Z

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMultiSelectEnabled:Z

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field mResources:Landroid/content/res/Resources;

.field private mSelectedTextView:Landroid/widget/TextView;

.field public mSelection:Ljava/util/HashMap;
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

.field mServiceType:I

.field private mVoiceMailNumber:Ljava/lang/String;

.field private uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    .line 183
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    .line 211
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    .line 213
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Delete:Z

    .line 220
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isSupportMultiWindow:Z

    .line 273
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "date"

    aput-object v3, v0, v1

    const-string v3, "duration"

    aput-object v3, v0, v5

    const-string v3, "number"

    aput-object v3, v0, v6

    const-string v3, "type"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "countryiso"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "geocoded_location"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "logtype"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "simnum"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "cnap_name"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "cdnip_number"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "service_type"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "contactid"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "remind_me_later_set"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "sim_id"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "call_out_duration"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "messageid"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "sdn_alpha_id"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "real_phone_number"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 320
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 144
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 185
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mName:Ljava/lang/String;

    .line 194
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCnapName:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCdnipNumber:Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    .line 201
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->idsStr:Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    .line 204
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deletedData:Z

    .line 205
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 215
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z

    .line 529
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 531
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->VIEW_BY:Ljava/lang/String;

    .line 533
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    .line 535
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    .line 537
    const-string v0, "header_value"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    .line 636
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHandler:Landroid/os/Handler;

    .line 651
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1847
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    .line 1864
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$1300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDefaultCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDefaultCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelectedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelectedTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMultiSelectEnabled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 142
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deletedData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDisplayAllLogs:Z

    return v0
.end method

.method private getCallLogEntryUris()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1213
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 1214
    const-string v0, "CallDetailDeleteActivity"

    const-string v1, "getCallLogEntryUris"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->idsStr:Ljava/lang/String;

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->idsStr:Ljava/lang/String;

    return-object v0
.end method

.method private getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 83
    .param p1, "callUri"    # Ljava/lang/String;

    .prologue
    .line 1411
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1412
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v68

    .line 1414
    .local v68, "callCursor":Landroid/database/Cursor;
    if-eqz v68, :cond_0

    :try_start_0
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1415
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    :catchall_0
    move-exception v4

    if-eqz v68, :cond_1

    .line 1606
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    .line 1417
    :cond_2
    :try_start_1
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v0, v4, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v71, v0

    .line 1419
    .local v71, "details":[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    const/16 v72, 0x0

    .local v72, "i":I
    :goto_0
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v72

    if-ge v0, v4, :cond_1d

    .line 1421
    const/4 v4, 0x0

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1422
    .local v28, "id":I
    const/4 v4, 0x3

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1423
    .local v29, "number":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1424
    .local v12, "date":J
    const/4 v4, 0x2

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1425
    .local v14, "duration":J
    const/4 v4, 0x4

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v69

    .line 1426
    .local v69, "callType":I
    const/4 v4, 0x5

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1427
    .local v31, "countryIso":Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1428
    .local v10, "geocode":Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1429
    .local v16, "logType":I
    const/16 v4, 0x8

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1430
    .local v22, "simnum":I
    const/16 v4, 0xf

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1431
    .local v23, "callOutDuration":J
    const/16 v4, 0x11

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1432
    .local v25, "roamingCall":Ljava/lang/String;
    const/16 v4, 0x12

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1433
    .local v26, "iddValue":Ljava/lang/String;
    const/16 v75, 0x0

    .line 1435
    .local v75, "mRemindMeLaterSet":I
    const/16 v4, 0x10

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v76

    .line 1437
    .local v76, "msgId":Ljava/lang/String;
    const/16 v4, 0xe

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v64

    .line 1440
    .local v64, "simcardId":I
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1441
    const/16 v4, 0x9

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCnapName:Ljava/lang/String;

    .line 1442
    const/16 v4, 0xa

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCdnipNumber:Ljava/lang/String;

    .line 1443
    const/16 v4, 0xb

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mServiceType:I

    .line 1446
    :cond_3
    const/16 v4, 0xc

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    .line 1448
    .local v65, "contactId":J
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1452
    :cond_4
    const-string v4, "feature_remind_me_later_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1453
    const/16 v4, 0xd

    move-object/from16 v0, v68

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v75

    .line 1459
    :cond_5
    const-string v30, ""

    .line 1461
    .local v30, "numberText":Ljava/lang/CharSequence;
    const-string v17, ""

    .line 1462
    .local v17, "nameText":Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .line 1463
    .local v18, "numberType":I
    const-string v19, ""

    .line 1464
    .local v19, "numberLabel":Ljava/lang/CharSequence;
    const/16 v21, 0x0

    .line 1465
    .local v21, "photoUri":Landroid/net/Uri;
    const/16 v20, 0x0

    .line 1466
    .local v20, "contactUri":Landroid/net/Uri;
    const-string v44, "vnd.sec.contact.phone"

    .line 1468
    .local v44, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    .line 1551
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_8

    .line 1552
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "account_type"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v65

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v67

    .line 1558
    .local v67, "c":Landroid/database/Cursor;
    if-eqz v67, :cond_7

    :try_start_2
    invoke-interface/range {v67 .. v67}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1559
    const/4 v4, 0x0

    move-object/from16 v0, v67

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v44

    .line 1562
    :cond_7
    if-eqz v67, :cond_8

    .line 1563
    :try_start_3
    invoke-interface/range {v67 .. v67}, Landroid/database/Cursor;->close()V

    .line 1569
    .end local v67    # "c":Landroid/database/Cursor;
    :cond_8
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1571
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    if-nez v4, :cond_9

    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Delete:Z

    if-eqz v4, :cond_18

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z

    if-eqz v4, :cond_18

    .line 1572
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, 0x1

    new-array v11, v5, [I

    const/4 v5, 0x0

    aput v69, v11, v5

    move/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v76

    move-object/from16 v9, v31

    invoke-direct/range {v4 .. v24}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    aput-object v4, v71, v72

    .line 1597
    .end local v44    # "accountType":Ljava/lang/String;
    :goto_2
    const-string v4, "feature_remind_me_later_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1598
    aget-object v4, v71, v72

    move/from16 v0, v75

    iput v0, v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 1601
    :cond_a
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->moveToNext()Z

    .line 1419
    add-int/lit8 v72, v72, 0x1

    goto/16 :goto_0

    .line 1473
    .restart local v44    # "accountType":Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    .line 1475
    .local v3, "phoneUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1477
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v74

    .line 1478
    .local v74, "mMatchLen":I
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v77

    .line 1480
    .local v77, "nLen":I
    const/16 v73, 0x0

    .line 1482
    .local v73, "mIsSpecialNum":Z
    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v73

    .line 1483
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v4, :cond_c

    .line 1484
    const-string v4, "CallDetailDeleteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCallDetailsForUri: mIsSpecialNum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v73

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_c
    move/from16 v0, v77

    move/from16 v1, v74

    if-le v0, v1, :cond_f

    if-nez v73, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1488
    const-string v4, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v80

    .line 1489
    .local v80, "phoneLookup":Landroid/net/Uri;
    invoke-virtual/range {v80 .. v80}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {v74 .. v74}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1509
    .end local v73    # "mIsSpecialNum":Z
    .end local v74    # "mMatchLen":I
    .end local v77    # "nLen":I
    .end local v80    # "phoneLookup":Landroid/net/Uri;
    :goto_3
    if-nez v72, :cond_6

    .line 1510
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v81

    .line 1511
    .local v81, "phonesCursor":Landroid/database/Cursor;
    move-object/from16 v70, v29

    .line 1513
    .local v70, "candidateNumberText":Ljava/lang/String;
    if-eqz v81, :cond_14

    :try_start_4
    invoke-interface/range {v81 .. v81}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1514
    const/4 v4, 0x1

    move-object/from16 v0, v81

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1515
    const/4 v4, 0x6

    move-object/from16 v0, v81

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v82

    .line 1516
    .local v82, "photoUriString":Ljava/lang/String;
    if-nez v82, :cond_12

    const/16 v21, 0x0

    .line 1517
    :goto_4
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1518
    const/4 v4, 0x4

    move-object/from16 v0, v81

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 1525
    :goto_5
    const/4 v4, 0x2

    move-object/from16 v0, v81

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1526
    const/4 v4, 0x3

    move-object/from16 v0, v81

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1527
    const/4 v4, 0x0

    move-object/from16 v0, v81

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    .line 1528
    .local v78, "personId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v78, v4

    if-lez v4, :cond_d

    .line 1529
    const/4 v4, 0x7

    move-object/from16 v0, v81

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v78

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v20

    .line 1544
    .end local v78    # "personId":J
    .end local v82    # "photoUriString":Ljava/lang/String;
    :cond_d
    :goto_6
    if-eqz v81, :cond_e

    :try_start_5
    invoke-interface/range {v81 .. v81}, Landroid/database/Cursor;->close()V

    .line 1545
    :cond_e
    move-object/from16 v30, v70

    .line 1546
    goto/16 :goto_1

    .line 1493
    .end local v70    # "candidateNumberText":Ljava/lang/String;
    .end local v81    # "phonesCursor":Landroid/database/Cursor;
    .restart local v73    # "mIsSpecialNum":Z
    .restart local v74    # "mMatchLen":I
    .restart local v77    # "nLen":I
    :cond_f
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    .line 1500
    .end local v73    # "mIsSpecialNum":Z
    .end local v74    # "mMatchLen":I
    .end local v77    # "nLen":I
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 1501
    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v5, "phone_lookup_with_profile"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_3

    .line 1504
    :cond_11
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    goto/16 :goto_3

    .line 1516
    .restart local v70    # "candidateNumberText":Ljava/lang/String;
    .restart local v81    # "phonesCursor":Landroid/database/Cursor;
    .restart local v82    # "photoUriString":Ljava/lang/String;
    :cond_12
    :try_start_6
    invoke-static/range {v82 .. v82}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    goto :goto_4

    .line 1520
    :cond_13
    const/4 v4, 0x4

    move-object/from16 v0, v81

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, v81

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-static {v4, v5, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    goto :goto_5

    .line 1536
    .end local v82    # "photoUriString":Ljava/lang/String;
    :cond_14
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1537
    move-object/from16 v70, v29

    goto :goto_6

    .line 1539
    :cond_15
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v70

    goto :goto_6

    .line 1544
    :catchall_1
    move-exception v4

    if-eqz v81, :cond_16

    :try_start_7
    invoke-interface/range {v81 .. v81}, Landroid/database/Cursor;->close()V

    .line 1545
    :cond_16
    move-object/from16 v30, v70

    throw v4

    .line 1562
    .end local v3    # "phoneUri":Landroid/net/Uri;
    .end local v70    # "candidateNumberText":Ljava/lang/String;
    .end local v81    # "phonesCursor":Landroid/database/Cursor;
    .restart local v67    # "c":Landroid/database/Cursor;
    :catchall_2
    move-exception v4

    if-eqz v67, :cond_17

    .line 1563
    invoke-interface/range {v67 .. v67}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v4

    .line 1576
    .end local v67    # "c":Landroid/database/Cursor;
    :cond_18
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v11, v4, [I

    const/4 v4, 0x0

    aput v69, v11, v4

    move/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    invoke-direct/range {v5 .. v26}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJLjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v71, v72

    goto/16 :goto_2

    .line 1580
    :cond_19
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1581
    new-instance v27, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v33, v0

    const/4 v4, 0x0

    aput v69, v33, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mServiceType:I

    move/from16 v44, v0

    .end local v44    # "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCdnipNumber:Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v32, v10

    move-wide/from16 v34, v12

    move-wide/from16 v36, v14

    move/from16 v38, v16

    move-object/from16 v39, v17

    move/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    invoke-direct/range {v27 .. v47}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v27, v71, v72

    goto/16 :goto_2

    .line 1584
    .restart local v44    # "accountType":Ljava/lang/String;
    :cond_1a
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_1b

    const-string v4, "vnd.sec.contact.sim"

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1585
    new-instance v27, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v33, v0

    const/4 v4, 0x0

    aput v69, v33, v4

    move-object/from16 v32, v10

    move-wide/from16 v34, v12

    move-wide/from16 v36, v14

    move/from16 v38, v16

    move-object/from16 v39, v17

    move/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    invoke-direct/range {v27 .. v44}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v27, v71, v72

    goto/16 :goto_2

    .line 1588
    :cond_1b
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1589
    new-instance v45, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v53, v0

    const/4 v4, 0x0

    aput v69, v53, v4

    move/from16 v46, v28

    move-object/from16 v47, v29

    move-object/from16 v48, v30

    move-object/from16 v51, v31

    move-object/from16 v52, v10

    move-wide/from16 v54, v12

    move-wide/from16 v56, v14

    move/from16 v58, v16

    move-object/from16 v59, v17

    move/from16 v60, v18

    move-object/from16 v61, v19

    move-object/from16 v62, v20

    move-object/from16 v63, v21

    invoke-direct/range {v45 .. v66}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    aput-object v45, v71, v72

    goto/16 :goto_2

    .line 1593
    :cond_1c
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v11, v4, [I

    const/4 v4, 0x0

    aput v69, v11, v4

    move/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    invoke-direct/range {v5 .. v21}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    aput-object v5, v71, v72
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 1605
    .end local v10    # "geocode":Ljava/lang/String;
    .end local v12    # "date":J
    .end local v14    # "duration":J
    .end local v16    # "logType":I
    .end local v17    # "nameText":Ljava/lang/CharSequence;
    .end local v18    # "numberType":I
    .end local v19    # "numberLabel":Ljava/lang/CharSequence;
    .end local v20    # "contactUri":Landroid/net/Uri;
    .end local v21    # "photoUri":Landroid/net/Uri;
    .end local v22    # "simnum":I
    .end local v23    # "callOutDuration":J
    .end local v25    # "roamingCall":Ljava/lang/String;
    .end local v26    # "iddValue":Ljava/lang/String;
    .end local v28    # "id":I
    .end local v29    # "number":Ljava/lang/String;
    .end local v30    # "numberText":Ljava/lang/CharSequence;
    .end local v31    # "countryIso":Ljava/lang/String;
    .end local v44    # "accountType":Ljava/lang/String;
    .end local v64    # "simcardId":I
    .end local v65    # "contactId":J
    .end local v69    # "callType":I
    .end local v75    # "mRemindMeLaterSet":I
    .end local v76    # "msgId":Ljava/lang/String;
    :cond_1d
    if-eqz v68, :cond_1e

    .line 1606
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->close()V

    :cond_1e
    return-object v71
.end method

.method private updateAllCheckState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1145
    const/4 v3, 0x1

    .line 1146
    .local v3, "everyBodyIsOn":Z
    const/4 v2, 0x1

    .line 1147
    .local v2, "everyBodyIsOff":Z
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 1149
    .local v1, "dataCount":I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    .line 1151
    .local v5, "startIndex":I
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDisplayAllLogs:Z

    if-nez v6, :cond_1

    .line 1152
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 1155
    :cond_1
    move v4, v5

    .line 1156
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    or-int v6, v3, v2

    if-eqz v6, :cond_3

    .line 1157
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 1158
    .local v0, "checked":Z
    if-nez v0, :cond_2

    .line 1159
    const/4 v3, 0x0

    .line 1156
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1161
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1164
    .end local v0    # "checked":Z
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v6, :cond_4

    .line 1165
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1169
    :cond_4
    if-eqz v2, :cond_5

    .line 1171
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1172
    sput-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    .line 1180
    :goto_2
    return-void

    .line 1176
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1177
    sput-boolean v8, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    goto :goto_2
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 4
    .param p1, "callUris"    # Ljava/lang/String;

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1407
    return-void
.end method

.method private updateWindowLayout()V
    .locals 7

    .prologue
    const v6, 0x7f0c01d2

    const/16 v5, 0x35

    const/4 v4, -0x1

    const v3, 0x3ecccccd

    .line 1798
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1799
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 1800
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1801
    .local v0, "param":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1802
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1803
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1827
    :goto_0
    return-void

    .line 1806
    .end local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1807
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 1808
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1809
    .restart local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1810
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1812
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1814
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 1817
    .end local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 1818
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1819
    .restart local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1821
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1823
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1239
    const-string v3, "CallDetailDeleteActivity"

    const-string v4, "clickhandler"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1253
    :goto_0
    return-void

    .line 1242
    :pswitch_0
    const-string v4, "CallDetailDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickhandler"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 1243
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1244
    .local v0, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1245
    .local v1, "position":I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1246
    .local v2, "sba":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1247
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 1248
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateAllCheckState()V

    goto :goto_0

    .line 1240
    :pswitch_data_0
    .packed-switch 0x7f09009e
        :pswitch_0
    .end packed-switch
.end method

.method public disableProximitySensor(Z)V
    .locals 1
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 1737
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 1732
    return-void
.end method

.method public hasMultiWindwoFeature()Z
    .locals 4

    .prologue
    .line 1830
    const/4 v2, 0x0

    .line 1832
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1833
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 1834
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 1840
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 1836
    :catch_0
    move-exception v0

    .line 1837
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1720
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1721
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->invalidateOptionsMenu()V

    .line 1724
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 1725
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateWindowLayout()V

    .line 1727
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e02f4

    const v7, 0x7f090381

    const/16 v3, 0x400

    const/16 v4, 0x1e

    const/4 v6, 0x0

    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 345
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    .line 347
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->hasMultiWindwoFeature()Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isSupportMultiWindow:Z

    .line 354
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z

    .line 356
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isSupportMultiWindow:Z

    if-eqz v2, :cond_1

    .line 357
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 358
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 361
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z

    if-eqz v2, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "VIP_Detail_Restore"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "VIP_Detail_Delete"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Delete:Z

    .line 367
    :cond_2
    const v2, 0x7f04000e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setContentView(I)V

    .line 369
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    const v2, 0x7f090041

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 373
    const-string v2, "feature_tablet_selection_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 374
    const v2, 0x7f040188

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    .line 375
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 377
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 380
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 382
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 383
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_7

    .line 384
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 385
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 455
    :cond_4
    :goto_0
    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    .line 456
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 459
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 460
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 461
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    .line 463
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 464
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 465
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 467
    new-instance v2, Lcom/android/contacts/ProximitySensorManager;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 469
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 472
    .local v1, "allChBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    sput-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    .line 474
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 476
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 477
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_IS_ALL_LOGS"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDisplayAllLogs:Z

    .line 502
    const-string v2, "feature_tablet_selection_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->startActionMode()V

    .line 505
    :cond_6
    return-void

    .line 387
    .end local v1    # "allChBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_7
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 391
    const v2, 0x7f030001

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 392
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 393
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 395
    :cond_8
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1614
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1615
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1616
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1617
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 1618
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1620
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1760
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1762
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1764
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 1769
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1772
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 1773
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1774
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 1776
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1222
    packed-switch p1, :pswitch_data_0

    .line 1235
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1225
    :pswitch_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1227
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1229
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 1230
    const/4 v1, 0x1

    goto :goto_0

    .line 1222
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 1781
    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 1783
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateWindowLayout()V

    .line 1785
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 1636
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1702
    const-string v4, "feature_tablet_selection_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    .line 1705
    :goto_0
    return v4

    .line 1638
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->finish()V

    move v4, v5

    .line 1639
    goto :goto_0

    .line 1641
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->finish()V

    move v4, v5

    .line 1642
    goto :goto_0

    .line 1645
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1646
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v4, :cond_0

    .line 1647
    const-string v4, "CallDetailDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mListView.getCount() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 1651
    .local v3, "startIndex":I
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDisplayAllLogs:Z

    if-nez v4, :cond_2

    .line 1652
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1655
    :cond_2
    move v1, v3

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1656
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1657
    const-string v4, "feature_tablet_selection_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1658
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1660
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1665
    :cond_5
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z

    if-eqz v4, :cond_8

    .line 1666
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1667
    const v4, 0x7f0e04cb

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showRestoreConfirmDlg(Ljava/lang/String;I)V

    :goto_3
    move v4, v5

    .line 1698
    goto/16 :goto_0

    .line 1668
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_7

    .line 1669
    const v4, 0x7f0e04c9

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showRestoreConfirmDlg(Ljava/lang/String;I)V

    goto :goto_3

    .line 1671
    :cond_7
    const v4, 0x7f0e04ca

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showRestoreConfirmDlg(Ljava/lang/String;I)V

    goto :goto_3

    .line 1675
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1677
    const/4 v2, 0x0

    .line 1678
    .local v2, "logType":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1679
    .local v0, "checkedPos":I
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDisplayAllLogs:Z

    if-eqz v4, :cond_9

    .line 1680
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 1681
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    const-string v7, "logtype"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1686
    :goto_4
    const-string v4, "feature_view_by_vvm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x3b6

    if-ne v2, v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_a

    .line 1687
    const v4, 0x7f0e0351

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_3

    .line 1683
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v6, v0, -0x1

    aget-object v4, v4, v6

    iget v2, v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    goto :goto_4

    .line 1689
    :cond_a
    const v4, 0x7f0e034d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1691
    .end local v0    # "checkedPos":I
    .end local v2    # "logType":I
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_c

    .line 1692
    const v4, 0x7f0e034b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1694
    :cond_c
    const v4, 0x7f0e034c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1705
    .end local v1    # "i":I
    .end local v3    # "startIndex":I
    :cond_d
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto/16 :goto_0

    .line 1636
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->disableProximitySensor(Z)V

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 1715
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1716
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1627
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0e04c5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1631
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0e02f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 565
    const-string v4, "CallDetailDeleteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestoreInstanceState, bundle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    if-nez p1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 574
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    if-eqz v4, :cond_0

    .line 578
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 580
    .local v3, "itemCnt":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v4, :cond_2

    .line 581
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 582
    .local v2, "isHeaderChecked":Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 585
    .end local v2    # "isHeaderChecked":Z
    :cond_2
    if-lez v3, :cond_4

    .line 586
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 587
    .local v0, "checkedarray":[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 588
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 589
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    aget-boolean v5, v0, v1

    invoke-virtual {v4, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 591
    const-string v4, "feature_tablet_selection_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 592
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

    if-eqz v4, :cond_3

    .line 593
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->toggleSelection(I)V

    .line 588
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    .end local v0    # "checkedarray":[Z
    .end local v1    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateAllCheckState()V

    .line 603
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 511
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIP_Detail_Restore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    .line 514
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIP_Detail_Delete"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Delete:Z

    .line 517
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateWindowLayout()V

    .line 521
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateData(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->invalidateOptionsMenu()V

    .line 524
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_2

    .line 525
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateWindowLayout()V

    .line 527
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 541
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 543
    const-string v4, "CallDetailDeleteActivity"

    const-string v5, "onSaveInstanceState"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 547
    .local v3, "itemCnt":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v4, :cond_0

    .line 549
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    .line 550
    .local v2, "isHeaderChecked":Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 553
    .end local v2    # "isHeaderChecked":Z
    :cond_0
    new-array v0, v3, [Z

    .line 554
    .local v0, "checkedArray":[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 555
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    aput-boolean v4, v0, v1

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 558
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 559
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 1794
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 1790
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 6
    .param p1, "bCheckStatus"    # Z

    .prologue
    .line 1183
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1184
    .local v0, "dataCount":I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 1185
    .local v2, "startIndex":I
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v3, :cond_0

    .line 1186
    const-string v3, "CallDetailDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mListView.getCount() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDisplayAllLogs:Z

    if-nez v3, :cond_2

    .line 1189
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1192
    :cond_2
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1193
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v3, :cond_3

    .line 1194
    const-string v3, "CallDetailDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setItemChecked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1201
    sput-boolean p1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    .line 1202
    return-void
.end method

.method public showDeleteConfirmDlg(Ljava/lang/String;I)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "iOpIndex"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 732
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 735
    .local v1, "deleteLogsCount":I
    const/4 v2, 0x0

    .line 736
    .local v2, "logType":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 738
    .local v0, "checkedPos":I
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDisplayAllLogs:Z

    if-eqz v4, :cond_0

    .line 739
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 740
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;

    const-string v6, "logtype"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 745
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_2

    .line 746
    const-string v4, "feature_view_by_vvm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x3b6

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 747
    const v4, 0x7f0e0350

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "title":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e02f4

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$8;

    invoke-direct {v6, p0, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e02d4

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 785
    return-void

    .line 742
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    iget v2, v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    goto :goto_0

    .line 749
    :cond_1
    const v4, 0x7f0e0343

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_1

    .line 752
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    const v4, 0x7f0e0344

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 793
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f0e04cc

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 798
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 811
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f0e0221

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showRestoreConfirmDlg(Ljava/lang/String;I)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "iOpIndex"    # I

    .prologue
    .line 688
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 691
    .local v0, "restoreLogsCount":I
    const-string v2, "CallDetailDeleteActivity"

    const-string v3, " === showRestoreConfirmDlg() ==="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 693
    const v2, 0x7f0e04c7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "title":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e04c5

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;

    invoke-direct {v4, p0, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02d4

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 727
    return-void

    .line 695
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0e04c8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public startActionMode()V
    .locals 2

    .prologue
    .line 1854
    const-string v0, "CallDetailDeleteActivity"

    const-string v1, "startActionMode()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

    if-nez v0, :cond_0

    .line 1857
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

    .line 1860
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1861
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionMode:Landroid/view/ActionMode;

    .line 1862
    :cond_1
    return-void
.end method

.method public startCheckProcessing()V
    .locals 2

    .prologue
    .line 611
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    .line 612
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 630
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 631
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 632
    return-void
.end method
