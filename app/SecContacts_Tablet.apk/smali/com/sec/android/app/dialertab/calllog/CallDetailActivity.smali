.class public Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
.implements Lcom/sec/android/app/contacts/uce/ImsEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ContextMenuIds;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_CLEAR_COVER_STOP:Ljava/lang/String; = "suppressCoverUI"

.field public static final ACTION_MISSED_CALL:Ljava/lang/String; = "com.sec.android.app.dialertab.calllog.MISSED_CALL"

.field static final ADDRESS_COLUMN_INDEX:I = 0x12

.field public static final BLOCKEDLOG_DETAIL:Ljava/lang/String; = "VIP_BlockedLogs_Detail"

.field static final BUSINESS_NAME_COLUMN_INDEX:I = 0xb

.field static final CACHED_CITY_ID_COLUMN_INDEX:I = 0x8

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final CALL_OUT_DURATION_INDEX:I = 0x10

.field static final CALL_TYPE_COLUMN_INDEX:I = 0x4

.field static final CDNIP_NUMBER_COLUMN_INDEX:I = 0xe

.field static final CNAP_NAME_COLUMN_INDEX:I = 0xc

.field static final COLUMN_INDEX_ID:I = 0x0

.field static final COLUMN_INDEX_LABEL:I = 0x3

.field static final COLUMN_INDEX_LOOKUP_KEY:I = 0x7

.field static final COLUMN_INDEX_NAME:I = 0x1

.field static final COLUMN_INDEX_NORMALIZED_NUMBER:I = 0x5

.field static final COLUMN_INDEX_NUMBER:I = 0x4

.field static final COLUMN_INDEX_PHOTO_URI:I = 0x6

.field static final COLUMN_INDEX_TYPE:I = 0x2

.field static final CONTACT_ID_INDEX:I = 0x11

.field static final COUNTRY_ISO_COLUMN_INDEX:I = 0x5

.field static final DATE_COLUMN_INDEX:I = 0x1

.field private static final DBG:Z = true

.field static final DURATION_COLUMN_INDEX:I = 0x2

.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field private static final EASY_MODE_SWITCH_INTENT:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field public static final EXTRA_CALL_LOG_CONTACT:Ljava/lang/String; = "EXTRA_CALL_LOG_CONTACT"

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field public static final EXTRA_FROM_NOTIFICATION:Ljava/lang/String; = "EXTRA_FROM_NOTIFICATION"

.field public static final EXTRA_IS_ALL_LOGS:Ljava/lang/String; = "EXTRA_IS_ALL_LOGS"

.field static final EXTRA_SIM_ID:Ljava/lang/String; = "simId"

.field public static final EXTRA_VOICEMAIL_START_PLAYBACK:Ljava/lang/String; = "EXTRA_VOICEMAIL_START_PLAYBACK"

.field public static final EXTRA_VOICEMAIL_URI:Ljava/lang/String; = "EXTRA_VOICEMAIL_URI"

.field public static final EXTRA_VVM_ID:Ljava/lang/String; = "EXTRA_VVM_ID"

.field static final FIRST_NAME_COLUMN_INDEX:I = 0x9

.field static final GEOCODED_LOCATION_COLUMN_INDEX:I = 0x6

.field private static final HAS_CONTENT_PROJECTION:[Ljava/lang/String;

.field static final ID_COLUMN_INDEX:I = 0x0

.field private static final IS_CHANGING_CONFIGURATION:Ljava/lang/String; = "isChangingOrientation"

.field static final LAST_NAME_COLUMN_INDEX:I = 0xa

.field static final LOGTYPE_COLUMN_INDEX:I = 0x7

.field public static final LOG_PROJECTION:[Ljava/lang/String;

.field public static final MOTION_DIALOG_PERF:Ljava/lang/String; = "MotionDialogOnOff"

.field static final NUMBER_COLUMN_INDEX:I = 0x3

.field private static final NUMBER_OF_THREADS_IN_POOL:I = 0x2

.field public static final NUM_LGT_ROAMING_CUSTOMER_CENTER:Ljava/lang/String; = "+82234167010"

.field public static final NUM_MOFAT_CALL_CENTER:Ljava/lang/String; = "+82232100404"

.field public static final NUM_T_ROAMING_CUSTOMER_CENTER:Ljava/lang/String; = "+82263439000"

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "logs_directcall"

.field private static final PREFERRED_SIM_ASK_ALWAYS:I = 0x1

.field private static final PREFERRED_SIM_CURRENT_NETWORK:I = 0x0

.field private static final PREFERRED_SIM_SIM1:I = 0x2

.field private static final PREFERRED_SIM_SIM2:I = 0x3

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final PROPERTY_IMS_VOLTE_SUPPORTED:Ljava/lang/String; = "persist.sys.ims.volte_supported"

.field private static final PROXIMITY_BLANK_DELAY_MILLIS:J = 0x64L

.field private static final PROXIMITY_UNBLANK_DELAY_MILLIS:J = 0x1f4L

.field static final REAL_PHONE_NUMBER_INDEX:I = 0x18

.field static final REMIND_ME_LATER_TIME:I = 0x16

.field static final SDN_ALPHA_ID_INDEX:I = 0x17

.field static final SERVICE_TYPE_COLUMN_INDEX:I = 0xf

.field static final SHAREDFILE_COLUMN_INDEX:I = 0x13

.field static final SIMNUM_COLUMN_INDEX:I = 0xd

.field static final SIM_CARD_ID_COLUMN_INDEX:I = 0x15

.field private static final TAG:Ljava/lang/String; = "CallDetailActivity"

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I = 0x0

.field static final VOICEMAIL_MSGID_COLUMN_INDEX:I = 0x14

.field public static bVIP_BLog_Detail:Z

.field private static backFromOthers:Z

.field static final buildcarrier:Ljava/lang/String;

.field public static flexibleHeight:I

.field public static iconIndexCDMA:I

.field public static iconIndexGSM:I

.field private static imsCallLogUtil:Lcom/sec/android/app/contacts/uce/IMSinterface;

.field private static isDualSim:Z

.field public static isEasyMode:Z

.field private static isSavedORLogtypeVideo:Z

.field public static isSupportMultiWindow:Z

.field private static isVoLTEEnabled:Z

.field private static isVtCallButtonenabled:Z

.field private static mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

.field private static mEvtHandler:Lcom/sec/android/app/contacts/uce/ImsDialerEventHandler;

.field private static mLogNumber:I

.field private static mVideoCallButtonView:Landroid/view/View;

.field public static mViewHandler:Landroid/os/Handler;

.field private static voice_call_separator:Landroid/view/View;


# instance fields
.field private DuosCallSim1BtnImg:I

.field private final LOGSLIST_PREF_NAME:Ljava/lang/String;

.field private final PREF_KEY_REJECT_POPUP:Ljava/lang/String;

.field private VVM_bundle:Landroid/os/Bundle;

.field private allLogs_button:Landroid/view/View;

.field private allLogs_button_container:Landroid/view/View;

.field private bCDMANetwork:Z

.field private bCheckedBefore:Z

.field private bConfigurationChanged:Z

.field private bCoverOpen:Z

.field private bGSMNetwork:Z

.field bName:Ljava/lang/String;

.field call_button:Landroid/widget/Button;

.field private canPlaceCallsTo:Z

.field private checkVolteVTicon:Z

.field city_id:Ljava/lang/String;

.field private detailView:Landroid/view/View;

.field fName:Ljava/lang/String;

.field historyList:Landroid/widget/ListView;

.field ids:[J

.field idsStr:Ljava/lang/String;

.field private isUsingTwoPanel:Z

.field public keyPressed:Z

.field private korVideoCallBtnImg:I

.field lName:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

.field private mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallDetail:Landroid/view/View;

.field private mCallDetailBase:Landroid/view/View;

.field private mCallDetailLand:Landroid/view/View;

.field private mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

.field private mChatonId:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCnapName:Ljava/lang/String;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mContextForDialog:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDetailLocation:Landroid/widget/TextView;

.field private mDisplayAllLogs:Z

.field private mDurationTime:Landroid/widget/TextView;

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableVIPApp:Z

.field private mHasEditNumberBeforeCall:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

.field private mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

.field mInflater:Landroid/view/LayoutInflater;

.field private mInitCoverOpenState:Z

.field private mInitDialogDismissState:Z

.field private mIsChangingConfiguration:Z

.field private mIsPostExcuteDone:Z

.field private mLocationTextView:Landroid/widget/TextView;

.field private mLocationView:Landroid/view/View;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

.field private mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

.field private mMotionDialog:Z

.field private mMotionDialogOff:Z

.field mMotionTiltDialog:Landroid/app/AlertDialog;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberForDialog:Ljava/lang/String;

.field private mNumberTextView:Landroid/widget/TextView;

.field private mOldOrientation:I

.field private mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneContactObserver:Landroid/database/ContentObserver;

.field private mPhoneNumberActionMode:Landroid/view/ActionMode;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

.field private mPhoneNumberToCopy:Ljava/lang/CharSequence;

.field private mPlaybackLayout:Landroid/view/View;

.field private mPlaybackLayout2:Landroid/view/View;

.field private mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

.field private mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field private mQuanternaryActionListener:Landroid/view/View$OnClickListener;

.field private mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

.field mRejectListConfirmDialog:Landroid/app/AlertDialog;

.field mResources:Landroid/content/res/Resources;

.field private mResumeOnPortrait:Z

.field private mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSim2CallActionListener:Landroid/view/View$OnClickListener;

.field mSupportFolderType:Z

.field private mTertiaryActionListener:Landroid/view/View$OnClickListener;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private nameText:Ljava/lang/String;

.field private numberText:Ljava/lang/String;

.field private strCityInfo:Ljava/lang/String;

.field tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

.field private uri:Landroid/net/Uri;

.field private uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEvtHandler:Lcom/sec/android/app/contacts/uce/ImsDialerEventHandler;

    .line 245
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVtCallButtonenabled:Z

    .line 246
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isSavedORLogtypeVideo:Z

    .line 262
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVoLTEEnabled:Z

    .line 272
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    .line 283
    sput v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexCDMA:I

    .line 284
    sput v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexGSM:I

    .line 335
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    .line 357
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "has_content"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 370
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isSupportMultiWindow:Z

    .line 401
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bVIP_BLog_Detail:Z

    .line 422
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .line 476
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->buildcarrier:Ljava/lang/String;

    .line 549
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cityid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fname"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lname"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bname"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "simnum"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cdnip_number"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "service_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "call_out_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "remind_me_later_set"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sdn_alpha_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "real_phone_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 578
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "cityid"

    aput-object v1, v0, v5

    const-string v1, "cnap_name"

    aput-object v1, v0, v6

    const-string v1, "fname"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lname"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->LOG_PROJECTION:[Ljava/lang/String;

    .line 625
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

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

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 5062
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$26;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$26;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mViewHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 225
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    .line 234
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    .line 236
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 238
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z

    .line 253
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionDialog:Z

    .line 254
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 255
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRejectListConfirmDialog:Landroid/app/AlertDialog;

    .line 267
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    .line 278
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCoverOpen:Z

    .line 279
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInitCoverOpenState:Z

    .line 280
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInitDialogDismissState:Z

    .line 282
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    .line 308
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z

    .line 316
    const-string v0, "logslist_pref"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->LOGSLIST_PREF_NAME:Ljava/lang/String;

    .line 317
    const-string v0, "reject_popup"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PREF_KEY_REJECT_POPUP:Ljava/lang/String;

    .line 318
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContextForDialog:Landroid/content/Context;

    .line 320
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    .line 344
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 345
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    .line 347
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    .line 348
    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mOldOrientation:I

    .line 349
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    .line 352
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    .line 353
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;

    .line 354
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button_container:Landroid/view/View;

    .line 391
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    .line 392
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    .line 394
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    .line 395
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    .line 396
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    .line 397
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->city_id:Ljava/lang/String;

    .line 411
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    .line 425
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    .line 429
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    .line 430
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    .line 440
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    .line 444
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCDMANetwork:Z

    .line 445
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bGSMNetwork:Z

    .line 471
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    .line 473
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsPostExcuteDone:Z

    .line 475
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSupportFolderType:Z

    .line 494
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mChatonId:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->numberText:Ljava/lang/String;

    .line 650
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 704
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 712
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 720
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 761
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    .line 782
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    .line 792
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    .line 809
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

    .line 863
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneContactObserver:Landroid/database/ContentObserver;

    .line 4975
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 222
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isSavedORLogtypeVideo:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/sec/android/app/contacts/uce/IMSinterface;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->imsCallLogUtil:Lcom/sec/android/app/contacts/uce/IMSinterface;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fillLayout(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$3100()Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDisplayAllLogs:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDisplayAllLogs:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 222
    sput p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mLogNumber:I

    return p0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object p1
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 222
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .param p2, "x2"    # I

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/net/Uri;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # J

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$4602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsPostExcuteDone:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button_container:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->displayAllLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->saveViewStatusPreference()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContextForDialog:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberForDialog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$5600(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 222
    invoke-static {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100()Landroid/view/View;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVideoCallButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 222
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVtCallButtonenabled:Z

    return p0
.end method

.method static synthetic access$6300()Landroid/view/View;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->voice_call_separator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    return-object v0
.end method

.method private changeButtonsOrder(Landroid/view/View;)V
    .locals 7
    .param p1, "detail"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 845
    const v5, 0x7f090050

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 846
    .local v0, "callAndSmsContainer":Landroid/widget/LinearLayout;
    if-nez v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 849
    .local v1, "firstLine":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 850
    const v5, 0x7f090053

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 851
    .local v4, "vcall":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    .line 852
    const v5, 0x7f09005a

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 854
    .local v2, "ipCallIndex":I
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 855
    const v5, 0x7f09005c

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 856
    .local v3, "separator":Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 857
    invoke-virtual {v4, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 858
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 859
    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static changelayout()V
    .locals 2

    .prologue
    .line 5073
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->imsCallLogUtil:Lcom/sec/android/app/contacts/uce/IMSinterface;

    if-nez v1, :cond_0

    .line 5078
    .local v0, "viewMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 5076
    .end local v0    # "viewMsg":Landroid/os/Message;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5077
    .restart local v0    # "viewMsg":Landroid/os/Message;
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 4639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 4640
    return-void
.end method

.method private configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
    .locals 33
    .param p1, "detailForActionbar"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .param p2, "listLength"    # I

    .prologue
    .line 3705
    const-string v29, "CallDetailActivity"

    const-string v30, "configureActionBar"

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    .line 3707
    .local v5, "actionBar":Landroid/app/ActionBar;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    .line 3708
    .local v13, "isVoicemailNumber":Z
    const-string v29, "feature_chn_duos_gsm_gsm"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 3709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "phone2"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v20

    .line 3711
    .local v20, "mVoiceMailNumberSim2":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_1d

    :cond_0
    const/4 v13, 0x1

    .line 3715
    .end local v20    # "mVoiceMailNumberSim2":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v5, :cond_1c

    .line 3716
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 3717
    .local v18, "mName":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 3718
    .local v19, "mSubTitle":Ljava/lang/StringBuilder;
    const/4 v12, 0x1

    .line 3720
    .local v12, "isEmptyName":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    .line 3723
    .local v28, "tempNumber":Ljava/lang/CharSequence;
    const-string v29, "feature_kor"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    if-eqz v28, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v29, v0

    const/16 v30, 0xc8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v29, v0

    const/16 v30, 0x12c

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    move-object/from16 v30, v0

    const-string v30, "-1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 3726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    move-object/from16 v29, v0

    const-string v28, "-5"

    .line 3729
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 3733
    .local v9, "displayNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 3734
    .local v14, "layoutInflater":Landroid/view/LayoutInflater;
    const v29, 0x7f040046

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 3736
    .local v6, "actionBarCustomView":Landroid/view/View;
    const v29, 0x7f09010a

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 3737
    .local v22, "nameText":Landroid/widget/TextView;
    const v29, 0x7f09010b

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 3738
    .local v24, "numberText":Landroid/widget/TextView;
    const v29, 0x7f090139

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 3742
    .local v8, "cityIdText":Landroid/widget/TextView;
    const/16 v29, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3743
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3744
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3746
    const v29, 0x7f090137

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 3747
    .local v26, "previousActivity":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 3750
    const-string v29, "feature_cnam"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_4

    const-string v29, "feature_kor"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 3752
    :cond_4
    new-instance v29, Landroid/app/ActionBar$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v32, 0x13

    invoke-direct/range {v29 .. v32}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 3761
    const/16 v29, 0x10

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 3762
    new-instance v29, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$12;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$12;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3781
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_20

    .line 3782
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 3783
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3785
    const-string v29, "feature_cnam"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 3786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_5

    .line 3787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3788
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3791
    :cond_5
    if-eqz v13, :cond_6

    .line 3792
    const-string v29, "CallDetailActivity"

    const-string v30, "configureActionBar, display voicemail information"

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_6

    .line 3794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3795
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3811
    :cond_6
    :goto_2
    const/4 v12, 0x0

    .line 3832
    :cond_7
    :goto_3
    const/16 v29, 0x1

    move/from16 v0, p2

    move/from16 v1, v29

    if-le v0, v1, :cond_9

    .line 3833
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    .line 3834
    .local v15, "locale":Ljava/lang/String;
    const-string v29, "ar"

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    const-string v29, "fa"

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    const-string v29, "ur"

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    const-string v29, "iw"

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_22

    .line 3835
    :cond_8
    const-string v29, " \u200f("

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3836
    const-string v29, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3837
    const/16 v29, 0x29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3845
    .end local v15    # "locale":Ljava/lang/String;
    :cond_9
    :goto_4
    const-string v29, "phone_number_locator"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 3846
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_a

    .line 3847
    const-string v29, "  |  "

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3852
    :cond_a
    const-string v29, "feature_cnam"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_23

    .line 3853
    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3854
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_b

    .line 3855
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3858
    :cond_b
    if-eqz v13, :cond_c

    .line 3859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e009b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3871
    :cond_c
    :goto_5
    if-eqz v12, :cond_25

    .line 3872
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    if-nez v29, :cond_11

    .line 3873
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    .line 3874
    .local v11, "isEmergencyNumber":Z
    const-string v29, "feature_chn_duos"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 3875
    const/16 v27, 0x0

    .line 3876
    .local v27, "simSlotID":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 3877
    const/16 v27, 0x1

    .line 3879
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v11

    .line 3882
    .end local v27    # "simSlotID":I
    :cond_e
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    const-string v30, "114"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 3884
    const/4 v11, 0x0

    .line 3887
    :cond_f
    const-string v29, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    const-string v30, "120"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 3889
    const/4 v11, 0x1

    .line 3892
    :cond_10
    if-eqz v11, :cond_11

    .line 3893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e0327

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3894
    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3895
    const-string v29, "feature_chn"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e0327

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    .line 3962
    .end local v11    # "isEmergencyNumber":Z
    :cond_11
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 3963
    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3966
    :cond_12
    const-string v29, "feature_spr"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    sget-object v29, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    if-eqz v29, :cond_13

    .line 3967
    sget-object v30, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialADCCheckNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3968
    .local v16, "mADCService":Ljava/lang/String;
    if-eqz v16, :cond_13

    .line 3969
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3970
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3971
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3972
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3976
    .end local v16    # "mADCService":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_14

    .line 3977
    const/16 v29, 0x1

    const/high16 v30, 0x41700000

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3980
    :cond_14
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3981
    .local v10, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3983
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v17, v0

    .line 3985
    .local v17, "mDpiSize":I
    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_15

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_15

    .line 3986
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3987
    .local v21, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v29, -0x3fc00000

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3988
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3990
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .end local v21    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v21, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3991
    .restart local v21    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v29, -0x3fc00000

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3992
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3994
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .end local v21    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v21, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3995
    .restart local v21    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v29, -0x3f600000

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3996
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3998
    const-string v29, "CallDetailActivity"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "configureActionBar, dm.density : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", mlp.topMargin : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    .line 4001
    iget v0, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v29, v0

    const/16 v30, 0xf0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2e

    const/16 v29, 0x140

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_2e

    .line 4002
    const/16 v29, 0x1

    const/high16 v30, 0x41300000

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4003
    const/16 v29, 0x1

    const/high16 v30, 0x41300000

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4004
    const/16 v29, 0x1

    const/high16 v30, 0x41100000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4014
    .end local v21    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_15
    :goto_7
    const-string v29, "feature_cnam"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/16 v29, 0x8

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    const/16 v29, 0x8

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getVisibility()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_16

    .line 4017
    iget v0, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v29, v0

    const/16 v30, 0xf0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2f

    const/16 v29, 0x140

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_2f

    .line 4018
    const/16 v29, 0x1

    const/high16 v30, 0x41800000

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4025
    :cond_16
    :goto_8
    const-string v29, "feature_kor"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 4027
    const-string v7, ""

    .line 4029
    .local v7, "callService":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v29, v0

    const/16 v30, 0x64

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v29, v0

    const/16 v30, 0x15

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    .line 4031
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0e0379

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4043
    :cond_17
    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    if-nez v29, :cond_3a

    .line 4044
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v29, v0

    const/16 v30, 0x19

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v29, v0

    const/16 v30, 0x12c

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v29, v0

    const/16 v30, 0xc8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_34

    .line 4047
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e0495

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4078
    :cond_19
    :goto_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v29, v0

    const/16 v30, 0x28

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3b

    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3b

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e0496

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4081
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4088
    :cond_1a
    :goto_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3d

    .line 4089
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4090
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4092
    const/16 v23, 0x11

    .line 4093
    .local v23, "nameTextSize":I
    const/16 v25, 0xd

    .line 4095
    .local v25, "numberTextSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3c

    .line 4096
    const/16 v23, 0x11

    .line 4101
    :goto_c
    const/16 v29, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4102
    const/16 v29, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4103
    const-string v29, "#FFFFFF"

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4104
    const-string v29, "#bacbd8"

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4112
    .end local v25    # "numberTextSize":I
    :goto_d
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4113
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4114
    sget-object v29, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4116
    const/16 v29, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4117
    const/16 v29, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4118
    sget-object v29, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4122
    .end local v7    # "callService":Ljava/lang/String;
    .end local v23    # "nameTextSize":I
    :cond_1b
    const-string v29, "feature_folder_type"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 4123
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setFocusDetailView(Landroid/view/View;)V

    .line 4127
    .end local v6    # "actionBarCustomView":Landroid/view/View;
    .end local v8    # "cityIdText":Landroid/widget/TextView;
    .end local v9    # "displayNumber":Ljava/lang/CharSequence;
    .end local v10    # "dm":Landroid/util/DisplayMetrics;
    .end local v12    # "isEmptyName":Z
    .end local v14    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v17    # "mDpiSize":I
    .end local v18    # "mName":Ljava/lang/StringBuilder;
    .end local v19    # "mSubTitle":Ljava/lang/StringBuilder;
    .end local v22    # "nameText":Landroid/widget/TextView;
    .end local v24    # "numberText":Landroid/widget/TextView;
    .end local v26    # "previousActivity":Landroid/view/View;
    .end local v28    # "tempNumber":Ljava/lang/CharSequence;
    :cond_1c
    return-void

    .line 3711
    .restart local v20    # "mVoiceMailNumberSim2":Ljava/lang/String;
    :cond_1d
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3775
    .end local v20    # "mVoiceMailNumberSim2":Ljava/lang/String;
    .restart local v6    # "actionBarCustomView":Landroid/view/View;
    .restart local v8    # "cityIdText":Landroid/widget/TextView;
    .restart local v9    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v12    # "isEmptyName":Z
    .restart local v14    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v18    # "mName":Ljava/lang/StringBuilder;
    .restart local v19    # "mSubTitle":Ljava/lang/StringBuilder;
    .restart local v22    # "nameText":Landroid/widget/TextView;
    .restart local v24    # "numberText":Landroid/widget/TextView;
    .restart local v26    # "previousActivity":Landroid/view/View;
    .restart local v28    # "tempNumber":Ljava/lang/CharSequence;
    :cond_1e
    const/16 v29, 0xc

    const/16 v30, 0xe

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_1

    .line 3802
    :cond_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3804
    const-string v29, "feature_cnam"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_6

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3807
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3814
    :cond_20
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3816
    const-string v29, "feature_cnap"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_21

    .line 3817
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    if-nez v29, :cond_7

    .line 3818
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3819
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 3823
    :cond_21
    const-string v29, "feature_cnam"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 3824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_7

    .line 3825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3826
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 3839
    .restart local v15    # "locale":Ljava/lang/String;
    :cond_22
    const-string v29, " ("

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3840
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3841
    const/16 v29, 0x29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 3862
    .end local v15    # "locale":Ljava/lang/String;
    :cond_23
    if-eqz v13, :cond_24

    .line 3863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e009b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3864
    const-string v29, "feature_ctc"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 3865
    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 3868
    :cond_24
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 3902
    :cond_25
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    move-object/from16 v30, v0

    const-string v30, "-1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_26

    .line 3903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e009c

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 3906
    :cond_26
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    :cond_27
    if-nez v13, :cond_11

    .line 3909
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3913
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v29

    if-lez v29, :cond_2b

    const-string v29, "vnd.sec.contact.sim"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->accountType:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2b

    .line 3915
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2a

    .line 3916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_28

    const-string v29, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_28

    .line 3918
    const-string v29, " / "

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3943
    :cond_28
    :goto_e
    const-string v29, "phone_number_locator"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_29

    .line 3944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_29

    .line 3945
    const-string v29, "  |  "

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3950
    :cond_29
    const-string v29, "feature_cnam"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2d

    .line 3951
    if-eqz v9, :cond_11

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v29

    if-lez v29, :cond_11

    .line 3952
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3953
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 3922
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e03d9

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_28

    const-string v29, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f0e03d9

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_28

    .line 3924
    const-string v29, " / "

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e03d9

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 3930
    :cond_2b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v29, v0

    if-nez v29, :cond_2c

    .line 3931
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    if-eqz v29, :cond_28

    const-string v29, ""

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_28

    .line 3932
    const-string v29, " / "

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3933
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 3936
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_28

    const-string v29, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_28

    .line 3938
    const-string v29, " / "

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 3957
    :cond_2d
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 4007
    .restart local v10    # "dm":Landroid/util/DisplayMetrics;
    .restart local v17    # "mDpiSize":I
    .restart local v21    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2e
    const/16 v29, 0x1

    const/high16 v30, 0x41400000

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4008
    const/16 v29, 0x1

    const/high16 v30, 0x41400000

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4009
    const/16 v29, 0x1

    const/high16 v30, 0x41200000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_7

    .line 4021
    .end local v21    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2f
    const/16 v29, 0x1

    const/high16 v30, 0x41980000

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_8

    .line 4032
    .restart local v7    # "callService":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v29, v0

    const/16 v30, 0x64

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_31

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v29, v0

    const/16 v30, 0x3e8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_32

    :cond_31
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v29, v0

    const/16 v30, 0x16

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_32

    .line 4035
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e03a2

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_9

    .line 4036
    :cond_32
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v29, v0

    const/16 v30, 0x1f4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v29, v0

    const/16 v30, 0x15

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_33

    .line 4038
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e03a3

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_9

    .line 4039
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_17

    .line 4040
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_9

    .line 4048
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "+82263439000"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_35

    .line 4049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e03a4

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4050
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 4051
    :cond_35
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "+82232100404"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_37

    .line 4052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e03a5

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4054
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_36

    .line 4055
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "+82"

    const-string v31, "0"

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 4057
    :cond_36
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 4060
    :cond_37
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_39

    .line 4061
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "+82234167010"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_38

    .line 4062
    if-eqz v18, :cond_19

    .line 4063
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "+82"

    const-string v31, "0"

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 4065
    :cond_38
    if-eqz v18, :cond_19

    .line 4066
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 4069
    :cond_39
    if-eqz v18, :cond_19

    .line 4070
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 4074
    :cond_3a
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4075
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 4082
    :cond_3b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v29, v0

    const/16 v30, 0x29

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 4084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e0494

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4085
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 4098
    .restart local v23    # "nameTextSize":I
    .restart local v25    # "numberTextSize":I
    :cond_3c
    const/16 v23, 0x13

    goto/16 :goto_c

    .line 4107
    .end local v23    # "nameTextSize":I
    .end local v25    # "numberTextSize":I
    :cond_3d
    const/16 v23, 0x13

    .line 4108
    .restart local v23    # "nameTextSize":I
    const/16 v29, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4109
    const-string v29, "#FFFFFF"

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_d
.end method

.method private configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;IZ)V
    .locals 35
    .param p1, "entry"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
    .param p2, "logtype"    # I
    .param p3, "canPlaceCallsTo"    # Z

    .prologue
    .line 2866
    const/16 v18, 0x0

    .line 2867
    .local v18, "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 2868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f090050

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 2880
    :goto_0
    const v31, 0x7f090055

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2881
    .local v8, "call_button":Landroid/widget/Button;
    const v31, 0x7f090056

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    .line 2882
    .local v26, "sms_button":Landroid/widget/Button;
    const v31, 0x7f09005b

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    .line 2883
    .local v28, "vcall_button":Landroid/widget/Button;
    const v31, 0x7f090060

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 2884
    .local v14, "chatonSms_button":Landroid/widget/Button;
    const v31, 0x7f090064

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 2885
    .local v13, "chatonCall_button":Landroid/widget/Button;
    const v31, 0x7f090065

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 2887
    .local v16, "chatonVT_button":Landroid/widget/Button;
    const v31, 0x7f09005f

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 2888
    .local v11, "chatonButtonView":Landroid/widget/LinearLayout;
    const v31, 0x7f09004f

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 2889
    .local v7, "callContainer":Landroid/widget/LinearLayout;
    const v31, 0x7f090062

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 2890
    .local v12, "chatonCall":Landroid/widget/LinearLayout;
    const v31, 0x7f090061

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 2891
    .local v15, "chatonVT":Landroid/widget/LinearLayout;
    const v31, 0x7f09004e

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2892
    .local v9, "callbuttonView":Landroid/view/View;
    const v31, 0x7f09005e

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 2893
    .local v22, "line_seperator":Landroid/view/View;
    const v31, 0x7f090063

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 2898
    .local v21, "line_chatonCall":Landroid/view/View;
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVoLTEEnabled:Z

    if-eqz v31, :cond_c

    .line 2899
    const/16 v31, 0x0

    const v32, 0x7f0202a3

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2926
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2928
    const-string v31, "call_message"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_0

    const-string v31, "instant_lettering"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 2930
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2931
    const v31, 0x7f090055

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object/from16 v32, v0

    move/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v8, v0, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 2932
    const-string v31, "feature_kt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2934
    const v31, 0x7f090053

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 2938
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2941
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2943
    const-string v31, "feature_remove_vt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_13

    const-string v31, "feature_kor"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_13

    const-string v31, "feature_volte_support_videocall"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_13

    const-string v31, "feature_vzw"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_13

    .line 2947
    const v31, 0x7f090053

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 2948
    .local v27, "vcallButtonView":Landroid/widget/LinearLayout;
    const/16 v31, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2949
    const-string v31, "feature_chn"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_2

    const-string v31, "feature_dcm"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 2950
    :cond_2
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_e

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 2951
    const/16 v31, 0x0

    const v32, 0x7f02053e

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2952
    const/16 v31, 0x0

    const v32, 0x7f020548

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2953
    const/16 v31, 0x0

    const v32, 0x7f020534

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3122
    .end local v27    # "vcallButtonView":Landroid/widget/LinearLayout;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 3123
    const v31, 0x7f09005d

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 3124
    .local v25, "smsButtonView":Landroid/widget/LinearLayout;
    const/16 v31, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3128
    .end local v25    # "smsButtonView":Landroid/widget/LinearLayout;
    :cond_3
    const-string v31, "feature_kor"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 3129
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVoLTEEnabled:Z

    if-eqz v31, :cond_4

    .line 3130
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_2d

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2d

    .line 3131
    const-string v31, "feature_skt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2a

    .line 3132
    const/16 v31, 0x0

    const v32, 0x7f0205cc

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3153
    :cond_4
    :goto_3
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_34

    .line 3154
    const-string v31, "feature_skt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_31

    .line 3155
    const v31, 0x7f0205cf

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    .line 3174
    :goto_4
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3177
    :cond_5
    const-string v31, "ip_call"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3a

    const-string v31, "feature_chn_duos"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3a

    .line 3178
    const v31, 0x7f090057

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 3179
    .local v24, "sim2_call_detail_button":Landroid/widget/LinearLayout;
    const v31, 0x7f090058

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 3180
    .local v23, "sim2_call_button":Landroid/widget/Button;
    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3182
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3186
    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const/16 v33, 0x1

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getDuosCallSimIcon(Landroid/content/Context;IZ)I

    move-result v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3188
    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const/16 v33, 0x2

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getDuosCallSimIcon(Landroid/content/Context;IZ)I

    move-result v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3190
    const v31, 0x7f09005a

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 3191
    .local v20, "ipcall_detail_button":Landroid/widget/LinearLayout;
    const v31, 0x7f090059

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 3192
    .local v19, "ipcall_button":Landroid/widget/Button;
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_38

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_38

    .line 3193
    const/16 v31, 0x0

    const v32, 0x7f02053d

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3197
    :goto_5
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3199
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3201
    const-string v31, "feature_remove_vt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_39

    .line 3203
    const v31, 0x7f090056

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3204
    const v31, 0x7f090058

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3205
    const v31, 0x7f090055

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3206
    const v31, 0x7f090059

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3207
    const v31, 0x7f090058

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3208
    const v31, 0x7f090056

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3209
    const v31, 0x7f090059

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3210
    const v31, 0x7f090055

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3227
    :goto_6
    const-string v31, "feature_chn_duos"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 3228
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setCallButtonEnable(Landroid/view/View;)V

    .line 3311
    .end local v19    # "ipcall_button":Landroid/widget/Button;
    .end local v20    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    .end local v23    # "sim2_call_button":Landroid/widget/Button;
    .end local v24    # "sim2_call_detail_button":Landroid/widget/LinearLayout;
    :cond_6
    :goto_7
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 3313
    .local v5, "cC":Landroid/view/ViewGroup$LayoutParams;
    sget v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    if-nez v31, :cond_7

    .line 3314
    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    sput v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    .line 3370
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3d

    if-eqz v9, :cond_3d

    .line 3372
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3373
    .local v6, "cV":Landroid/view/ViewGroup$LayoutParams;
    sget v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    move/from16 v0, v31

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, v31

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3374
    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3375
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3385
    .end local v6    # "cV":Landroid/view/ViewGroup$LayoutParams;
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mChatonId:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    .line 3387
    const/16 v17, 0x0

    .line 3389
    .local v17, "chatonView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f090081

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 3390
    const/16 v31, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3391
    const v31, 0x7f090082

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 3392
    .local v10, "chatOnMsg":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3393
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3396
    .end local v10    # "chatOnMsg":Landroid/widget/Button;
    .end local v17    # "chatonView":Landroid/view/View;
    :cond_8
    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3397
    return-void

    .line 2871
    .end local v5    # "cC":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "callContainer":Landroid/widget/LinearLayout;
    .end local v8    # "call_button":Landroid/widget/Button;
    .end local v9    # "callbuttonView":Landroid/view/View;
    .end local v11    # "chatonButtonView":Landroid/widget/LinearLayout;
    .end local v12    # "chatonCall":Landroid/widget/LinearLayout;
    .end local v13    # "chatonCall_button":Landroid/widget/Button;
    .end local v14    # "chatonSms_button":Landroid/widget/Button;
    .end local v15    # "chatonVT":Landroid/widget/LinearLayout;
    .end local v16    # "chatonVT_button":Landroid/widget/Button;
    .end local v21    # "line_chatonCall":Landroid/view/View;
    .end local v22    # "line_seperator":Landroid/view/View;
    .end local v26    # "sms_button":Landroid/widget/Button;
    .end local v28    # "vcall_button":Landroid/widget/Button;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f090050

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_0

    .line 2874
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    move-object/from16 v31, v0

    if-nez v31, :cond_b

    .line 2875
    const v31, 0x7f0900a5

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    .line 2876
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, 0x7f090050

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_0

    .line 2901
    .restart local v7    # "callContainer":Landroid/widget/LinearLayout;
    .restart local v8    # "call_button":Landroid/widget/Button;
    .restart local v9    # "callbuttonView":Landroid/view/View;
    .restart local v11    # "chatonButtonView":Landroid/widget/LinearLayout;
    .restart local v12    # "chatonCall":Landroid/widget/LinearLayout;
    .restart local v13    # "chatonCall_button":Landroid/widget/Button;
    .restart local v14    # "chatonSms_button":Landroid/widget/Button;
    .restart local v15    # "chatonVT":Landroid/widget/LinearLayout;
    .restart local v16    # "chatonVT_button":Landroid/widget/Button;
    .restart local v21    # "line_chatonCall":Landroid/view/View;
    .restart local v22    # "line_seperator":Landroid/view/View;
    .restart local v26    # "sms_button":Landroid/widget/Button;
    .restart local v28    # "vcall_button":Landroid/widget/Button;
    :cond_c
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_d

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 2902
    const/16 v31, 0x0

    const v32, 0x7f020534

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 2904
    :cond_d
    const/16 v31, 0x0

    const v32, 0x7f0202a0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 2955
    .restart local v27    # "vcallButtonView":Landroid/widget/LinearLayout;
    :cond_e
    const/16 v31, 0x0

    const v32, 0x7f0202b2

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2956
    const/16 v31, 0x0

    const v32, 0x7f0202bf

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2957
    const/16 v31, 0x0

    const v32, 0x7f0202a0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 2960
    :cond_f
    const-string v31, "feature_usa_message_icon"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 2961
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_10

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 2962
    const/16 v31, 0x0

    const v32, 0x7f020533

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2963
    const/16 v31, 0x0

    const v32, 0x7f020548

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2964
    const/16 v31, 0x0

    const v32, 0x7f020534

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 2966
    :cond_10
    const/16 v31, 0x0

    const v32, 0x7f0202b3

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2967
    const/16 v31, 0x0

    const v32, 0x7f0202bf

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2968
    const/16 v31, 0x0

    const v32, 0x7f0202a0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 2971
    :cond_11
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_12

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 2972
    const/16 v31, 0x0

    const v32, 0x7f02053e

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2973
    const/16 v31, 0x0

    const v32, 0x7f020548

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2974
    const/16 v31, 0x0

    const v32, 0x7f020534

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 2976
    :cond_12
    const/16 v31, 0x0

    const v32, 0x7f0202b2

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2977
    const/16 v31, 0x0

    const v32, 0x7f0202bf

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2978
    const/16 v31, 0x0

    const v32, 0x7f0202a0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 2982
    .end local v27    # "vcallButtonView":Landroid/widget/LinearLayout;
    :cond_13
    const-string v31, "feature_remove_vt_dialpad"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_15

    const-string v31, "feature_vzw"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_15

    .line 2984
    const v31, 0x7f090053

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 2985
    .restart local v27    # "vcallButtonView":Landroid/widget/LinearLayout;
    const/16 v31, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2987
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_14

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 2988
    const/16 v31, 0x0

    const v32, 0x7f02053e

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2989
    const/16 v31, 0x0

    const v32, 0x7f020548

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2990
    const/16 v31, 0x0

    const v32, 0x7f020534

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2997
    :goto_9
    const v31, 0x7f090056

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 2998
    const v31, 0x7f090056

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 2999
    const v31, 0x7f090055

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3000
    const v31, 0x7f090055

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto/16 :goto_2

    .line 2992
    :cond_14
    const/16 v31, 0x0

    const v32, 0x7f0202b2

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2993
    const/16 v31, 0x0

    const v32, 0x7f0202bf

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2994
    const/16 v31, 0x0

    const v32, 0x7f0202a0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_9

    .line 3003
    .end local v27    # "vcallButtonView":Landroid/widget/LinearLayout;
    :cond_15
    const-string v31, "feature_volte_support_videocall"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 3004
    const-string v31, "CallDetailActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "configure button FEATURE_VoLTE_VCall = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "feature_volte_support_videocall"

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1a

    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVtCallButtonenabled:Z

    if-nez v31, :cond_1a

    .line 3006
    const-string v31, "CallDetailActivity"

    const-string v32, "Set Video call button invisible"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    const v31, 0x7f090053

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3008
    sget-object v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->voice_call_separator:Landroid/view/View;

    if-eqz v31, :cond_16

    .line 3009
    sget-object v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->voice_call_separator:Landroid/view/View;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 3014
    :cond_16
    :goto_a
    const-string v31, "feature_remove_vt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_17

    const-string v31, "feature_kor"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_17

    const-string v31, "feature_volte_support_videocall"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_18

    :cond_17
    const-string v31, "feature_remove_vt_dialpad"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 3017
    :cond_18
    const v31, 0x7f090053

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 3018
    .restart local v27    # "vcallButtonView":Landroid/widget/LinearLayout;
    const/16 v31, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3020
    .end local v27    # "vcallButtonView":Landroid/widget/LinearLayout;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3021
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3023
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_1b

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 3024
    const/16 v31, 0x0

    const v32, 0x7f02053e

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3025
    const/16 v31, 0x0

    const v32, 0x7f020548

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3026
    const/16 v31, 0x0

    const v32, 0x7f020534

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3037
    :goto_b
    const-string v31, "feature_kor"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 3038
    const v31, 0x7f09005b

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3039
    const v31, 0x7f090055

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3040
    const v31, 0x7f09005b

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_2

    .line 3011
    :cond_1a
    const v31, 0x7f090053

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 3027
    :cond_1b
    const-string v31, "feature_volte_support_videocall"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1c

    const-string v31, "feature_vzw"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 3028
    const/16 v31, 0x0

    const v32, 0x7f0202b4

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3029
    const/16 v31, 0x0

    const v32, 0x7f0202c3

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3030
    const/16 v31, 0x0

    const v32, 0x7f0202a5

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_b

    .line 3032
    :cond_1c
    const/16 v31, 0x0

    const v32, 0x7f0202b2

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3033
    const/16 v31, 0x0

    const v32, 0x7f0202bf

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3034
    const/16 v31, 0x0

    const v32, 0x7f0202a0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_b

    .line 3041
    :cond_1d
    const-string v31, "feature_vzw"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_29

    .line 3042
    const v31, 0x7f090052

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Button;

    .line 3043
    .local v30, "voicemail_button":Landroid/widget/Button;
    const v31, 0x7f090051

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 3044
    .local v29, "voicemailContainer":Landroid/widget/LinearLayout;
    const-string v31, "feature_volte_support_videocall"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_20

    .line 3069
    :goto_c
    const/16 v31, 0x384

    move/from16 v0, p2

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    .line 3070
    if-nez p3, :cond_1e

    .line 3072
    const/16 v31, 0x8

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 3073
    const v31, 0x7f09005d

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 3074
    const v31, 0x7f09005c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 3076
    :cond_1e
    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3078
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3085
    :cond_1f
    :goto_d
    const v31, 0x7f090056

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3086
    const v31, 0x7f090055

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3088
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z

    move/from16 v31, v0

    if-eqz v31, :cond_26

    const/16 v31, 0x384

    move/from16 v0, p2

    move/from16 v1, v31

    if-ne v0, v1, :cond_26

    .line 3089
    const v31, 0x7f090056

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3090
    const v31, 0x7f09005b

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3091
    const v31, 0x7f090052

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3092
    const v31, 0x7f090055

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3093
    const v31, 0x7f09005b

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3094
    const v31, 0x7f090052

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto/16 :goto_2

    .line 3047
    :cond_20
    const-string v31, "feature_vzw_sed"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_21

    const-string v31, "feature_not_change_message_icon"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_23

    .line 3048
    :cond_21
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_22

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 3049
    const/16 v31, 0x0

    const v32, 0x7f02053e

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3050
    const/16 v31, 0x0

    const v32, 0x7f020548

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3051
    const/16 v31, 0x0

    const v32, 0x7f020534

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_c

    .line 3053
    :cond_22
    const/16 v31, 0x0

    const v32, 0x7f0202b2

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3054
    const/16 v31, 0x0

    const v32, 0x7f0202bf

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3055
    const/16 v31, 0x0

    const v32, 0x7f0202a0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_c

    .line 3058
    :cond_23
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_24

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_24

    .line 3059
    const/16 v31, 0x0

    const v32, 0x7f020549

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3060
    const/16 v31, 0x0

    const v32, 0x7f020548

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3061
    const/16 v31, 0x0

    const v32, 0x7f020534

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_c

    .line 3063
    :cond_24
    const/16 v31, 0x0

    const v32, 0x7f0202b5

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3064
    const/16 v31, 0x0

    const v32, 0x7f0202bf

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3065
    const/16 v31, 0x0

    const v32, 0x7f0202a0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_c

    .line 3080
    :cond_25
    if-eqz v29, :cond_1f

    .line 3081
    const/16 v31, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 3096
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z

    move/from16 v31, v0

    if-eqz v31, :cond_27

    .line 3097
    const v31, 0x7f090056

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3098
    const v31, 0x7f090055

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3099
    const v31, 0x7f09005b

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3100
    const v31, 0x7f09005b

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto/16 :goto_2

    .line 3102
    :cond_27
    const/16 v31, 0x384

    move/from16 v0, p2

    move/from16 v1, v31

    if-ne v0, v1, :cond_28

    .line 3103
    const v31, 0x7f090056

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3104
    const v31, 0x7f090055

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3105
    const v31, 0x7f090052

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3106
    const v31, 0x7f090052

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto/16 :goto_2

    .line 3109
    :cond_28
    const v31, 0x7f090056

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3110
    const v31, 0x7f090055

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto/16 :goto_2

    .line 3113
    .end local v29    # "voicemailContainer":Landroid/widget/LinearLayout;
    .end local v30    # "voicemail_button":Landroid/widget/Button;
    :cond_29
    const v31, 0x7f09005b

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3114
    const v31, 0x7f090056

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3115
    const v31, 0x7f090056

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3116
    const v31, 0x7f090055

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3117
    const v31, 0x7f090055

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3118
    const v31, 0x7f09005b

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto/16 :goto_2

    .line 3133
    :cond_2a
    const-string v31, "feature_kt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2b

    .line 3134
    const/16 v31, 0x0

    const v32, 0x7f0205ca

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 3135
    :cond_2b
    const-string v31, "feature_lgt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2c

    .line 3136
    const/16 v31, 0x0

    const v32, 0x7f0205cb

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 3138
    :cond_2c
    const/16 v31, 0x0

    const v32, 0x7f0202a3

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 3141
    :cond_2d
    const-string v31, "feature_skt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2e

    .line 3142
    const/16 v31, 0x0

    const v32, 0x7f0202a4

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 3143
    :cond_2e
    const-string v31, "feature_kt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2f

    .line 3144
    const/16 v31, 0x0

    const v32, 0x7f0202a1

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 3145
    :cond_2f
    const-string v31, "feature_lgt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_30

    .line 3146
    const/16 v31, 0x0

    const v32, 0x7f0202a2

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 3148
    :cond_30
    const/16 v31, 0x0

    const v32, 0x7f0202a3

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 3156
    :cond_31
    const-string v31, "feature_kt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_32

    .line 3157
    const v31, 0x7f0205cd

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    goto/16 :goto_4

    .line 3158
    :cond_32
    const-string v31, "feature_lgt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_33

    .line 3159
    const v31, 0x7f0205ce

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    goto/16 :goto_4

    .line 3161
    :cond_33
    const v31, 0x7f020548

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    goto/16 :goto_4

    .line 3164
    :cond_34
    const-string v31, "feature_skt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_35

    .line 3165
    const v31, 0x7f0202c2

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    goto/16 :goto_4

    .line 3166
    :cond_35
    const-string v31, "feature_kt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_36

    .line 3167
    const v31, 0x7f0202c0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    goto/16 :goto_4

    .line 3168
    :cond_36
    const-string v31, "feature_lgt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_37

    .line 3169
    const v31, 0x7f0202c1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    goto/16 :goto_4

    .line 3171
    :cond_37
    const v31, 0x7f0202bf

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    goto/16 :goto_4

    .line 3195
    .restart local v19    # "ipcall_button":Landroid/widget/Button;
    .restart local v20    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    .restart local v23    # "sim2_call_button":Landroid/widget/Button;
    .restart local v24    # "sim2_call_detail_button":Landroid/widget/LinearLayout;
    :cond_38
    const/16 v31, 0x0

    const v32, 0x7f0202b1

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_5

    .line 3214
    :cond_39
    const v31, 0x7f090056

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3215
    const v31, 0x7f090058

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3216
    const v31, 0x7f090055

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3217
    const v31, 0x7f090059

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3218
    const v31, 0x7f090058

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3219
    const v31, 0x7f09005b

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3220
    const v31, 0x7f090059

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3221
    const v31, 0x7f090056

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3222
    const v31, 0x7f09005b

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3223
    const v31, 0x7f090055

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto/16 :goto_6

    .line 3273
    .end local v19    # "ipcall_button":Landroid/widget/Button;
    .end local v20    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    .end local v23    # "sim2_call_button":Landroid/widget/Button;
    .end local v24    # "sim2_call_detail_button":Landroid/widget/LinearLayout;
    :cond_3a
    const-string v31, "ip_call"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 3274
    const v31, 0x7f09005a

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 3275
    .restart local v20    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    const v31, 0x7f090059

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 3276
    .restart local v19    # "ipcall_button":Landroid/widget/Button;
    sget-boolean v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v31, :cond_3b

    const-string v31, "feature_easy_mode"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3b

    .line 3277
    const/16 v31, 0x0

    const v32, 0x7f02053d

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3281
    :goto_e
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3283
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3285
    const-string v31, "feature_remove_vt"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3c

    .line 3287
    const v31, 0x7f090056

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3288
    const v31, 0x7f090059

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3289
    const v31, 0x7f090055

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3290
    const v31, 0x7f090056

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3291
    const v31, 0x7f090059

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3292
    const v31, 0x7f090055

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3305
    :goto_f
    const-string v31, "feature_ctc"

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 3306
    const v31, 0x7f090053

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 3307
    .restart local v27    # "vcallButtonView":Landroid/widget/LinearLayout;
    const/16 v31, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 3279
    .end local v27    # "vcallButtonView":Landroid/widget/LinearLayout;
    :cond_3b
    const/16 v31, 0x0

    const v32, 0x7f0202b1

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_e

    .line 3295
    :cond_3c
    const v31, 0x7f090056

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3296
    const v31, 0x7f090059

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3297
    const v31, 0x7f090055

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3298
    const v31, 0x7f09005b

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3299
    const v31, 0x7f090059

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3300
    const v31, 0x7f090056

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3301
    const v31, 0x7f09005b

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3302
    const v31, 0x7f090055

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto/16 :goto_f

    .line 3378
    .end local v19    # "ipcall_button":Landroid/widget/Button;
    .end local v20    # "ipcall_detail_button":Landroid/widget/LinearLayout;
    .restart local v5    # "cC":Landroid/view/ViewGroup$LayoutParams;
    :cond_3d
    sget v31, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    move/from16 v0, v31

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3379
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8
.end method

.method private createMediaPlayer(Ljava/util/concurrent/ExecutorService;)Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 383
    invoke-static {p1}, Lcom/android/ex/variablespeed/VariableSpeed;->createVariableSpeed(Ljava/util/concurrent/Executor;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v0

    return-object v0
.end method

.method private createPlaybackViewImpl()Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;
    .locals 4

    .prologue
    .line 373
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private createPlaybackViewImpl2()Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;
    .locals 4

    .prologue
    .line 378
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout2:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private createScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private displayAllLogs(Ljava/lang/String;)V
    .locals 18
    .param p1, "detailNumber"    # Ljava/lang/String;

    .prologue
    .line 5354
    const/4 v5, 0x0

    .line 5355
    .local v5, "sendSelection":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5357
    .local v16, "currentE164Number":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 5358
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string v2, "number="

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5359
    const-string v2, "\""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5360
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5361
    const-string v2, "\""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5362
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    if-eqz v2, :cond_0

    .line 5365
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .line 5368
    :cond_0
    const-string v7, "date DESC"

    .line 5370
    .local v7, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    .line 5374
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-nez v2, :cond_2

    .line 5375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 5376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x1a

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 5379
    :cond_1
    if-eqz v16, :cond_2

    .line 5380
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 5381
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5382
    const-string v2, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5383
    const-string v2, "e164_number="

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5384
    const-string v2, "\""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5385
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5386
    const-string v2, "\""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5387
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5389
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    .line 5397
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_5

    .line 5398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mLogNumber:I

    .line 5403
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-nez v2, :cond_3

    .line 5404
    new-instance v8, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    const/16 v14, 0x226

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 5406
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    .line 5409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 5412
    :cond_4
    return-void

    .line 5400
    :cond_5
    const/4 v2, 0x1

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mLogNumber:I

    goto :goto_0
.end method

.method private fillLayout(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 21
    .param p1, "firstDetails"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    .line 5129
    const/16 v18, 0x0

    .line 5130
    .local v18, "numberCallUri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5132
    .local v17, "number":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v4, 0x78

    if-eq v2, v4, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v4, 0x1fe

    if-ne v2, v4, :cond_5

    .line 5133
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mChatonId:Ljava/lang/String;

    .line 5134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mChatonId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v18

    .line 5153
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 5154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    .line 5156
    const-string v2, "phone_number_locator"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5157
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_7

    .line 5158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDetailLocation:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 5160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDetailLocation:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDetailLocation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5187
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f09004f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 5188
    .local v10, "detailInfoButton":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f09008a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 5191
    .local v15, "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090049

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 5194
    .local v13, "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5279
    .end local v10    # "detailInfoButton":Landroid/widget/LinearLayout;
    .end local v13    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    .end local v15    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-2"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-3"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "P"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5284
    const-string v2, "feature_directcall_disable"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    if-eqz v2, :cond_4

    .line 5286
    const-string v2, "CallDetailActivity"

    const-string v4, "DirectCallingManager setNumber "

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5287
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setPhoneNumber(Ljava/lang/String;)V

    .line 5288
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setName(Ljava/lang/String;)V

    .line 5292
    :cond_4
    return-void

    .line 5136
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v18

    .line 5138
    const-string v9, "vnd.chaton.item/vnd.com.chaton.profile"

    .line 5139
    .local v9, "chatOnMimeType":Ljava/lang/String;
    const-string v5, "mimetype=?"

    .line 5140
    .local v5, "selection":Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 5142
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "data1"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5143
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5144
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mChatonId:Ljava/lang/String;

    .line 5148
    :goto_3
    if-eqz v8, :cond_1

    .line 5149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5146
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mChatonId:Ljava/lang/String;

    goto :goto_3

    .line 5164
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "chatOnMimeType":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 5165
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 5166
    .local v16, "mSubTitle":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5167
    const-string v2, "  |  "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5171
    .end local v16    # "mSubTitle":Ljava/lang/StringBuilder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5175
    :cond_9
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 5179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5182
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v6, v7, v0, v1}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5197
    :cond_b
    if-eqz v17, :cond_3

    .line 5198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v2, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v2, "-2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v2, "-3"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v2, "P"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5206
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f09004f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 5207
    .restart local v10    # "detailInfoButton":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090088

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 5210
    .local v14, "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f09008a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 5212
    .restart local v15    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090046

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 5214
    .local v12, "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090049

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 5217
    .restart local v13    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v2, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0e009c

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5221
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v2, "-2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v2, "P"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5223
    :cond_e
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0e009c

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5226
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0e009d

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5229
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0e009e

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5232
    .end local v10    # "detailInfoButton":Landroid/widget/LinearLayout;
    .end local v12    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    .end local v13    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    .end local v14    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    .end local v15    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f09004f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 5233
    .local v11, "detailInfoLandButton":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090088

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 5236
    .restart local v14    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f09008a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 5238
    .restart local v15    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090046

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 5240
    .restart local v12    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090049

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 5243
    .restart local v13    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5245
    const-string v2, "phone_number_locator"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5246
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_12

    .line 5247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDetailLocation:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 5249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDetailLocation:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDetailLocation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5253
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 5254
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 5255
    .restart local v16    # "mSubTitle":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5256
    const-string v2, "  |  "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5260
    .end local v16    # "mSubTitle":Ljava/lang/StringBuilder;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5264
    :cond_14
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 5268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5271
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v6, v7, v0, v1}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private finishPhoneNumerSelectedActionModeIfShown()Z
    .locals 1

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4631
    :goto_0
    return v0

    .line 4630
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 4631
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static formatAsMinutesAndSeconds(I)Ljava/lang/String;
    .locals 6
    .param p0, "millis"    # I

    .prologue
    .line 5029
    div-int/lit16 v1, p0, 0x3e8

    .line 5030
    .local v1, "seconds":I
    div-int/lit8 v0, v1, 0x3c

    .line 5031
    .local v0, "minutes":I
    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr v1, v2

    .line 5032
    const/16 v2, 0x63

    if-le v0, v2, :cond_0

    .line 5033
    const/16 v0, 0x63

    .line 5035
    :cond_0
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCallLogEntryUris()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1449
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallLogEntryUris, uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LOG_CONTACT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    .line 1453
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    .line 1455
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallLogEntryUris, idsStr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    return-object v0
.end method

.method private getNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sDigit"    # Ljava/lang/String;

    .prologue
    .line 5091
    const-string v2, ""

    .line 5093
    .local v2, "sRst":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 5094
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5095
    .local v0, "nowChar":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 5096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5093
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5099
    .end local v0    # "nowChar":C
    :cond_1
    return-object v2
.end method

.method private getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 144
    .param p1, "callUri"    # Ljava/lang/String;

    .prologue
    .line 2450
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2451
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v129

    .line 2454
    .local v129, "callCursor":Landroid/database/Cursor;
    if-eqz v129, :cond_0

    :try_start_0
    invoke-interface/range {v129 .. v129}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2455
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

    .line 2730
    :catchall_0
    move-exception v4

    if-eqz v129, :cond_1

    .line 2731
    invoke-interface/range {v129 .. v129}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    .line 2457
    :cond_2
    :try_start_1
    invoke-interface/range {v129 .. v129}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v0, v4, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v132, v0

    .line 2459
    .local v132, "details":[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    const/16 v133, 0x0

    .local v133, "i":I
    :goto_0
    invoke-interface/range {v129 .. v129}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v133

    if-ge v0, v4, :cond_2f

    .line 2461
    const/4 v4, 0x0

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 2462
    .local v28, "id":I
    const/4 v4, 0x3

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2463
    .local v29, "number":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2464
    .local v12, "date":J
    const/4 v4, 0x2

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2465
    .local v14, "duration":J
    const/4 v4, 0x4

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v130

    .line 2466
    .local v130, "callType":I
    const/4 v4, 0x5

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2467
    .local v32, "countryIso":Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2468
    .local v10, "geocode":Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2469
    .local v16, "logType":I
    const/16 v4, 0xd

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 2470
    .local v22, "simnum":I
    const/16 v4, 0x10

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 2471
    .local v23, "callOutDuration":J
    const/16 v4, 0x17

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2472
    .local v25, "roamingCall":Ljava/lang/String;
    const/16 v4, 0x18

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2473
    .local v26, "iddValue":Ljava/lang/String;
    const/16 v4, 0x11

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 2474
    .local v48, "contactId":J
    const/16 v4, 0x12

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 2475
    .local v31, "address":Ljava/lang/String;
    const-string v86, ""

    .line 2476
    .local v86, "sharedFilePath":Ljava/lang/String;
    const/16 v137, 0x0

    .line 2478
    .local v137, "mRemindMeLaterSet":I
    const/16 v4, 0xe

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 2479
    .local v47, "cdnipNumber":Ljava/lang/String;
    const/16 v4, 0xf

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 2481
    .local v45, "serviceType":I
    const/16 v4, 0x14

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v112

    .line 2482
    .local v112, "msgId":Ljava/lang/String;
    const/16 v4, 0x15

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v106

    .line 2485
    .local v106, "simcardId":I
    const-string v4, "feature_cnam"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "feature_cnap"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2488
    :cond_3
    const/16 v4, 0xc

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    .line 2492
    :cond_4
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2493
    const/16 v4, 0x13

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v86

    .line 2497
    :cond_5
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 2502
    :cond_6
    const-string v4, "feature_cnam"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2503
    if-nez v133, :cond_7

    .line 2505
    const/4 v4, 0x4

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v134

    .line 2506
    .local v134, "iCallType":I
    const-string v4, "feature_cityid"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2507
    const/16 v4, 0x8

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    .line 2511
    :goto_1
    const/4 v4, 0x2

    move/from16 v0, v134

    if-eq v0, v4, :cond_7

    .line 2512
    const/16 v4, 0x9

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    .line 2513
    const/16 v4, 0xa

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    .line 2514
    const/16 v4, 0xb

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    .line 2520
    .end local v134    # "iCallType":I
    :cond_7
    const-string v4, "feature_remind_me_later_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2521
    const/16 v4, 0x16

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v137

    .line 2525
    :cond_8
    const-string v30, ""

    .line 2527
    .local v30, "numberText":Ljava/lang/CharSequence;
    const-string v17, ""

    .line 2528
    .local v17, "nameText":Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .line 2529
    .local v18, "numberType":I
    const-string v19, ""

    .line 2530
    .local v19, "numberLabel":Ljava/lang/CharSequence;
    const/16 v21, 0x0

    .line 2531
    .local v21, "photoUri":Landroid/net/Uri;
    const/16 v20, 0x0

    .line 2532
    .local v20, "contactUri":Landroid/net/Uri;
    const-string v67, "vnd.sec.contact.phone"

    .line 2535
    .local v67, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 2536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    .line 2628
    :cond_9
    :goto_2
    const-string v4, "cnap_text_for_smc_test"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2630
    if-eqz v17, :cond_a

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2631
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2638
    :cond_b
    const-string v4, "feature_cnam"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2639
    if-nez v133, :cond_f

    .line 2640
    if-eqz v17, :cond_c

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2641
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_24

    .line 2642
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    if-nez v4, :cond_22

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2662
    :cond_f
    :goto_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_11

    .line 2663
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    move-wide/from16 v0, v48

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v128

    .line 2668
    .local v128, "c":Landroid/database/Cursor;
    if-eqz v128, :cond_10

    :try_start_2
    invoke-interface/range {v128 .. v128}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2669
    const/4 v4, 0x0

    move-object/from16 v0, v128

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v67

    .line 2672
    :cond_10
    if-eqz v128, :cond_11

    .line 2673
    :try_start_3
    invoke-interface/range {v128 .. v128}, Landroid/database/Cursor;->close()V

    .line 2681
    .end local v128    # "c":Landroid/database/Cursor;
    :cond_11
    const-wide/16 v4, 0x0

    cmp-long v4, v48, v4

    if-nez v4, :cond_12

    const/16 v4, 0x1f4

    move/from16 v0, v16

    if-eq v0, v4, :cond_12

    const/16 v4, 0x1fe

    move/from16 v0, v16

    if-eq v0, v4, :cond_12

    const/16 v4, 0x3e8

    move/from16 v0, v16

    if-ne v0, v4, :cond_27

    .line 2682
    :cond_12
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isSavedORLogtypeVideo:Z

    .line 2685
    :goto_4
    const-string v4, "CallDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSavedORLogtypeVideo is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isSavedORLogtypeVideo:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "logType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nameText is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "contactId  is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v48

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2688
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bVIP_BLog_Detail:Z

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z

    if-eqz v4, :cond_28

    .line 2689
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, 0x1

    new-array v11, v5, [I

    const/4 v5, 0x0

    aput v130, v11, v5

    move/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v112

    move-object/from16 v9, v32

    invoke-direct/range {v4 .. v24}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    aput-object v4, v132, v133

    .line 2723
    .end local v86    # "sharedFilePath":Ljava/lang/String;
    :goto_5
    const-string v4, "feature_remind_me_later_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2724
    aget-object v4, v132, v133

    move/from16 v0, v137

    iput v0, v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 2726
    :cond_13
    invoke-interface/range {v129 .. v129}, Landroid/database/Cursor;->moveToNext()Z

    .line 2459
    add-int/lit8 v133, v133, 0x1

    goto/16 :goto_0

    .line 2509
    .end local v17    # "nameText":Ljava/lang/CharSequence;
    .end local v18    # "numberType":I
    .end local v19    # "numberLabel":Ljava/lang/CharSequence;
    .end local v20    # "contactUri":Landroid/net/Uri;
    .end local v21    # "photoUri":Landroid/net/Uri;
    .end local v30    # "numberText":Ljava/lang/CharSequence;
    .end local v67    # "accountType":Ljava/lang/String;
    .restart local v86    # "sharedFilePath":Ljava/lang/String;
    .restart local v134    # "iCallType":I
    :cond_14
    const/4 v4, 0x6

    move-object/from16 v0, v129

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 2539
    .end local v134    # "iCallType":I
    .restart local v17    # "nameText":Ljava/lang/CharSequence;
    .restart local v18    # "numberType":I
    .restart local v19    # "numberLabel":Ljava/lang/CharSequence;
    .restart local v20    # "contactUri":Landroid/net/Uri;
    .restart local v21    # "photoUri":Landroid/net/Uri;
    .restart local v30    # "numberText":Ljava/lang/CharSequence;
    .restart local v67    # "accountType":Ljava/lang/String;
    :cond_15
    const/4 v3, 0x0

    .line 2541
    .local v3, "phoneUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2543
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v136

    .line 2544
    .local v136, "mMatchLen":I
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v138

    .line 2546
    .local v138, "nLen":I
    const/16 v135, 0x0

    .line 2548
    .local v135, "mIsSpecialNum":Z
    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v135

    .line 2550
    const-string v4, "CallDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCallDetailsForUri: mIsSpecialNum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v135

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    move/from16 v0, v138

    move/from16 v1, v136

    if-le v0, v1, :cond_18

    if-nez v135, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 2554
    const-string v4, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v141

    .line 2555
    .local v141, "phoneLookup":Landroid/net/Uri;
    invoke-virtual/range {v141 .. v141}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {v136 .. v136}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2585
    .end local v135    # "mIsSpecialNum":Z
    .end local v136    # "mMatchLen":I
    .end local v138    # "nLen":I
    .end local v141    # "phoneLookup":Landroid/net/Uri;
    :goto_6
    if-nez v133, :cond_9

    .line 2586
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v142

    .line 2587
    .local v142, "phonesCursor":Landroid/database/Cursor;
    move-object/from16 v131, v29

    .line 2589
    .local v131, "candidateNumberText":Ljava/lang/String;
    if-eqz v142, :cond_1f

    :try_start_4
    invoke-interface/range {v142 .. v142}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2590
    const/4 v4, 0x1

    move-object/from16 v0, v142

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2591
    const/4 v4, 0x6

    move-object/from16 v0, v142

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v143

    .line 2592
    .local v143, "photoUriString":Ljava/lang/String;
    if-nez v143, :cond_1d

    const/16 v21, 0x0

    .line 2593
    :goto_7
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2594
    const/4 v4, 0x4

    move-object/from16 v0, v142

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v131

    .line 2601
    :goto_8
    const/4 v4, 0x2

    move-object/from16 v0, v142

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2602
    const/4 v4, 0x3

    move-object/from16 v0, v142

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2603
    const/4 v4, 0x0

    move-object/from16 v0, v142

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v139

    .line 2604
    .local v139, "personId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v139, v4

    if-lez v4, :cond_16

    .line 2605
    const/4 v4, 0x7

    move-object/from16 v0, v142

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v139

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v20

    .line 2620
    .end local v139    # "personId":J
    .end local v143    # "photoUriString":Ljava/lang/String;
    :cond_16
    :goto_9
    if-eqz v142, :cond_17

    :try_start_5
    invoke-interface/range {v142 .. v142}, Landroid/database/Cursor;->close()V

    .line 2621
    :cond_17
    move-object/from16 v30, v131

    .line 2623
    if-nez v17, :cond_9

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2624
    move-object/from16 v17, v30

    goto/16 :goto_2

    .line 2559
    .end local v131    # "candidateNumberText":Ljava/lang/String;
    .end local v142    # "phonesCursor":Landroid/database/Cursor;
    .restart local v135    # "mIsSpecialNum":Z
    .restart local v136    # "mMatchLen":I
    .restart local v138    # "nLen":I
    :cond_18
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_6

    .line 2566
    .end local v135    # "mIsSpecialNum":Z
    .end local v136    # "mMatchLen":I
    .end local v138    # "nLen":I
    :cond_19
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    .line 2567
    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2568
    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v5, "phone_lookup_with_profile"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

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

    goto/16 :goto_6

    .line 2571
    :cond_1a
    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v5, "phone_lookup_with_profile"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_6

    .line 2575
    :cond_1b
    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2576
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

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

    goto/16 :goto_6

    .line 2579
    :cond_1c
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    goto/16 :goto_6

    .line 2592
    .restart local v131    # "candidateNumberText":Ljava/lang/String;
    .restart local v142    # "phonesCursor":Landroid/database/Cursor;
    .restart local v143    # "photoUriString":Ljava/lang/String;
    :cond_1d
    :try_start_6
    invoke-static/range {v143 .. v143}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    goto/16 :goto_7

    .line 2596
    :cond_1e
    const/4 v4, 0x4

    move-object/from16 v0, v142

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, v142

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-static {v4, v5, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v131

    goto/16 :goto_8

    .line 2612
    .end local v143    # "photoUriString":Ljava/lang/String;
    :cond_1f
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2613
    move-object/from16 v131, v29

    goto/16 :goto_9

    .line 2615
    :cond_20
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v131

    goto/16 :goto_9

    .line 2620
    :catchall_1
    move-exception v4

    if-eqz v142, :cond_21

    :try_start_7
    invoke-interface/range {v142 .. v142}, Landroid/database/Cursor;->close()V

    .line 2621
    :cond_21
    move-object/from16 v30, v131

    throw v4

    .line 2644
    .end local v3    # "phoneUri":Landroid/net/Uri;
    .end local v131    # "candidateNumberText":Ljava/lang/String;
    .end local v142    # "phonesCursor":Landroid/database/Cursor;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    if-eqz v4, :cond_23

    .line 2645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 2648
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3

    .line 2651
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_25

    .line 2652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 2654
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 2672
    .restart local v128    # "c":Landroid/database/Cursor;
    :catchall_2
    move-exception v4

    if-eqz v128, :cond_26

    .line 2673
    invoke-interface/range {v128 .. v128}, Landroid/database/Cursor;->close()V

    :cond_26
    throw v4

    .line 2684
    .end local v128    # "c":Landroid/database/Cursor;
    :cond_27
    const/4 v4, 0x0

    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isSavedORLogtypeVideo:Z

    goto/16 :goto_4

    .line 2693
    :cond_28
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v11, v4, [I

    const/4 v4, 0x0

    aput v130, v11, v4

    move/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v32

    invoke-direct/range {v5 .. v26}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJLjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v132, v133

    goto/16 :goto_5

    .line 2697
    :cond_29
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2698
    new-instance v27, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v34, v0

    const/4 v4, 0x0

    aput v130, v34, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v50, 0x0

    move-object/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v37, v14

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v18

    move-object/from16 v42, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v21

    invoke-direct/range {v27 .. v50}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    aput-object v27, v132, v133

    goto/16 :goto_5

    .line 2701
    :cond_2a
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_2b

    const-string v4, "vnd.sec.contact.sim"

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2702
    new-instance v50, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v56, v0

    const/4 v4, 0x0

    aput v130, v56, v4

    move/from16 v51, v28

    move-object/from16 v52, v29

    move-object/from16 v53, v30

    move-object/from16 v54, v32

    move-object/from16 v55, v10

    move-wide/from16 v57, v12

    move-wide/from16 v59, v14

    move/from16 v61, v16

    move-object/from16 v62, v17

    move/from16 v63, v18

    move-object/from16 v64, v19

    move-object/from16 v65, v20

    move-object/from16 v66, v21

    invoke-direct/range {v50 .. v67}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v50, v132, v133

    goto/16 :goto_5

    .line 2705
    :cond_2b
    const-string v4, "feature_cnap"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2706
    new-instance v68, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v75, v0

    const/4 v4, 0x0

    aput v130, v75, v4

    const/16 v86, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v87, v0

    .end local v86    # "sharedFilePath":Ljava/lang/String;
    const/16 v88, 0x0

    const/16 v91, 0x0

    move/from16 v69, v28

    move-object/from16 v70, v29

    move-object/from16 v71, v30

    move-object/from16 v72, v31

    move-object/from16 v73, v32

    move-object/from16 v74, v10

    move-wide/from16 v76, v12

    move-wide/from16 v78, v14

    move/from16 v80, v16

    move-object/from16 v81, v17

    move/from16 v82, v18

    move-object/from16 v83, v19

    move-object/from16 v84, v20

    move-object/from16 v85, v21

    move-wide/from16 v89, v48

    invoke-direct/range {v68 .. v91}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    aput-object v68, v132, v133

    goto/16 :goto_5

    .line 2709
    .restart local v86    # "sharedFilePath":Ljava/lang/String;
    :cond_2c
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2710
    new-instance v68, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v74, v0

    const/4 v4, 0x0

    aput v130, v74, v4

    move/from16 v69, v28

    move-object/from16 v70, v29

    move-object/from16 v71, v30

    move-object/from16 v72, v32

    move-object/from16 v73, v10

    move-wide/from16 v75, v12

    move-wide/from16 v77, v14

    move/from16 v79, v16

    move-object/from16 v80, v17

    move/from16 v81, v18

    move-object/from16 v82, v19

    move-object/from16 v83, v20

    move-object/from16 v84, v21

    move/from16 v85, v22

    invoke-direct/range {v68 .. v86}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    aput-object v68, v132, v133

    goto/16 :goto_5

    .line 2713
    :cond_2d
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2714
    new-instance v87, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v92, 0x0

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v95, v0

    const/4 v4, 0x0

    aput v130, v95, v4

    move/from16 v88, v28

    move-object/from16 v89, v29

    move-object/from16 v90, v30

    move-object/from16 v91, v31

    move-object/from16 v93, v32

    move-object/from16 v94, v10

    move-wide/from16 v96, v12

    move-wide/from16 v98, v14

    move/from16 v100, v16

    move-object/from16 v101, v17

    move/from16 v102, v18

    move-object/from16 v103, v19

    move-object/from16 v104, v20

    move-object/from16 v105, v21

    move-wide/from16 v107, v48

    invoke-direct/range {v87 .. v108}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    aput-object v87, v132, v133

    goto/16 :goto_5

    .line 2719
    :cond_2e
    new-instance v107, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v115, v0

    const/4 v4, 0x0

    aput v130, v115, v4

    move/from16 v108, v28

    move-object/from16 v109, v29

    move-object/from16 v110, v30

    move-object/from16 v111, v31

    move-object/from16 v113, v32

    move-object/from16 v114, v10

    move-wide/from16 v116, v12

    move-wide/from16 v118, v14

    move/from16 v120, v16

    move-object/from16 v121, v17

    move/from16 v122, v18

    move-object/from16 v123, v19

    move-object/from16 v124, v20

    move-object/from16 v125, v21

    move-wide/from16 v126, v48

    invoke-direct/range {v107 .. v127}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    aput-object v107, v132, v133
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 2730
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
    .end local v31    # "address":Ljava/lang/String;
    .end local v32    # "countryIso":Ljava/lang/String;
    .end local v45    # "serviceType":I
    .end local v47    # "cdnipNumber":Ljava/lang/String;
    .end local v48    # "contactId":J
    .end local v67    # "accountType":Ljava/lang/String;
    .end local v86    # "sharedFilePath":Ljava/lang/String;
    .end local v106    # "simcardId":I
    .end local v112    # "msgId":Ljava/lang/String;
    .end local v130    # "callType":I
    .end local v137    # "mRemindMeLaterSet":I
    :cond_2f
    if-eqz v129, :cond_30

    .line 2731
    invoke-interface/range {v129 .. v129}, Landroid/database/Cursor;->close()V

    :cond_30
    return-object v132
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 4500
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v1, "logs_directcall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getVoicemailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2742
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "feature_common_use_multisim"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2744
    const-string v2, "persist.radio.calldefault.simid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2745
    .local v0, "subscription":I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 2749
    .end local v0    # "subscription":I
    :goto_0
    return-object v2

    .line 2747
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2749
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;J)V
    .locals 7
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "randomSeed"    # J

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V

    .line 2739
    return-void
.end method

.method private loadPref()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4520
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v2, "logslist_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4521
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "reject_popup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    .line 4522
    return-void
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 1435
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1436
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1437
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_read = 0"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1438
    return-void
.end method

.method private motionDialogInitialOff()V
    .locals 11

    .prologue
    .line 4433
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionDialog:Z

    if-nez v7, :cond_0

    .line 4434
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionDialog:Z

    .line 4435
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4436
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 4438
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040198

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4439
    .local v4, "layout":Landroid/view/View;
    const v7, 0x7f090230

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4440
    .local v2, "img":Landroid/widget/ImageView;
    const v7, 0x7f0903a0

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4441
    .local v5, "message1":Landroid/widget/TextView;
    const v7, 0x7f0903a2

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 4442
    .local v6, "message3":Landroid/widget/TextView;
    const v7, 0x7f09011e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 4443
    .local v1, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v7, 0x7f0e036a

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 4444
    const v7, 0x7f02078e

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4445
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 4446
    const v7, 0x7f0e036b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 4447
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4448
    const v7, 0x7f0e0368

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4449
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 4451
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$17;

    invoke-direct {v8, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$17;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    const-wide/16 v9, 0x5f

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4458
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$18;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$18;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 4463
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$19;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$19;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4469
    const v7, 0x7f0e0367

    new-instance v8, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;

    invoke-direct {v8, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4486
    const v7, 0x7f0e0062

    new-instance v8, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$21;

    invoke-direct {v8, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$21;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4493
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 4494
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 4497
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v2    # "img":Landroid/widget/ImageView;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "layout":Landroid/view/View;
    .end local v5    # "message1":Landroid/widget/TextView;
    .end local v6    # "message3":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private motionDialogInitialOn()V
    .locals 10

    .prologue
    .line 4385
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionDialog:Z

    if-nez v6, :cond_0

    .line 4386
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionDialog:Z

    .line 4387
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4388
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 4390
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040199

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4391
    .local v4, "layout":Landroid/view/View;
    const v6, 0x7f090230

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4392
    .local v2, "img":Landroid/widget/ImageView;
    const v6, 0x7f0903a0

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4393
    .local v5, "message1":Landroid/widget/TextView;
    const v6, 0x7f09011e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 4394
    .local v1, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v6, 0x7f0e036a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 4395
    const v6, 0x7f02078e

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4396
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 4397
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4398
    const v6, 0x7f0e0368

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4399
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 4401
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$13;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$13;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    const-wide/16 v8, 0x5f

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4407
    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$14;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$14;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 4413
    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$15;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$15;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4419
    const v6, 0x7f0e036d

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$16;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$16;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 4427
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 4430
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v2    # "img":Landroid/widget/ImageView;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "layout":Landroid/view/View;
    .end local v5    # "message1":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private onHomeSelected()V
    .locals 0

    .prologue
    .line 4204
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 4205
    return-void
.end method

.method private saveViewStatusPreference()V
    .locals 5

    .prologue
    .line 4513
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4514
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4515
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "reject_popup"

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4516
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4517
    return-void
.end method

.method private setCallButtonEnable(Landroid/view/View;)V
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const v7, 0x7f090059

    const v6, 0x7f090055

    const/4 v5, 0x0

    .line 3400
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3401
    .local v0, "call_button":Landroid/widget/Button;
    const v4, 0x7f090057

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 3404
    .local v3, "sim2_call_detail_button":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCDMANetworkReady()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCDMANetwork:Z

    .line 3405
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isGSMNetworkReady()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bGSMNetwork:Z

    .line 3406
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 3412
    .local v2, "isEmergencyNumber":Z
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCDMANetwork:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bGSMNetwork:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCDMANetwork:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bGSMNetwork:Z

    if-eqz v4, :cond_6

    .line 3413
    :cond_1
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v4, :cond_4

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkDualSim()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3414
    const v4, 0x7f020534

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3418
    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3419
    const-string v4, "feature_chn_duos_gsm_gsm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3421
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3422
    .local v1, "ipcall_button":Landroid/widget/Button;
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v4, :cond_5

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3423
    const v4, 0x7f02053d

    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3427
    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 3428
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 3434
    .end local v1    # "ipcall_button":Landroid/widget/Button;
    :cond_3
    :goto_2
    return-void

    .line 3416
    :cond_4
    const v4, 0x7f0202a0

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 3425
    .restart local v1    # "ipcall_button":Landroid/widget/Button;
    :cond_5
    const v4, 0x7f0202b1

    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 3432
    .end local v1    # "ipcall_button":Landroid/widget/Button;
    :cond_6
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private setFocusDetailView(Landroid/view/View;)V
    .locals 14
    .param p1, "actionBarView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const v13, 0x7f090055

    const v12, 0x7f090048

    const v11, 0x7f090047

    const v10, 0x7f09004a

    .line 4131
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-eq v9, v8, :cond_2

    move v1, v8

    .line 4132
    .local v1, "isLand":Z
    :goto_0
    invoke-virtual {p0, v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4133
    .local v0, "createContactView":Landroid/widget/Button;
    invoke-virtual {p0, v12}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 4134
    .local v6, "updateContactView":Landroid/widget/Button;
    invoke-virtual {p0, v10}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 4135
    .local v7, "viewContactView":Landroid/widget/Button;
    invoke-virtual {p0, v13}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 4136
    .local v3, "makeCallButton":Landroid/widget/Button;
    const v9, 0x7f090058

    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 4137
    .local v2, "makeCall2Button":Landroid/widget/Button;
    const v9, 0x7f090059

    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 4138
    .local v4, "makeIPCallButton":Landroid/widget/Button;
    const v9, 0x7f090056

    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 4140
    .local v5, "sendMsgButton":Landroid/widget/Button;
    if-eqz v1, :cond_4

    .line 4141
    const v9, 0x7f090046

    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    .line 4142
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 4143
    invoke-virtual {p1, v11}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 4144
    invoke-virtual {v3, v11}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4145
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4146
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 4147
    invoke-virtual {v0, v13}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 4148
    invoke-virtual {v2, v11}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4149
    invoke-virtual {v4, v11}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4150
    invoke-virtual {v5, v11}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4186
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4187
    const v9, 0x7f090040

    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 4188
    const v8, 0x7f090040

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 4191
    :cond_1
    return-void

    .line 4131
    .end local v0    # "createContactView":Landroid/widget/Button;
    .end local v1    # "isLand":Z
    .end local v2    # "makeCall2Button":Landroid/widget/Button;
    .end local v3    # "makeCallButton":Landroid/widget/Button;
    .end local v4    # "makeIPCallButton":Landroid/widget/Button;
    .end local v5    # "sendMsgButton":Landroid/widget/Button;
    .end local v6    # "updateContactView":Landroid/widget/Button;
    .end local v7    # "viewContactView":Landroid/widget/Button;
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 4151
    .restart local v0    # "createContactView":Landroid/widget/Button;
    .restart local v1    # "isLand":Z
    .restart local v2    # "makeCall2Button":Landroid/widget/Button;
    .restart local v3    # "makeCallButton":Landroid/widget/Button;
    .restart local v4    # "makeIPCallButton":Landroid/widget/Button;
    .restart local v5    # "sendMsgButton":Landroid/widget/Button;
    .restart local v6    # "updateContactView":Landroid/widget/Button;
    .restart local v7    # "viewContactView":Landroid/widget/Button;
    :cond_3
    const v9, 0x7f090049

    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 4152
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 4153
    invoke-virtual {p1, v10}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 4154
    invoke-virtual {v7, v13}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 4155
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4156
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4157
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4158
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setNextFocusDownId(I)V

    goto :goto_1

    .line 4161
    :cond_4
    const v9, 0x7f090046

    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5

    .line 4162
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 4163
    invoke-virtual {p1, v11}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 4164
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4165
    invoke-virtual {v6, v13}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4166
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 4168
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;

    invoke-virtual {v9, v13}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 4169
    const v9, 0x7f090069

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4170
    invoke-virtual {v3, v12}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 4171
    invoke-virtual {v2, v12}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 4172
    invoke-virtual {v4, v12}, Landroid/widget/Button;->setNextFocusUpId(I)V

    goto/16 :goto_1

    .line 4174
    :cond_5
    const v9, 0x7f090049

    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 4175
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 4176
    invoke-virtual {p1, v10}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 4177
    invoke-virtual {v7, v13}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 4178
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 4179
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 4180
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 4181
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setNextFocusUpId(I)V

    goto/16 :goto_1
.end method

.method private showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mNumber"    # Ljava/lang/String;

    .prologue
    .line 4525
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4526
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0401d8

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4528
    .local v0, "discover_notify":Landroid/widget/LinearLayout;
    const v5, 0x7f09042f

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 4530
    .local v4, "notify_confirm":Landroid/widget/LinearLayout;
    const v5, 0x7f090430

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 4533
    .local v3, "not_show_again":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v5, 0x7f0e0245

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4534
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

    .line 4536
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->requestFocus()Z

    .line 4538
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContextForDialog:Landroid/content/Context;

    .line 4539
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberForDialog:Ljava/lang/String;

    .line 4541
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$22;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$22;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4546
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e02fd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0347

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e02d4

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$23;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$23;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRejectListConfirmDialog:Landroid/app/AlertDialog;

    .line 4564
    return-void
.end method

.method private startMotionTutorialDialog()V
    .locals 1

    .prologue
    .line 4378
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->getPickupToCallOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4379
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->motionDialogInitialOn()V

    .line 4382
    :goto_0
    return-void

    .line 4381
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->motionDialogInitialOff()V

    goto :goto_0
.end method

.method private startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 4635
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    .line 4636
    return-void
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 5
    .param p1, "callUris"    # Ljava/lang/String;

    .prologue
    .line 2408
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2412
    :goto_0
    return-void

    .line 2409
    :catch_0
    move-exception v0

    .line 2410
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    goto :goto_0
.end method

.method private updateWindowLayout()V
    .locals 9

    .prologue
    const v8, 0x7f0c01d2

    const/16 v7, 0x35

    const/4 v6, -0x1

    const v5, 0x3ecccccd

    const/4 v4, 0x0

    .line 5314
    const v2, 0x7f090040

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5316
    .local v0, "mainView":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5317
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 5318
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5319
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5320
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5321
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5322
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 5350
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5351
    return-void

    .line 5325
    .end local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5326
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 5327
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5328
    .restart local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5329
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5331
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5333
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5334
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 5337
    .end local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 5338
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5339
    .restart local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5341
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5343
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5345
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5346
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 4374
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 4375
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 4369
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 4370
    return-void
.end method

.method public enableVTbutton()Z
    .locals 4

    .prologue
    .line 5080
    const-string v2, "ro.build.type"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 5082
    .local v1, "buildType":Ljava/lang/String;
    const-string v2, "persist.sys.ims.lvcon"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5084
    .local v0, "ImsIvIcon":Ljava/lang/String;
    const-string v2, "ENG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5085
    const/4 v2, 0x1

    .line 5087
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChatOnId(Ljava/lang/String;)J
    .locals 13
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2417
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    .line 2420
    .local v2, "CONTACT_CHATON_PROJECTION":[Ljava/lang/String;
    const-string v8, "mimetype_id"

    .line 2422
    .local v8, "MIMETYPE_ID":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2423
    .local v7, "COLUMN_INDEX_ID":I
    const/16 v6, 0xc

    .line 2425
    .local v6, "CHATON_MIMETYPE":I
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2426
    .local v1, "uri":Landroid/net/Uri;
    const-wide/16 v11, -0x1

    .line 2427
    .local v11, "id":J
    move-object v10, p1

    .line 2428
    .local v10, "formatNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2429
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "82"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2433
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype_id=12 AND data1 = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2436
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2439
    .local v9, "callCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 2440
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2441
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v11, v4

    goto :goto_0

    .line 2443
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2445
    :cond_2
    return-wide v11
.end method

.method public getCheckedOnOff(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4504
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getSimCardIconIndex()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1326
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    const-string v0, "ril.ICC_TYPE"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1328
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexCDMA:I

    .line 1333
    :goto_0
    const-string v0, "ril.ICC2_TYPE"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1334
    sput v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexGSM:I

    .line 1342
    :cond_0
    :goto_1
    return-void

    .line 1330
    :cond_1
    const-string v0, "gsm.sim.icon"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexCDMA:I

    goto :goto_0

    .line 1336
    :cond_2
    const-string v0, "gsm.sim.icon2"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexGSM:I

    goto :goto_1

    .line 1338
    :cond_3
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_1"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexCDMA:I

    .line 1340
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_2"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexGSM:I

    goto :goto_1
.end method

.method public hasMultiWindwoFeature()Z
    .locals 4

    .prologue
    .line 5415
    const/4 v2, 0x0

    .line 5417
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5418
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 5419
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 5425
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 5421
    :catch_0
    move-exception v0

    .line 5422
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isValidNumberforQuery(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sDigit"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x7

    const/4 v0, 0x0

    .line 5113
    if-nez p1, :cond_1

    .line 5123
    :cond_0
    :goto_0
    return v0

    .line 5116
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 5121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 5123
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 4360
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 4362
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 4364
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, -0x1

    const v9, 0x7f090068

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1345
    const-string v3, "CallDetailActivity"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1349
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_0

    .line 1350
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    .line 1353
    :cond_0
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    .line 1365
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_VVM_ID"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1366
    .local v2, "vvm_id":I
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged  vvm_id =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-nez v3, :cond_2

    .line 1370
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_4

    .line 1374
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1375
    .local v0, "allLogsBg":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1377
    .local v1, "allLogsBgLand":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    if-eq v2, v10, :cond_1

    .line 1384
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1387
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    .line 1388
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    const v4, 0x7f090069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;

    .line 1407
    .end local v1    # "allLogsBgLand":Landroid/view/View;
    :goto_0
    const-string v3, "feature_kdi"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1408
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRejectListConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRejectListConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1409
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRejectListConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1410
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRejectListConfirmDialog:Landroid/app/AlertDialog;

    .line 1415
    .end local v0    # "allLogsBg":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 1418
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_6

    .line 1419
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateWindowLayout()V

    .line 1425
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z

    if-eqz v3, :cond_3

    .line 1427
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged  isVtCallButtonEnabled status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVtCallButtonenabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVtCallButtonenabled:Z

    if-eqz v3, :cond_3

    .line 1429
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->changelayout()V

    .line 1432
    :cond_3
    return-void

    .line 1390
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1392
    .restart local v0    # "allLogsBg":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1393
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1394
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1397
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1400
    if-eq v2, v10, :cond_5

    .line 1401
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout2:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    .line 1405
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    const v4, 0x7f090069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;

    goto/16 :goto_0

    .line 1421
    .end local v0    # "allLogsBg":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 3691
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 3692
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3701
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3694
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    invoke-static {p0, v1, v2, v0}, Lcom/android/contacts/util/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 3692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 872
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 873
    const-string v2, "CallDetailActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 877
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    .line 879
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_0

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 883
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setFinishOnTouchOutside(Z)V

    .line 886
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->hasMultiWindwoFeature()Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isSupportMultiWindow:Z

    .line 888
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z

    .line 890
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isSupportMultiWindow:Z

    if-eqz v2, :cond_1

    .line 891
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 895
    :cond_1
    const-string v2, "feature_clear_cover"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z

    if-eqz v2, :cond_3

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "VIP_BlockedLogs_Detail"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bVIP_BLog_Detail:Z

    .line 909
    :cond_3
    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    .line 912
    :cond_4
    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 913
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$10;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 923
    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    .line 924
    .local v23, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 928
    .end local v23    # "filter":Landroid/content/IntentFilter;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_12

    .line 929
    const v2, 0x7f04000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    .line 930
    const v2, 0x7f090040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    .line 931
    const v2, 0x7f09003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v3, 0x7f09006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberTextView:Landroid/widget/TextView;

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v3, 0x7f09004c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDetailLocation:Landroid/widget/TextView;

    .line 956
    :goto_1
    const-string v2, "change_order_of_buttons"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->changeButtonsOrder(Landroid/view/View;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->changeButtonsOrder(Landroid/view/View;)V

    .line 961
    :cond_6
    if-eqz p1, :cond_7

    .line 962
    const-string v2, "isChangingOrientation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    .line 965
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    .line 967
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v3, "phone2"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 975
    :goto_2
    const-string v2, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 978
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 979
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 980
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v4, v6}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 983
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 984
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 985
    new-instance v2, Lcom/android/contacts/ProximitySensorManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_VVM_ID"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 990
    .local v25, "vvm_id":I
    const-string v2, "feature_directcall_disable"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    if-nez v2, :cond_8

    const/4 v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_8

    .line 994
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .line 995
    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate  set mDirectCallingManager = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  and mIsChangingConfiguration =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->loadPref()V

    .line 1010
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->refreshRCSeSettingValue(Landroid/content/Context;)V

    .line 1011
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1012
    new-instance v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    .line 1029
    :cond_9
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1031
    .local v22, "csc":Ljava/lang/String;
    const-string v2, "feature_volte_support_videocall"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1032
    const-string v2, "ATT"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "VZW"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1034
    :cond_a
    const v2, 0x7f09005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    const v2, 0x7f0900ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->voice_call_separator:Landroid/view/View;

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->enableVTbutton()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1037
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z

    .line 1043
    :cond_b
    :goto_3
    const v2, 0x7f090053

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVideoCallButtonView:Landroid/view/View;

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z

    if-eqz v2, :cond_e

    .line 1047
    const-string v2, "ATT"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1048
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    .line 1056
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    if-nez v2, :cond_d

    .line 1058
    const-string v2, "CallDetailActivity"

    const-string v3, "mImsInterface is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_d
    new-instance v2, Lcom/sec/android/app/contacts/uce/IMSinterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/android/app/contacts/uce/IMSinterface;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->imsCallLogUtil:Lcom/sec/android/app/contacts/uce/IMSinterface;

    .line 1063
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->imsCallLogUtil:Lcom/sec/android/app/contacts/uce/IMSinterface;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    if-eqz v2, :cond_e

    .line 1064
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->imsCallLogUtil:Lcom/sec/android/app/contacts/uce/IMSinterface;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/uce/IMSinterface;->createSipPresenceListener()Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 1065
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->imsCallLogUtil:Lcom/sec/android/app/contacts/uce/IMSinterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/contacts/uce/IMSinterface;->addListener(Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)I

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->registerToImsService()V

    .line 1071
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-nez v2, :cond_f

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    :cond_f
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_CALL_LOG_CONTACT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    .line 1086
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_1a

    .line 1087
    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_19

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1089
    .local v5, "voicemailUri":Landroid/net/Uri;
    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sjssjs onCREATE  voicemailUri =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->createScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1091
    move-object/from16 v21, p1

    .line 1092
    .local v21, "arguments":Landroid/os/Bundle;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->VVM_bundle:Landroid/os/Bundle;

    .line 1093
    const/4 v7, 0x1

    .line 1094
    .local v7, "startPlayback":Z
    const v2, 0x7f090067

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    .line 1096
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/PowerManager;

    .line 1098
    .local v24, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    .line 1102
    .local v9, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 1103
    .local v10, "audioManager":Landroid/media/AudioManager;
    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->createPlaybackViewImpl()Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;

    move-result-object v3

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v8

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/media/MediaPlayer;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/contacts/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;Landroid/media/AudioManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 1109
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    .line 1115
    .end local v5    # "voicemailUri":Landroid/net/Uri;
    .end local v7    # "startPlayback":Z
    .end local v9    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .end local v10    # "audioManager":Landroid/media/AudioManager;
    .end local v21    # "arguments":Landroid/os/Bundle;
    .end local v24    # "powerManager":Landroid/os/PowerManager;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v3, 0x7f090068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button_container:Landroid/view/View;

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;

    .line 1157
    :goto_7
    const-string v2, "feature_clear_cover"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1166
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    .line 1167
    const-string v2, "com.sec.android.app.dialertab.calllog.MISSED_CALL"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->registerReceiver()V

    .line 1172
    :cond_10
    return-void

    .line 910
    .end local v22    # "csc":Ljava/lang/String;
    .end local v25    # "vvm_id":I
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 936
    :cond_12
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v2, :cond_13

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 937
    const v2, 0x7f040015

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    .line 938
    const v2, 0x7f090040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    .line 939
    const v2, 0x7f09003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    .line 940
    const v2, 0x7f0900a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    goto/16 :goto_1

    .line 942
    :cond_13
    const-string v2, "feature_volte_support_videocall"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 943
    const v2, 0x7f04001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    .line 944
    const v2, 0x7f090040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    .line 945
    const v2, 0x7f09003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    .line 946
    const v2, 0x7f0900a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    goto/16 :goto_1

    .line 949
    :cond_14
    const v2, 0x7f04000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    .line 950
    const v2, 0x7f090040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    .line 951
    const v2, 0x7f09003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    .line 952
    const v2, 0x7f0900a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    goto/16 :goto_1

    .line 971
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 1039
    .restart local v22    # "csc":Ljava/lang/String;
    .restart local v25    # "vvm_id":I
    :cond_16
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z

    goto/16 :goto_3

    .line 1050
    :cond_17
    const-string v2, "VZW"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1052
    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mjs mImsInterface fetching with EAB TOKEN: mContext"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    goto/16 :goto_4

    .line 1078
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1111
    :cond_19
    const v2, 0x7f090067

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1120
    :cond_1a
    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_1b

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1122
    .restart local v5    # "voicemailUri":Landroid/net/Uri;
    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sjssjs onCREATE  voicemailUri =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->createScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1124
    move-object/from16 v21, p1

    .line 1125
    .restart local v21    # "arguments":Landroid/os/Bundle;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->VVM_bundle:Landroid/os/Bundle;

    .line 1126
    const/4 v7, 0x1

    .line 1127
    .restart local v7    # "startPlayback":Z
    const v2, 0x7f090067

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    .line 1128
    const v2, 0x7f0900a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout2:Landroid/view/View;

    .line 1130
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/PowerManager;

    .line 1132
    .restart local v24    # "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    .line 1136
    .restart local v9    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 1137
    .restart local v10    # "audioManager":Landroid/media/AudioManager;
    new-instance v11, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->createPlaybackViewImpl()Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->createPlaybackViewImpl2()Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;

    move-result-object v13

    new-instance v14, Landroid/media/MediaPlayer;

    invoke-direct {v14}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v18

    move-object v15, v5

    move/from16 v17, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/media/MediaPlayer;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/contacts/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;Landroid/media/AudioManager;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 1143
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    .line 1150
    .end local v5    # "voicemailUri":Landroid/net/Uri;
    .end local v7    # "startPlayback":Z
    .end local v9    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .end local v10    # "audioManager":Landroid/media/AudioManager;
    .end local v21    # "arguments":Landroid/os/Bundle;
    .end local v24    # "powerManager":Landroid/os/PowerManager;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;

    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;

    goto/16 :goto_7

    .line 1145
    :cond_1b
    const v2, 0x7f090067

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    .line 1146
    const v2, 0x7f0900a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout2:Landroid/view/View;

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout2:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 1153
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;

    goto/16 :goto_7
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v1, 0x0

    .line 3681
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 3683
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3684
    const v0, 0x7f0e01d6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3687
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v4, 0x7f120009

    const v3, 0x7f0904f5

    .line 3439
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v1, :cond_0

    const-string v1, "feature_easy_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3440
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3441
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 3442
    .local v0, "inflater":Landroid/view/MenuInflater;
    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3443
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 3444
    const/4 v1, 0x1

    .line 3450
    :goto_0
    return v1

    .line 3446
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3447
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 3448
    .restart local v0    # "inflater":Landroid/view/MenuInflater;
    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3449
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 3450
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4278
    const-string v0, "CallDetailActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 4281
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    .line 4283
    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4284
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4285
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4289
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    if-eqz v0, :cond_1

    .line 4290
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    .line 4291
    :cond_1
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVtCallButtonenabled:Z

    .line 4294
    const-string v0, "feature_directcall_disable"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    if-eqz v0, :cond_2

    .line 4295
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    if-nez v0, :cond_2

    .line 4296
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectCallingManager Unregitser onDestroy  =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->pause()V

    .line 4298
    sput-object v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .line 4302
    :cond_2
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4303
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->pinOnDestroy()V

    .line 4307
    :cond_3
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 4308
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 4309
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    .line 4310
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    .line 4311
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    .line 4316
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_4

    .line 4317
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->onDestroy()V

    .line 4333
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    if-eqz v0, :cond_6

    .line 4334
    const-string v0, "com.sec.android.app.dialertab.calllog.MISSED_CALL"

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4335
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->unregisterReceiver()V

    .line 4337
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->dismissMissedCallCover()V

    .line 4338
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    .line 4341
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 4342
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4343
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;

    .line 4345
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v0, :cond_8

    .line 4346
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 4347
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 4348
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 4350
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    .line 4351
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4352
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    .line 4354
    :cond_9
    return-void
.end method

.method public onImsEvents()V
    .locals 2

    .prologue
    .line 5108
    const-string v0, "CallDetailActivity"

    const-string v1, "onImsEvents: Change CallDetailActivity layout "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5109
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->changelayout()V

    .line 5110
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1461
    packed-switch p1, :pswitch_data_0

    .line 1486
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 1464
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1466
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1477
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1479
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1461
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 5297
    const-string v0, "CallDetailActivity"

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

    .line 5298
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 5299
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateWindowLayout()V

    .line 5301
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v8, 0x7f0e0327

    const v7, 0x7f0e009b

    const/4 v4, 0x1

    .line 3570
    const/4 v1, 0x0

    .line 3571
    .local v1, "i":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 3675
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_1
    return v4

    .line 3573
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->onHomeSelected()V

    goto :goto_1

    .line 3578
    :sswitch_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 3582
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-class v6, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3583
    .local v3, "restore_intent":Landroid/content/Intent;
    const-string v5, "VIP_Detail_Restore"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3584
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 3585
    const-string v5, "EXTRA_CALL_LOG_IDS"

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3589
    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3590
    const-string v5, "feature_chn"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3591
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    goto :goto_1

    .line 3587
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 3598
    .end local v3    # "restore_intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-class v6, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3599
    .local v2, "intent":Landroid/content/Intent;
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bVIP_BLog_Detail:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z

    if-eqz v5, :cond_2

    .line 3600
    const-string v5, "VIP_Detail_Delete"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3602
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    if-nez v5, :cond_4

    .line 3603
    const-string v5, "EXTRA_CALL_LOG_IDS"

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3607
    :goto_3
    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-eqz v5, :cond_3

    .line 3608
    const-string v5, "EXTRA_IS_ALL_LOGS"

    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDisplayAllLogs:Z

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3609
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDisplayAllLogs:Z

    .line 3612
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;)V

    .line 3613
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3614
    const-string v5, "feature_chn"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "feature_kdi"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-nez v5, :cond_0

    .line 3617
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    goto/16 :goto_1

    .line 3605
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 3621
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3622
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3623
    .local v0, "bar":Landroid/app/ActionBar;
    const-string v5, "feature_chn"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    .line 3624
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3625
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3627
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3629
    :cond_6
    const-string v5, "feature_hktw"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v0, :cond_9

    .line 3630
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3631
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3632
    :cond_7
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3633
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3635
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3639
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3642
    .end local v0    # "bar":Landroid/app/ActionBar;
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3646
    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v6, "0037"

    invoke-static {v5, v6}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 3647
    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    if-eqz v5, :cond_b

    .line 3648
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 3650
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3654
    :sswitch_6
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v6, "0037"

    invoke-static {v5, v6}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 3655
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3659
    :sswitch_7
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3664
    :sswitch_8
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configWhitelistNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3669
    :sswitch_9
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3571
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904ca -> :sswitch_1
        0x7f0904cb -> :sswitch_2
        0x7f0904cc -> :sswitch_3
        0x7f0904cd -> :sswitch_4
        0x7f0904ce -> :sswitch_5
        0x7f0904cf -> :sswitch_6
        0x7f0904d0 -> :sswitch_7
        0x7f0904d1 -> :sswitch_8
        0x7f0904d2 -> :sswitch_8
        0x7f0904d3 -> :sswitch_9
        0x7f0904d4 -> :sswitch_9
        0x7f0904f5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 4209
    const-string v0, "CallDetailActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->disableProximitySensor(Z)V

    .line 4213
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 4214
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 4216
    const-string v0, "feature_directcall_disable"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 4217
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    .line 4218
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    if-nez v0, :cond_0

    .line 4219
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectCallingManager Unregitser onPause  =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->pause()V

    .line 4224
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/util/AsyncTaskExecutor;->cancel(Z)Z

    .line 4226
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4227
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4229
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4231
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4232
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4233
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    .line 4243
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_3

    .line 4244
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsPostExcuteDone:Z

    if-nez v0, :cond_3

    .line 4245
    const-string v0, "feature_clear_cover"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4250
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4251
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 4265
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_4

    .line 4266
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPresenter:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->onPause()V

    .line 4268
    :cond_4
    return-void

    .line 4254
    :cond_5
    const-string v0, "CallDetailActivity"

    const-string v1, "Detail view is not arranged yet."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v13, 0x7f0904ce

    const v5, 0x7f0904d3

    const v4, 0x7f0904d1

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3458
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v0, :cond_0

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3461
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0e02f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move v0, v11

    .line 3565
    :goto_0
    return v0

    .line 3464
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0e02f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3465
    const v0, 0x7f0904ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3466
    const v0, 0x7f0904cd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3469
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bVIP_BLog_Detail:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z

    if-nez v0, :cond_2

    .line 3470
    :cond_1
    const v0, 0x7f0904cb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3472
    :cond_2
    const-string v0, "feature_tablet_selection_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3473
    const v0, 0x7f0904cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3477
    :goto_1
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3478
    const v0, 0x7f0904cf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3479
    const v0, 0x7f0904d0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3480
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3481
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3482
    const v0, 0x7f0904d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3483
    const v0, 0x7f0904d4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3485
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3486
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e039e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3487
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e039d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3490
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    if-eqz v0, :cond_5

    .line 3491
    const/4 v8, 0x0

    .line 3492
    .local v8, "nReject_match":I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3493
    .local v9, "rejectNum":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 3494
    .local v10, "where":Ljava/lang/StringBuffer;
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3495
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3496
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3497
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3498
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3499
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3500
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    .line 3504
    .local v2, "projection":[Ljava/lang/String;
    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3505
    const v0, 0x7f0904d0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3506
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v11, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v11, :cond_8

    .line 3508
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3509
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3516
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v11, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v11, :cond_a

    .line 3518
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3519
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3526
    :goto_3
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3527
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 3528
    .local v7, "isVoicemailNumber":Z
    if-eqz v7, :cond_4

    .line 3529
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3530
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3531
    const v0, 0x7f0904ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3558
    .end local v7    # "isVoicemailNumber":Z
    :cond_4
    :goto_4
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3560
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3561
    const v0, 0x7f0904cf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3565
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v8    # "nReject_match":I
    .end local v9    # "rejectNum":Ljava/lang/String;
    .end local v10    # "where":Ljava/lang/StringBuffer;
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_0

    .line 3476
    :cond_6
    const v0, 0x7f0904cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 3511
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "nReject_match":I
    .restart local v9    # "rejectNum":Ljava/lang/String;
    .restart local v10    # "where":Ljava/lang/StringBuffer;
    :cond_7
    const v0, 0x7f0904d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3514
    :cond_8
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3521
    :cond_9
    const v0, 0x7f0904d4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 3524
    :cond_a
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 3534
    :cond_b
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3535
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3536
    const v0, 0x7f0904d0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 3539
    :cond_c
    const-string v0, "feature_disable_call_rejection"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isEasyMode:Z

    if-eqz v0, :cond_d

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3541
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3545
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_f

    .line 3546
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 3547
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3551
    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 3549
    :cond_e
    const v0, 0x7f0904cf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 3553
    :cond_f
    const-string v0, "CallDetailActivity"

    const-string v1, "onPrepareOptionsMenu - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1184
    const-string v1, "CallDetailActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1186
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.contacts/phone_lookup"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1187
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z

    if-eqz v1, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "VIP_BlockedLogs_Detail"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bVIP_BLog_Detail:Z

    .line 1190
    :cond_0
    const-string v1, "feature_common_use_multisim"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, "preferredSimCondition":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_voice_call"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1193
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1194
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->setCurrentNetwork(Landroid/content/Context;)V

    .line 1199
    .end local v0    # "preferredSimCondition":I
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    if-eqz v1, :cond_2

    .line 1200
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 1201
    :cond_2
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    .line 1203
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->setSystemTime()V

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    .line 1207
    const-string v1, "feature_marvell_dsds"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1208
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getDualSimState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 1209
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isDualSim:Z

    .line 1215
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    if-nez v1, :cond_5

    .line 1216
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 1219
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_4

    .line 1220
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_a

    .line 1221
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    .line 1225
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    .line 1230
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 1232
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData(Ljava/lang/String;)V

    .line 1235
    :cond_5
    const-string v1, "feature_directcall_disable"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    if-nez v1, :cond_6

    .line 1237
    const-string v1, "CallDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectCallingManager regitser onResume  =>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->resume()V

    .line 1247
    :cond_6
    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->call_button:Landroid/widget/Button;

    .line 1298
    const-string v1, "feature_clear_cover"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1310
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->resumeMissedCallDialog()V

    .line 1313
    :cond_7
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_8

    .line 1314
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDisplayAllLogs:Z

    if-eqz v1, :cond_b

    .line 1315
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button_container:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateWindowLayout()V

    .line 1322
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSimCardIconIndex()V

    .line 1323
    return-void

    .line 1211
    :cond_9
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isDualSim:Z

    goto/16 :goto_0

    .line 1227
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;

    goto :goto_1

    .line 1317
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button_container:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1176
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1177
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState  mIsChangingConfiguration =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v0, "isChangingOrientation"

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1180
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 5310
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 4272
    const-string v0, "CallDetailActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 4274
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 5306
    return-void
.end method

.method public registerToImsService()V
    .locals 2

    .prologue
    .line 5102
    const-string v0, "CallDetailActivity"

    const-string v1, "registerToImsService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5103
    new-instance v0, Lcom/sec/android/app/contacts/uce/ImsDialerEventHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/uce/ImsDialerEventHandler;-><init>(Lcom/sec/android/app/contacts/uce/ImsEventCallback;)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEvtHandler:Lcom/sec/android/app/contacts/uce/ImsDialerEventHandler;

    .line 5104
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->imsCallLogUtil:Lcom/sec/android/app/contacts/uce/IMSinterface;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEvtHandler:Lcom/sec/android/app/contacts/uce/ImsDialerEventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/uce/IMSinterface;->registerEventCallback(Landroid/os/Handler;)V

    .line 5105
    return-void
.end method

.method public setCheckedOnOff(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z

    .prologue
    .line 4507
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4508
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4509
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4510
    return-void
.end method

.method public showMissedCallDialog()V
    .locals 4

    .prologue
    .line 5039
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    if-eqz v1, :cond_0

    .line 5040
    const-string v1, "CallDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMissedCallDialog  Dialong is showing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->isDialogShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5043
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->isDialogShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5044
    const-string v1, "CallDetailActivity"

    const-string v2, "showMissedCallDialog  Show Dialong"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5046
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 5047
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$25;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$25;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5056
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setRequestedOrientation(I)V

    .line 5058
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->displayDialog(Landroid/content/Context;)V

    .line 5060
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method updateCallDetailData()V
    .locals 1

    .prologue
    .line 4691
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData(Ljava/lang/String;)V

    .line 4693
    return-void
.end method
