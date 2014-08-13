.class public Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
.super Landroid/app/Fragment;
.source "CallDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN_INDEX:I = 0x9

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final CALL_OUT_DURATION_INDEX:I = 0xf

.field static final CALL_TYPE_COLUMN_INDEX:I = 0x4

.field static final CDNIP_NUMBER_COLUMN_INDEX:I = 0xc

.field static final CNAP_NAME_COLUMN_INDEX:I = 0xb

.field static final COLUMN_INDEX_ID:I = 0x0

.field static final COLUMN_INDEX_LABEL:I = 0x3

.field static final COLUMN_INDEX_LOOKUP_KEY:I = 0x7

.field static final COLUMN_INDEX_NAME:I = 0x1

.field static final COLUMN_INDEX_NORMALIZED_NUMBER:I = 0x5

.field static final COLUMN_INDEX_NUMBER:I = 0x4

.field static final COLUMN_INDEX_PHOTO_URI:I = 0x6

.field static final COLUMN_INDEX_TYPE:I = 0x2

.field static final CONTACT_ID_INDEX:I = 0x8

.field static final COUNTRY_ISO_COLUMN_INDEX:I = 0x5

.field static final DATE_COLUMN_INDEX:I = 0x1

.field private static final DBG:Z

.field static final DURATION_COLUMN_INDEX:I = 0x2

.field public static final EXTRA_CALL_LOG_CONTACT:Ljava/lang/String; = "EXTRA_CALL_LOG_CONTACT"

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field public static final EXTRA_VOICEMAIL_START_PLAYBACK:Ljava/lang/String; = "EXTRA_VOICEMAIL_START_PLAYBACK"

.field public static final EXTRA_VOICEMAIL_URI:Ljava/lang/String; = "EXTRA_VOICEMAIL_URI"

.field public static final FONT_SIZE_HUGE:I = 0x4

.field public static final FONT_SIZE_LARGE:I = 0x3

.field public static final FONT_SIZE_NORMAL:I = 0x2

.field public static final FONT_SIZE_SMALL:I = 0x1

.field public static final FONT_SIZE_TINY:I = 0x0

.field static final GEOCODED_LOCATION_COLUMN_INDEX:I = 0x6

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final LOGTYPE_COLUMN_INDEX:I = 0x7

.field static final NUMBER_COLUMN_INDEX:I = 0x3

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final PREFERRED_SIM_ASK_ALWAYS:I = 0x1

.field private static final PREFERRED_SIM_CURRENT_NETWORK:I = 0x0

.field private static final PREFERRED_SIM_SIM1:I = 0x2

.field private static final PREFERRED_SIM_SIM2:I = 0x3

.field private static final PROXIMITY_BLANK_DELAY_MILLIS:J = 0x64L

.field private static final PROXIMITY_UNBLANK_DELAY_MILLIS:J = 0x1f4L

.field static final REAL_PHONE_NUMBER_INDEX:I = 0x11

.field static final SDN_ALPHA_ID_INDEX:I = 0x10

.field static final SERVICE_TYPE_COLUMN_INDEX:I = 0xd

.field static final SIMNUM_COLUMN_INDEX:I = 0xe

.field private static final TAG:Ljava/lang/String; = "CallDetailFragment"

.field static final VOICEMAIL_MSGID_COLUMN_INDEX:I = 0xa

.field public static isAvailChatOnV:Z

.field public static isAvailChatOnVideoCall:Z

.field public static isAvailChatOnVoiceCall:Z

.field public static isBuddyAvailChatOnV:Z

.field public static isBuddyAvailChatOnVideoCall:Z

.field public static isBuddyAvailChatOnVoiceCall:Z

.field private static isVoLTEEnabled:Z

.field private static mCallDetailIsRunning:Z

.field private static mIsContactDialog:Z


# instance fields
.field private final CONTEXTMENU_REMOVEDETAIL:I

.field private DuosCallSim1BtnImg:I

.field private bConfigurationChanged:Z

.field callOutDuration:J

.field call_button:Landroid/widget/Button;

.field private canPlaceCallsTo:Z

.field private contactImage:Landroid/view/View;

.field private detailCount:I

.field private iddValue:Ljava/lang/String;

.field ids:[J

.field private isUsingTwoPanel:Z

.field private korVideoCallBtnImg:I

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallDetail:Landroid/view/View;

.field private mCallDetailLand:Landroid/view/View;

.field private mCallDetailView:Landroid/view/View;

.field private mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field mCdnipNumber:Ljava/lang/String;

.field private final mChatOnCallActionListener:Landroid/view/View$OnClickListener;

.field private final mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

.field private final mChatOnVTActionListener:Landroid/view/View$OnClickListener;

.field private mChatonId:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field mCnapName:Ljava/lang/String;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mContextForDialog:Landroid/content/Context;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mHasEditNumberBeforeCall:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mLocationTextView:Landroid/widget/TextView;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberForDialog:Ljava/lang/String;

.field private mNumberTextView:Landroid/widget/TextView;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field private final mQuanternaryActionListener:Landroid/view/View$OnClickListener;

.field private final mQuinticActionListener:Landroid/view/View$OnClickListener;

.field mResources:Landroid/content/res/Resources;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSelectedUri:Ljava/lang/String;

.field mServiceType:I

.field private final mSexticActionListener:Landroid/view/View$OnClickListener;

.field private final mSim2CallActionListener:Landroid/view/View$OnClickListener;

.field private final mTertiaryActionListener:Landroid/view/View$OnClickListener;

.field private final mViewContactListener:Landroid/view/View$OnClickListener;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private nameText:Ljava/lang/String;

.field private numberText:Ljava/lang/String;

.field private roamingCall:Ljava/lang/String;

.field private selectedId:I

.field simnum:I

.field private uri:Landroid/net/Uri;

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

    .line 115
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DBG:Z

    .line 128
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isVoLTEEnabled:Z

    .line 202
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailIsRunning:Z

    .line 203
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z

    .line 214
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnV:Z

    .line 215
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVoiceCall:Z

    .line 216
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVideoCall:Z

    .line 218
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isBuddyAvailChatOnV:Z

    .line 219
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isBuddyAvailChatOnVoiceCall:Z

    .line 220
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isBuddyAvailChatOnVideoCall:Z

    .line 287
    const/16 v0, 0x12

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

    const-string v4, "contactid"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "address"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "messageid"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "cnap_name"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "cdnip_number"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "service_type"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "simnum"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "call_out_duration"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "sdn_alpha_id"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "real_phone_number"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 332
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

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 115
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 117
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    .line 119
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContextForDialog:Landroid/content/Context;

    .line 162
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;

    .line 163
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;

    .line 168
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->bConfigurationChanged:Z

    .line 171
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCdnipNumber:Ljava/lang/String;

    .line 172
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    .line 176
    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->simnum:I

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->callOutDuration:J

    .line 178
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->roamingCall:Ljava/lang/String;

    .line 179
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->iddValue:Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    .line 194
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->nameText:Ljava/lang/String;

    .line 195
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;

    .line 201
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    .line 207
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->CONTEXTMENU_REMOVEDETAIL:I

    .line 351
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 366
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 372
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 379
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 388
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSecondaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 398
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    .line 405
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    .line 412
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuinticActionListener:Landroid/view/View$OnClickListener;

    .line 422
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSexticActionListener:Landroid/view/View$OnClickListener;

    .line 432
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$10;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    .line 439
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$11;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

    .line 446
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$12;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnCallActionListener:Landroid/view/View$OnClickListener;

    .line 455
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$13;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnVTActionListener:Landroid/view/View$OnClickListener;

    .line 464
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$14;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mViewContactListener:Landroid/view/View$OnClickListener;

    .line 1944
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->adjustListItemLayoutBy7FontSize()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->adjustListItemLayoutByFontSize()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->contactImage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->contactImage:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View$OnKeyListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHasEditNumberBeforeCall:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Landroid/net/Uri;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # J

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->loadContactPhotos(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->saveViewStatusPreference()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContextForDialog:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberForDialog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 113
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->detailCount:I

    return v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DBG:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->bConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailIsRunning:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;

    return-object p1
.end method

.method private adjustListItemLayoutBy7FontSize()V
    .locals 15

    .prologue
    const/16 v14, 0x7e

    const/high16 v13, 0x45200000

    const/high16 v12, 0x44c80000

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 2190
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "font_size"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2192
    .local v0, "fontSize":I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2193
    .local v2, "lpHeaderText":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2195
    .local v4, "mlpHeaderText":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2196
    .local v3, "lpNumberText":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2198
    .local v5, "mlpNumberText":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v7, "CallDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustListItemLayoutByFontSize fontSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v7

    .line 2202
    .local v1, "lcdWidth":F
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v6, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2204
    .local v6, "smallestWidthdp":I
    const-string v7, "CallDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lcdWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const-string v7, "CallDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "smallestWidthdp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    packed-switch v0, :pswitch_data_0

    .line 2246
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2215
    :pswitch_1
    cmpl-float v7, v1, v13

    if-eqz v7, :cond_1

    cmpl-float v7, v1, v12

    if-nez v7, :cond_0

    .line 2216
    :cond_1
    const/16 v7, 0x320

    if-ne v6, v7, :cond_0

    .line 2217
    iput v14, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2218
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v8, -0xe

    invoke-virtual {v7, v10, v8, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2220
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    const/4 v8, -0x4

    invoke-virtual {v7, v10, v8, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2222
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v11, :cond_0

    .line 2223
    const/16 v7, -0x28

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2224
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2230
    :pswitch_2
    cmpl-float v7, v1, v13

    if-eqz v7, :cond_2

    cmpl-float v7, v1, v12

    if-nez v7, :cond_0

    .line 2231
    :cond_2
    const/16 v7, 0x320

    if-ne v6, v7, :cond_0

    .line 2232
    iput v14, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2233
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v8, -0x14

    invoke-virtual {v7, v10, v8, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2234
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f11005d

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2236
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    const/4 v8, -0x6

    invoke-virtual {v7, v10, v8, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2238
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v11, :cond_0

    .line 2239
    const/16 v7, -0x33

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2240
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private adjustListItemLayoutByFontSize()V
    .locals 13

    .prologue
    const/16 v12, -0xe

    const/16 v11, -0x14

    const/16 v10, 0x320

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 2094
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2096
    .local v0, "fontSize":I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2097
    .local v2, "lpHeaderText":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2099
    .local v3, "mlpHeaderText":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v5, "CallDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustListItemLayoutByFontSize fontSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v5

    .line 2103
    .local v1, "lcdWidth":F
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v4, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2105
    .local v4, "smallestWidthdp":I
    const-string v5, "CallDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lcdWidth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    const-string v5, "CallDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smallestWidthdp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    packed-switch v0, :pswitch_data_0

    .line 2185
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid font size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2114
    :pswitch_0
    const-string v5, "CallDetailFragment"

    const-string v6, "Large"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    const/high16 v5, 0x44a00000

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    const/high16 v5, 0x44480000

    cmpl-float v5, v1, v5

    if-nez v5, :cond_3

    .line 2116
    :cond_0
    const/16 v5, 0x258

    if-ne v4, v5, :cond_2

    .line 2117
    const/16 v5, 0x32

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2118
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v12, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2119
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f110055

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2121
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_1

    .line 2122
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2123
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2183
    :cond_1
    :goto_0
    :pswitch_1
    return-void

    .line 2125
    :cond_2
    if-ne v4, v10, :cond_1

    .line 2126
    const/16 v5, 0x32

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2127
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v12, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2128
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f110055

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2130
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_1

    .line 2131
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2132
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2135
    :cond_3
    const/high16 v5, 0x45200000

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x44c80000

    cmpl-float v5, v1, v5

    if-nez v5, :cond_1

    .line 2136
    :cond_4
    if-ne v4, v10, :cond_1

    .line 2137
    const/16 v5, 0x6a

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2138
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v12, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2139
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f110055

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2141
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_1

    .line 2142
    const/16 v5, -0x28

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2143
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2149
    :pswitch_2
    const-string v5, "CallDetailFragment"

    const-string v6, "Huge"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const/high16 v5, 0x44a00000

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x44480000

    cmpl-float v5, v1, v5

    if-nez v5, :cond_7

    .line 2151
    :cond_5
    const/16 v5, 0x258

    if-ne v4, v5, :cond_6

    .line 2152
    const/16 v5, 0x46

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2153
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v11, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2154
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f11005a

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2156
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_1

    .line 2157
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2158
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2161
    :cond_6
    if-ne v4, v10, :cond_1

    .line 2162
    const/16 v5, 0x3c

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2163
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v11, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2164
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f11005a

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2166
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_1

    .line 2167
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2168
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2171
    :cond_7
    const/high16 v5, 0x45200000

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_8

    const/high16 v5, 0x44c80000

    cmpl-float v5, v1, v5

    if-nez v5, :cond_1

    .line 2172
    :cond_8
    if-ne v4, v10, :cond_1

    .line 2173
    const/16 v5, 0x7e

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2174
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v11, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2175
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f11005a

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2177
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_1

    .line 2178
    const/16 v5, -0x33

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2179
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V
    .locals 27
    .param p1, "entry"    # Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;

    .prologue
    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f090050

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1609
    .local v10, "convertView":Landroid/view/View;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1610
    const v23, 0x7f090055

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1611
    .local v5, "call_button":Landroid/widget/Button;
    const v23, 0x7f09005b

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 1612
    .local v21, "vcall_button":Landroid/widget/Button;
    const v23, 0x7f090056

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 1615
    .local v18, "sms_button":Landroid/widget/Button;
    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isVoLTEEnabled:Z

    if-eqz v23, :cond_a

    .line 1616
    const-string v23, "feature_kor"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1617
    const-string v23, "feature_skt"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1618
    const/16 v23, 0x0

    const v24, 0x7f0202a4

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1633
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1634
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1636
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1638
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1641
    const-string v23, "call_message"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1643
    const v23, 0x7f090055

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 1644
    const-string v23, "feature_kt"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSecondaryLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1646
    const v23, 0x7f090053

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 1650
    :cond_1
    const-string v23, "ip_call"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    const-string v23, "feature_chn_duos"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1651
    const-string v23, "feature_chn_duos_gsm_gsm"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1652
    const v23, 0x7f0202a0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DuosCallSim1BtnImg:I

    .line 1655
    :goto_1
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DuosCallSim1BtnImg:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1657
    const v23, 0x7f090057

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1658
    .local v17, "sim2_call_detail_button":Landroid/widget/LinearLayout;
    const v23, 0x7f090058

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 1659
    .local v16, "sim2_call_button":Landroid/widget/Button;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1661
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1662
    const-string v23, "feature_chn_duos_gsm_gsm"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1663
    const/16 v23, 0x0

    const v24, 0x7f0202b7

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1665
    :cond_2
    const v23, 0x7f09005a

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1666
    .local v15, "ipcall_detail_button":Landroid/widget/LinearLayout;
    const v23, 0x7f090059

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 1667
    .local v14, "ipcall_button":Landroid/widget/Button;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1669
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1671
    const-string v23, "feature_chn_duos_gsm_gsm"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1672
    const v23, 0x7f090058

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1673
    const v23, 0x7f090059

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1674
    const v23, 0x7f09005b

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1700
    .end local v14    # "ipcall_button":Landroid/widget/Button;
    .end local v15    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    .end local v16    # "sim2_call_button":Landroid/widget/Button;
    .end local v17    # "sim2_call_detail_button":Landroid/widget/LinearLayout;
    :cond_3
    :goto_2
    const-string v23, "feature_kor"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1701
    const-string v23, "feature_skt"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1702
    const v23, 0x7f0202c2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->korVideoCallBtnImg:I

    .line 1708
    :goto_3
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->korVideoCallBtnImg:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1712
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f090072

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1713
    .local v11, "convertView2":Landroid/view/View;
    const v23, 0x7f090047

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 1714
    .local v13, "create_contact_button":Landroid/widget/Button;
    const v23, 0x7f090048

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 1715
    .local v19, "update_existing_button":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuinticActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1716
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSexticActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1718
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f090086

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1721
    .local v12, "convertView3":Landroid/view/View;
    const v23, 0x7f09004a

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    .line 1722
    .local v22, "view_contact_button":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mViewContactListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1723
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1729
    const/4 v9, 0x0

    .line 1731
    .local v9, "chatonView":Landroid/view/View;
    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVoiceCall:Z

    if-nez v23, :cond_5

    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVideoCall:Z

    if-eqz v23, :cond_10

    .line 1732
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f090078

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1733
    const v23, 0x7f090079

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1734
    .local v7, "chatOnMsg":Landroid/widget/Button;
    const v23, 0x7f09007a

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1735
    .local v6, "chatOnCall":Landroid/widget/Button;
    const v23, 0x7f09007c

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1737
    .local v8, "chatOnVTCall":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1738
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnCallActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1740
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnVTActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1742
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1751
    .end local v6    # "chatOnCall":Landroid/widget/Button;
    .end local v7    # "chatOnMsg":Landroid/widget/Button;
    .end local v8    # "chatOnVTCall":Landroid/widget/Button;
    .end local v9    # "chatonView":Landroid/view/View;
    :cond_6
    :goto_4
    return-void

    .line 1620
    .end local v11    # "convertView2":Landroid/view/View;
    .end local v12    # "convertView3":Landroid/view/View;
    .end local v13    # "create_contact_button":Landroid/widget/Button;
    .end local v19    # "update_existing_button":Landroid/widget/Button;
    .end local v22    # "view_contact_button":Landroid/widget/Button;
    :cond_7
    const-string v23, "feature_kt"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1621
    const/16 v23, 0x0

    const v24, 0x7f0202a1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1623
    :cond_8
    const-string v23, "feature_lgt"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1624
    const/16 v23, 0x0

    const v24, 0x7f0202a2

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1627
    :cond_9
    const/16 v23, 0x0

    const v24, 0x7f0202a3

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1630
    :cond_a
    const/16 v23, 0x0

    const v24, 0x7f0202a0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1654
    :cond_b
    const v23, 0x7f0202a6

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DuosCallSim1BtnImg:I

    goto/16 :goto_1

    .line 1677
    .restart local v14    # "ipcall_button":Landroid/widget/Button;
    .restart local v15    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    .restart local v16    # "sim2_call_button":Landroid/widget/Button;
    .restart local v17    # "sim2_call_detail_button":Landroid/widget/LinearLayout;
    :cond_c
    const v23, 0x7f090058

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1678
    const v23, 0x7f090059

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1679
    const v23, 0x7f090058

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1680
    const v23, 0x7f090056

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1681
    const v23, 0x7f090059

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_2

    .line 1684
    .end local v14    # "ipcall_button":Landroid/widget/Button;
    .end local v15    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    .end local v16    # "sim2_call_button":Landroid/widget/Button;
    .end local v17    # "sim2_call_detail_button":Landroid/widget/LinearLayout;
    :cond_d
    const-string v23, "ip_call"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1685
    const v23, 0x7f09005a

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1686
    .restart local v15    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    const v23, 0x7f090059

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 1687
    .restart local v14    # "ipcall_button":Landroid/widget/Button;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1689
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1690
    const v23, 0x7f090059

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1691
    const v23, 0x7f090059

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1693
    const-string v23, "feature_ctc"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1694
    const v23, 0x7f090053

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 1695
    .local v20, "vcallButtonView":Landroid/widget/LinearLayout;
    const/16 v23, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 1703
    .end local v14    # "ipcall_button":Landroid/widget/Button;
    .end local v15    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    .end local v20    # "vcallButtonView":Landroid/widget/LinearLayout;
    :cond_e
    const-string v23, "feature_kt"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1704
    const v23, 0x7f0202c0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->korVideoCallBtnImg:I

    goto/16 :goto_3

    .line 1706
    :cond_f
    const v23, 0x7f0202c1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->korVideoCallBtnImg:I

    goto/16 :goto_3

    .line 1744
    .restart local v9    # "chatonView":Landroid/view/View;
    .restart local v11    # "convertView2":Landroid/view/View;
    .restart local v12    # "convertView3":Landroid/view/View;
    .restart local v13    # "create_contact_button":Landroid/widget/Button;
    .restart local v19    # "update_existing_button":Landroid/widget/Button;
    .restart local v22    # "view_contact_button":Landroid/widget/Button;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f090081

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1745
    const v23, 0x7f090082

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1746
    .restart local v7    # "chatOnMsg":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1747
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method private getCallLogEntryUris(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)Ljava/lang/String;
    .locals 2
    .param p1, "detailInfoData"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .prologue
    .line 768
    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->nameText:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->nameText:Ljava/lang/String;

    .line 769
    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->phoneNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;

    .line 770
    const/4 v0, 0x0

    .line 772
    .local v0, "idsStr":Ljava/lang/String;
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->idsStr:Ljava/lang/String;

    .line 773
    return-object v0
.end method

.method private getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 63
    .param p1, "callUri"    # Ljava/lang/String;

    .prologue
    .line 1351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1352
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v50

    .line 1354
    .local v50, "callCursor":Landroid/database/Cursor;
    if-eqz v50, :cond_0

    :try_start_0
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1355
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

    .line 1498
    :catchall_0
    move-exception v4

    if-eqz v50, :cond_1

    .line 1499
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    .line 1357
    :cond_2
    :try_start_1
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v0, v4, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v53, v0

    .line 1358
    .local v53, "details":[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    const/16 v54, 0x0

    .local v54, "i":I
    :goto_0
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v54

    if-ge v0, v4, :cond_14

    .line 1360
    const/4 v4, 0x0

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1361
    .local v29, "id":I
    const/4 v4, 0x3

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1362
    .local v30, "number":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1363
    .local v13, "date":J
    const/4 v4, 0x2

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1364
    .local v15, "duration":J
    const/4 v4, 0x4

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 1365
    .local v51, "callType":I
    const/4 v4, 0x5

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1366
    .local v10, "countryIso":Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1367
    .local v11, "geocode":Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1368
    .local v17, "logType":I
    const/16 v4, 0x8

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1369
    .local v26, "contactId":J
    const/16 v4, 0x9

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1370
    .local v8, "address":Ljava/lang/String;
    const/16 v4, 0xa

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1371
    .local v9, "msgId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1372
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 1376
    :cond_3
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1377
    const/16 v4, 0xb

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    .line 1378
    const/16 v4, 0xc

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCdnipNumber:Ljava/lang/String;

    .line 1379
    const/16 v4, 0xd

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mServiceType:I

    .line 1383
    :cond_4
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1384
    const/16 v4, 0xe

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->simnum:I

    .line 1385
    const/16 v4, 0xf

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->callOutDuration:J

    .line 1386
    const/16 v4, 0x10

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->roamingCall:Ljava/lang/String;

    .line 1387
    const/16 v4, 0x11

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->iddValue:Ljava/lang/String;

    .line 1393
    :cond_5
    const-string v18, ""

    .line 1394
    .local v18, "nameText":Ljava/lang/CharSequence;
    const/16 v19, 0x0

    .line 1395
    .local v19, "numberType":I
    const-string v20, ""

    .line 1396
    .local v20, "numberLabel":Ljava/lang/CharSequence;
    const/16 v22, 0x0

    .line 1397
    .local v22, "photoUri":Landroid/net/Uri;
    const/16 v21, 0x0

    .line 1399
    .local v21, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1479
    .local v7, "numberText":Ljava/lang/CharSequence;
    :goto_1
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1480
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, 0x1

    new-array v12, v5, [I

    const/4 v5, 0x0

    aput v51, v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mServiceType:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCdnipNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    move/from16 v5, v29

    move-object/from16 v6, v30

    invoke-direct/range {v4 .. v28}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;JZ)V

    aput-object v4, v53, v54

    .line 1493
    :goto_2
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->moveToNext()Z

    .line 1358
    add-int/lit8 v54, v54, 0x1

    goto/16 :goto_0

    .line 1403
    .end local v7    # "numberText":Ljava/lang/CharSequence;
    :cond_6
    const/4 v3, 0x0

    .line 1406
    .local v3, "phoneUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v56

    .line 1409
    .local v56, "mMatchLen":I
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v57

    .line 1410
    .local v57, "nLen":I
    const/16 v55, 0x0

    .line 1411
    .local v55, "mIsSpecialNum":Z
    invoke-static/range {v30 .. v30}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v55

    .line 1412
    const-string v4, "CallDetailFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCallDetailsForUri: mIsSpecialNum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    move/from16 v0, v57

    move/from16 v1, v56

    if-le v0, v1, :cond_a

    if-nez v55, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1415
    const-string v4, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v60

    .line 1416
    .local v60, "phoneLookup":Landroid/net/Uri;
    invoke-virtual/range {v60 .. v60}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1445
    .end local v55    # "mIsSpecialNum":Z
    .end local v56    # "mMatchLen":I
    .end local v57    # "nLen":I
    .end local v60    # "phoneLookup":Landroid/net/Uri;
    :goto_3
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v61

    .line 1446
    .local v61, "phonesCursor":Landroid/database/Cursor;
    move-object/from16 v52, v30

    .line 1448
    .local v52, "candidateNumberText":Ljava/lang/String;
    if-eqz v61, :cond_10

    :try_start_2
    invoke-interface/range {v61 .. v61}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1449
    const/4 v4, 0x1

    move-object/from16 v0, v61

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1450
    const/4 v4, 0x6

    move-object/from16 v0, v61

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 1451
    .local v62, "photoUriString":Ljava/lang/String;
    if-nez v62, :cond_f

    const/16 v22, 0x0

    .line 1453
    :goto_4
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DBG:Z

    if-eqz v4, :cond_7

    .line 1454
    const-string v4, "CallDetailFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCallDetailsForUri, photoUri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_7
    const/4 v4, 0x4

    move-object/from16 v0, v61

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, v61

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1460
    const/4 v4, 0x2

    move-object/from16 v0, v61

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1461
    const/4 v4, 0x3

    move-object/from16 v0, v61

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1462
    const/4 v4, 0x0

    move-object/from16 v0, v61

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 1463
    .local v58, "personId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v58, v4

    if-lez v4, :cond_8

    .line 1464
    const/4 v4, 0x7

    move-object/from16 v0, v61

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v58

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v21

    .line 1475
    .end local v58    # "personId":J
    .end local v62    # "photoUriString":Ljava/lang/String;
    :cond_8
    :goto_5
    if-eqz v61, :cond_9

    :try_start_3
    invoke-interface/range {v61 .. v61}, Landroid/database/Cursor;->close()V

    .line 1476
    :cond_9
    move-object/from16 v7, v52

    .line 1477
    .restart local v7    # "numberText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1420
    .end local v7    # "numberText":Ljava/lang/CharSequence;
    .end local v52    # "candidateNumberText":Ljava/lang/String;
    .end local v61    # "phonesCursor":Landroid/database/Cursor;
    .restart local v55    # "mIsSpecialNum":Z
    .restart local v56    # "mMatchLen":I
    .restart local v57    # "nLen":I
    :cond_a
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_3

    .line 1427
    .end local v55    # "mIsSpecialNum":Z
    .end local v56    # "mMatchLen":I
    .end local v57    # "nLen":I
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 1428
    invoke-static/range {v30 .. v30}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1429
    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v5, "phone_lookup_with_profile"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "sip"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_3

    .line 1432
    :cond_c
    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v5, "phone_lookup_with_profile"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_3

    .line 1436
    :cond_d
    invoke-static/range {v30 .. v30}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1437
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "sip"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_3

    .line 1440
    :cond_e
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto/16 :goto_3

    .line 1451
    .restart local v52    # "candidateNumberText":Ljava/lang/String;
    .restart local v61    # "phonesCursor":Landroid/database/Cursor;
    .restart local v62    # "photoUriString":Ljava/lang/String;
    :cond_f
    :try_start_4
    invoke-static/range {v62 .. v62}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_4

    .line 1471
    .end local v62    # "photoUriString":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v30

    invoke-static {v0, v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v52

    goto/16 :goto_5

    .line 1475
    :catchall_1
    move-exception v4

    if-eqz v61, :cond_11

    :try_start_5
    invoke-interface/range {v61 .. v61}, Landroid/database/Cursor;->close()V

    .line 1476
    :cond_11
    move-object/from16 v7, v52

    .restart local v7    # "numberText":Ljava/lang/CharSequence;
    throw v4

    .line 1483
    .end local v3    # "phoneUri":Landroid/net/Uri;
    .end local v52    # "candidateNumberText":Ljava/lang/String;
    .end local v61    # "phonesCursor":Landroid/database/Cursor;
    :cond_12
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1484
    new-instance v28, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v34, v0

    const/4 v4, 0x0

    aput v51, v34, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->simnum:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->callOutDuration:J

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->roamingCall:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->iddValue:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v31, v7

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-wide/from16 v35, v13

    move-wide/from16 v37, v15

    move/from16 v39, v17

    move-object/from16 v40, v18

    move/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    move-object/from16 v44, v22

    invoke-direct/range {v28 .. v49}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJLjava/lang/String;Ljava/lang/String;)V

    aput-object v28, v53, v54

    goto/16 :goto_2

    .line 1488
    :cond_13
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, 0x1

    new-array v12, v5, [I

    const/4 v5, 0x0

    aput v51, v12, v5

    move/from16 v5, v29

    move-object/from16 v6, v30

    move-wide/from16 v23, v26

    invoke-direct/range {v4 .. v24}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    aput-object v4, v53, v54
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1498
    .end local v7    # "numberText":Ljava/lang/CharSequence;
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "countryIso":Ljava/lang/String;
    .end local v11    # "geocode":Ljava/lang/String;
    .end local v13    # "date":J
    .end local v15    # "duration":J
    .end local v17    # "logType":I
    .end local v18    # "nameText":Ljava/lang/CharSequence;
    .end local v19    # "numberType":I
    .end local v20    # "numberLabel":Ljava/lang/CharSequence;
    .end local v21    # "contactUri":Landroid/net/Uri;
    .end local v22    # "photoUri":Landroid/net/Uri;
    .end local v26    # "contactId":J
    .end local v29    # "id":I
    .end local v30    # "number":Ljava/lang/String;
    .end local v51    # "callType":I
    :cond_14
    if-eqz v50, :cond_15

    .line 1499
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->close()V

    :cond_15
    return-object v53
.end method

.method private getVoicemailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1511
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1513
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isAvailableChatOn(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2028
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.chaton"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    :goto_0
    return v1

    .line 2030
    :catch_0
    move-exception v0

    .line 2032
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.chatonforcanada"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2034
    :catch_1
    move-exception v1

    move v1, v2

    .line 2038
    goto :goto_0
.end method

.method public static isAvailableChatOnNChatOnV(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2043
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2044
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://com.sec.chaton.provider/myextrainfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "voip"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "voicecall_support"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "videocall_support"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2047
    .local v6, "chatOnv":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2048
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2050
    const-string v1, "ON"

    const-string v2, "voip"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnV:Z

    .line 2053
    const-string v1, "CallDetailFragment"

    const-string v2, "isAvailableChatOnNChatOnV is true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v8

    .line 2064
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "chatOnv":Landroid/database/Cursor;
    :goto_0
    return v1

    .line 2057
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "chatOnv":Landroid/database/Cursor;
    :cond_0
    if-eqz v6, :cond_1

    .line 2058
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v1, v9

    .line 2059
    goto :goto_0

    .line 2061
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "chatOnv":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2062
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "CallDetailFragment"

    const-string v2, "myextrainfo doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnV:Z

    goto :goto_0
.end method

.method public static isBuddyAvailableChatOnNChatOnV(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2069
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2070
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.sec.chaton.provider/buddyextrainfo/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "voip"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "voicecall_support"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "videocall_support"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2073
    .local v6, "chatOnv":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2074
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2076
    const-string v1, "ON"

    const-string v2, "voip"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isBuddyAvailChatOnV:Z

    .line 2079
    const-string v1, "CallDetailFragment"

    const-string v2, "isBuddyAvailableChatOnNChatOnV is true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v8

    .line 2090
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "chatOnv":Landroid/database/Cursor;
    :goto_0
    return v1

    .line 2083
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "chatOnv":Landroid/database/Cursor;
    :cond_0
    if-eqz v6, :cond_1

    .line 2084
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v1, v9

    .line 2085
    goto :goto_0

    .line 2087
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "chatOnv":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2088
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "CallDetailFragment"

    const-string v2, "buddyextrainfo doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isBuddyAvailChatOnV:Z

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;J)V
    .locals 7
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "randomSeed"    # J

    .prologue
    const/4 v3, 0x1

    .line 1507
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    move-object v2, p1

    move v4, v3

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadCallLogDetailPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZJ)V

    .line 1509
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 1842
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1844
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1845
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 1846
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1847
    return-void
.end method

.method private saveViewStatusPreference()V
    .locals 5

    .prologue
    .line 1796
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1797
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1798
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "reject_popup"

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1799
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1800
    return-void
.end method

.method private setFullWindowLayout()V
    .locals 4

    .prologue
    .line 626
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v3, 0x7f090044

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 627
    .local v0, "contactBackground":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 629
    .local v1, "lpContactBackground":Landroid/view/ViewGroup$LayoutParams;
    const-string v2, "CallDetailFragment"

    const-string v3, "setFullWindowLayout"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 635
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    return-void
.end method

.method private setLogsDetailLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 655
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isUsingTwoPanel:Z

    if-eqz v1, :cond_0

    .line 656
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v0

    .line 659
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setMultiWindowLayout(II)V

    .line 664
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setView(Landroid/view/View;)V

    .line 673
    :goto_1
    return-void

    .line 661
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setFullWindowLayout()V

    goto :goto_0

    .line 669
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 676
    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 677
    const v0, 0x7f09006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 678
    const v0, 0x7f09006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    .line 679
    const v0, 0x7f090122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderOverlayView:Landroid/view/View;

    .line 680
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    .line 682
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 689
    :cond_0
    return-void
.end method

.method private showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mNumber"    # Ljava/lang/String;

    .prologue
    .line 1804
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1805
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0401d8

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1807
    .local v0, "discover_notify":Landroid/widget/LinearLayout;
    const v5, 0x7f09042f

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1809
    .local v4, "notify_confirm":Landroid/widget/LinearLayout;
    const v5, 0x7f090430

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1812
    .local v3, "not_show_again":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v5, 0x7f0e0245

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1813
    .local v2, "mPopupString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1815
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContextForDialog:Landroid/content/Context;

    .line 1816
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberForDialog:Ljava/lang/String;

    .line 1818
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$16;

    invoke-direct {v5, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$16;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1824
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e02fd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0348

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0347

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$17;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$17;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1837
    return-void
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 4
    .param p1, "callUris"    # Ljava/lang/String;

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1348
    return-void
.end method


# virtual methods
.method public WindowStatusChanged(Z)V
    .locals 3
    .param p1, "isMaximized"    # Z

    .prologue
    .line 606
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isUsingTwoPanel:Z

    if-eqz v1, :cond_0

    .line 607
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 609
    const-string v1, "CallDetailFragment"

    const-string v2, "WindowStatusChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    if-eqz p1, :cond_2

    .line 615
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setFullWindowLayout()V

    goto :goto_0

    .line 617
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v0

    .line 618
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setMultiWindowLayout(II)V

    goto :goto_0
.end method

.method public changeDetailInfo(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V
    .locals 10
    .param p1, "detailInfoData"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .prologue
    const v9, 0x7f090042

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 692
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 693
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    .line 695
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getCallLogEntryUris(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    .line 697
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 699
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 707
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 708
    .local v0, "detailInfo":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v6, 0x7f090087

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 710
    .local v4, "detailList":Landroid/widget/RelativeLayout;
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 712
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 713
    .local v1, "detailInfoLand":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 714
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v6, 0x7f090089

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 715
    .local v2, "detailInfoLandButton":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 716
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v6, 0x7f090041

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 717
    .local v3, "detailLandList":Landroid/widget/ListView;
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 719
    .end local v0    # "detailInfo":Landroid/widget/RelativeLayout;
    .end local v1    # "detailInfoLand":Landroid/widget/LinearLayout;
    .end local v2    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    .end local v3    # "detailLandList":Landroid/widget/ListView;
    .end local v4    # "detailList":Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->updateData(Ljava/lang/String;)V

    .line 720
    return-void

    .line 703
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public clearDetailInfo()V
    .locals 17

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 724
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    .line 726
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f090042

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 727
    .local v1, "detailInfo":Landroid/widget/RelativeLayout;
    const/4 v15, 0x4

    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 728
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f090087

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 729
    .local v14, "detailList":Landroid/widget/RelativeLayout;
    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f09006e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 731
    .local v2, "detailInfoButton":Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f09006f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 733
    .local v3, "detailInfoButton2":Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f090075

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 736
    .local v4, "detailInfoButton3":Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f09007e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 738
    .local v5, "detailInfoButton4":Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f090083

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 740
    .local v6, "detailInfoButton5":Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 742
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090042

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 743
    .local v7, "detailInfoLand":Landroid/widget/LinearLayout;
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090089

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 745
    .local v8, "detailInfoLandButton":Landroid/widget/LinearLayout;
    const/4 v15, 0x4

    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090041

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 747
    .local v13, "detailLandList":Landroid/widget/ListView;
    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090071

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 749
    .local v9, "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090077

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 752
    .local v10, "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090080

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 754
    .local v11, "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 755
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090085

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 756
    .local v12, "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 757
    return-void
.end method

.method public disableProximitySensor(Z)V
    .locals 1
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 1884
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 1880
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 576
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 577
    const-string v0, "CallDetailFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    .line 579
    const-string v0, "CallDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttach mContext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 596
    const-string v0, "CallDetailFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setLogsDetailLayout()V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->updateData(Ljava/lang/String;)V

    .line 602
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1920
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 1921
    const-string v0, "CallDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========= onCreateContextMenu ======= item.getItemId() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1928
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1924
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->showDeleteConfirmDlg()V

    .line 1925
    const/4 v0, 0x1

    goto :goto_0

    .line 1922
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 481
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 483
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mResources:Landroid/content/res/Resources;

    .line 484
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 490
    new-instance v0, Lcom/android/contacts/ProximitySensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isUsingTwoPanel:Z

    .line 494
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 503
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/16 v8, 0x101

    const/4 v7, 0x1

    .line 1893
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1894
    const-string v3, "CallDetailFragment"

    const-string v4, "========= onCreateContextMenu ========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1897
    .local v1, "nPosition":I
    const-string v3, "CallDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========= onCreateContextMenu ===== nPosition"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 1899
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 1900
    const/4 v0, 0x0

    .line 1901
    .local v0, "mTimeText":Ljava/lang/String;
    const-string v3, "ctc_roaming_timezone"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1904
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-wide v4, v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const-string v6, "Asia/Shanghai"

    invoke-static {v3, v4, v5, v8, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1908
    :goto_0
    const-string v3, "CallDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========= onCreateContextMenu ======= selectedId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget v5, v5, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const v3, 0x7f09009c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1910
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->detailCount:I

    .line 1911
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1912
    const/4 v3, 0x0

    const v4, 0x7f0e02f4

    invoke-interface {p1, v7, v7, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1913
    const-string v3, "CallDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========= onCreateContextMenu ======= detailCount :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->detailCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    sput-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    .line 1915
    return-void

    .line 1907
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-wide v4, v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-static {v3, v4, v5, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 584
    const-string v1, "CallDetailFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 587
    .local v0, "fragmentView":Landroid/view/View;
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    .line 588
    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    .line 590
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1872
    const-string v0, "CallDetailFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1875
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 1754
    const/4 v0, 0x0

    .line 1755
    .local v0, "i":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1792
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 1757
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->onHomeSelected()V

    goto :goto_0

    .line 1762
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1765
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1766
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->uri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 1767
    const-string v3, "EXTRA_CALL_LOG_IDS"

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->ids:[J

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1771
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1769
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1774
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1775
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1777
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1780
    :sswitch_4
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v3, :cond_2

    .line 1781
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 1783
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1786
    :sswitch_5
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1755
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904ca -> :sswitch_1
        0x7f0904cc -> :sswitch_2
        0x7f0904cd -> :sswitch_3
        0x7f0904ce -> :sswitch_4
        0x7f0904cf -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1850
    const-string v0, "CallDetailFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailIsRunning:Z

    .line 1853
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->disableProximitySensor(Z)V

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->clearPendingRequests()V

    .line 1855
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1864
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 507
    const-string v1, "CallDetailFragment"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 509
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailIsRunning:Z

    .line 510
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setLogsDetailLayout()V

    .line 512
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 513
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 516
    const-string v1, "feature_common_multisim_V2 "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "preferredSimCondition":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_voice_call"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 519
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->setCurrentNetwork(Landroid/content/Context;)V

    .line 566
    .end local v0    # "preferredSimCondition":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->updateData(Ljava/lang/String;)V

    .line 571
    :goto_0
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z

    .line 572
    return-void

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->clearDetailInfo()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1867
    const-string v0, "CallDetailFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1869
    return-void
.end method

.method public registerForList(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1888
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1889
    return-void
.end method

.method public setDefaultFocus()V
    .locals 4

    .prologue
    .line 2021
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2022
    .local v1, "convertView":Landroid/view/View;
    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2023
    .local v0, "call_button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 2024
    return-void
.end method

.method public setMultiWindowLayout(II)V
    .locals 5
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 642
    .local v2, "maxHeight":I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 643
    .local v0, "contactBackground":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 645
    .local v1, "lpContactBackground":Landroid/view/ViewGroup$LayoutParams;
    const-string v3, "CallDetailFragment"

    const-string v4, "setMultiWindowLayout"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v3, p2

    div-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    return-void
.end method

.method public showDeleteConfirmDlg()V
    .locals 3

    .prologue
    .line 1932
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e02f4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0345

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0347

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$19;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$19;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02d4

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$18;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$18;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1943
    return-void
.end method
