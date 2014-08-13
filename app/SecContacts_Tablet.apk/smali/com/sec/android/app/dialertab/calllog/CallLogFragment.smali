.class public Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.super Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;,
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;,
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;,
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;,
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;,
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;,
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;
    }
.end annotation


# static fields
.field public static final BLOCKEDLOG:Ljava/lang/String; = "VIP_BlockedLogs"

.field public static final CLEAR_COVER_INTENT:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final COVEROPEN:Ljava/lang/String; = "coverOpen"

.field private static final DBG:Z

.field private static final DIALER_SEND_CHANGED_CALL_SETTINGS:Ljava/lang/String; = "com.sec.android.app.action.changed_call_settings"

.field private static final EMPTY_LOADER_ID:I = 0x0

.field public static FMC_MODE:Z = false

.field private static final IDX_CREATE:I = 0x0

.field private static final IDX_UPDATE:I = 0x1

.field public static final IS_SHOWING:Ljava/lang/String; = "is_showing"

.field public static final KEY_AUTO_REJECT_WHICHBUTTON:Ljava/lang/String; = "AutoRejectWhichButton"

.field public static final KEY_EASY_MODE_WHICHBUTTON:Ljava/lang/String; = "EasyModeWhichButton"

.field private static final KEY_MULTISELECTION_ENABLED:Ljava/lang/String; = "multiselectionEnabled"

.field private static final KEY_SELECTED_GROUP_IDS:Ljava/lang/String; = "selectedGroupIds"

.field private static final KEY_SELECTED_ITEMS_INFO:Ljava/lang/String; = "selectedItemsInfo"

.field public static final KEY_SIM_WHICHBUTTON:Ljava/lang/String; = "SIMWhichButton"

.field public static final KEY_WHICHBUTTON:Ljava/lang/String; = "WhichButton"

.field public static final LOGSLIST_PREF_NAME:Ljava/lang/String; = "logslist_pref"

.field public static final LOG_PROJECTION:[Ljava/lang/String;

.field public static final NAME_KEY:Ljava/lang/String; = "NAME"

.field public static final NUMBER_KEY:Ljava/lang/String; = "NUMBER"

.field private static final PREFERRED_SIM_ASK_ALWAYS:I = 0x1

.field private static final PREFERRED_SIM_CURRENT_NETWORK:I = 0x0

.field private static final PREFERRED_SIM_SIM1:I = 0x2

.field private static final PREFERRED_SIM_SIM2:I = 0x3

.field public static final PREF_KEY_REJECT_POPUP:Ljava/lang/String; = "reject_popup"

.field private static final QUERY_MAX_LEN:I = 0x64

.field public static final REGISTERINFO_URI:Landroid/net/Uri;

.field private static final SECRET_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_OFF"

.field private static final SECRET_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_ON"

.field public static final SELECTED_POS:Ljava/lang/String; = "SelectedPos"

.field private static final SPLIT_CHARACTER:Ljava/lang/String; = "\t"

.field private static final TAG:Ljava/lang/String; = "CallLogFragment"

.field public static final VIEW_BY_IDX_ALLCALLS:I = 0x1

.field public static final VIEW_BY_IDX_ALLLOGS:I = 0x0

.field public static final VIEW_BY_IDX_ALLMSGS:I = 0x6

.field public static final VIEW_BY_IDX_AUTO_REJECTED_CALL:I = 0x51

.field public static final VIEW_BY_IDX_AUTO_REJECTED_LOGS:I = 0x50

.field public static final VIEW_BY_IDX_AUTO_REJECTED_MSG:I = 0x52

.field public static final VIEW_BY_IDX_CONTENTS_SHARED:I = 0xb

.field public static final VIEW_BY_IDX_DIALLED:I = 0x3

.field public static final VIEW_BY_IDX_MISSED:I = 0x2

.field public static final VIEW_BY_IDX_RECEIVED:I = 0x4

.field public static final VIEW_BY_IDX_RECE_MSG:I = 0x8

.field public static final VIEW_BY_IDX_REFRESH:I = 0x63

.field public static final VIEW_BY_IDX_REJECTED_CALL:I = 0x5

.field public static final VIEW_BY_IDX_SEND_MSG:I = 0x7

.field public static final VIEW_BY_IDX_SIM1:I = 0xc

.field public static final VIEW_BY_IDX_SIM2:I = 0xd

.field public static final VIEW_BY_IDX_VIDEOCALLS:I = 0x9

.field public static final VIEW_BY_IDX_VOICECALLS:I = 0xf

.field public static final VIEW_BY_IDX_VOIPCALLS:I = 0xa

.field public static final VIEW_BY_IDX_VVM:I = 0xe

.field private static final WHICH_OP_ALL_DELETE:I = 0x1

.field private static final WHICH_OP_MULTI_DELETE:I = 0x2

.field public static afterDeleteActivity:Z

.field public static bCheckedBefore:Z

.field public static bVIP_BLog:Z

.field public static bViewVoicemail:Z

.field public static delete:Z

.field private static finishByDestroyOnSelectionMode:Z

.field public static iconIndexCDMA:I

.field public static iconIndexGSM:I

.field public static isFocusDetailView:Z

.field public static keyPressed:Z

.field public static mActionMode:Landroid/view/ActionMode;

.field public static mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

.field private static mCursorSize:I

.field public static mDoNotRefreshAfterDelete:Z

.field private static mDoNotResetSelectedItems:Z

.field public static mEnableVIPApp:Z

.field public static mIsKeepPosition:Z

.field public static mIsSingledelete:Z

.field private static mItemPosition:Ljava/lang/Integer;

.field private static mItemSize:Ljava/lang/Integer;

.field private static mMultiSelectDisabled:Z

.field private static mMultiSelectEnabled:Z

.field public static mSelectedGroupIds:Landroid/util/SparseIntArray;

.field public static mStrNumber:Ljava/lang/String;

.field private static mViewBy:I

.field public static mWidth:D

.field private static mstrName:Ljava/lang/String;

.field private static prevLogsCount:I

.field private static prevSelectedPosition:I

.field public static selectedPosion:I

.field public static showCalllogTip:Z

.field public static simNameCDMA:Ljava/lang/String;

.field public static simNameGSM:Ljava/lang/String;


# instance fields
.field private final CONTEXTMENU_BLACKLIST:I

.field private final CONTEXTMENU_BLOCKCONTACT:I

.field private final CONTEXTMENU_BLOCKNUMBER:I

.field private final CONTEXTMENU_CALL:I

.field private final CONTEXTMENU_CTC133CALLBACKCALL:I

.field private final CONTEXTMENU_CTCINTLROAMINGCALL:I

.field private final CONTEXTMENU_DELETE_LOG_SPAMMSG:I

.field private final CONTEXTMENU_EDITNUMBER:I

.field private final CONTEXTMENU_INSTANCE_LETTERING:I

.field private final CONTEXTMENU_REMOVEHISTORYLOG:I

.field private final CONTEXTMENU_REMOVELOG:I

.field private final CONTEXTMENU_REMOVE_FROM_BLACK_LIST:I

.field private final CONTEXTMENU_REMOVE_FROM_WHITE_LIST:I

.field private final CONTEXTMENU_RESTORE_LOG_SPAMMSG:I

.field private final CONTEXTMENU_SAVECONTACT:I

.field private final CONTEXTMENU_SENDINFO:I

.field private final CONTEXTMENU_SENDMSG:I

.field private final CONTEXTMENU_UNBLOCKCONTACT:I

.field private final CONTEXTMENU_VIEWCONTACT:I

.field private final CONTEXTMENU_WHITELIST:I

.field private bCoverOpen:Z

.field cnapname:Ljava/lang/String;

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field private empty_layout:Landroid/widget/LinearLayout;

.field fName:Ljava/lang/String;

.field public groupCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation
.end field

.field private isUsingTwoPanel:Z

.field lName:Ljava/lang/String;

.field private logs_tab:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field public mAddContactDlg:Landroid/app/AlertDialog;

.field public mAddToRejectListDialog:Landroid/app/AlertDialog;

.field private mAfterStartQuery:Z

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallLogFetched:Z

.field private mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

.field private mContext:Landroid/content/Context;

.field private mContextForDialog:Landroid/content/Context;

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverState:Z

.field public mDeleteLogDlg:Landroid/app/AlertDialog;

.field private mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private mEmptyLoaderRunning:Z

.field private mFragmentView:Landroid/view/View;

.field public mFromMissedCallNotify:Z

.field private mHandler:Landroid/os/Handler;

.field private mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

.field private mIsSplitStatus:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastWhichButton:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field protected mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

.field private mMenuVisible:Z

.field private mNoLogs:Landroid/widget/TextView;

.field private mNumberForDialog:Ljava/lang/String;

.field private mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetMissedCheck:Z

.field private mSavedContact:Z

.field mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mScrollState:I

.field public mScrollToTop:Z

.field private mSearchOn:Z

.field private mSearchQueryString:Ljava/lang/String;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectSimDlg:Landroid/app/AlertDialog;

.field private mSelectedAllMenuButton:Landroid/widget/Button;

.field private mSelectedItemsInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectedName:Ljava/lang/String;

.field private mSelectedNumber:Ljava/lang/String;

.field private mShowDelProgressDlg:Z

.field private mShowOptionsMenu:Z

.field private mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

.field mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mTabChanged:Z

.field private mTopIndex:I

.field private mTopOffset:I

.field private mViewByDlg:Landroid/app/AlertDialog;

.field private mViewVoicemailMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private mVoiceMailNumber1:Ljava/lang/String;

.field private mVoiceMailNumber2:Ljava/lang/String;

.field private mVoicemailStatusFetched:Z

.field public mWhichButton:I

.field public mWhichSelectSimId:I

.field public mWhichSimIdButton:I

.field private mWindowManager:Landroid/view/IWindowManager;

.field private prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

.field private previousCursorCount:I

.field private unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    .line 265
    const-string v0, "Slot 1"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    .line 266
    const-string v0, "Slot 2"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    .line 267
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    .line 268
    sput v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    .line 269
    const-string v0, "content://com.sec.provider.simcardmanagement/registerinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->REGISTERINFO_URI:Landroid/net/Uri;

    .line 282
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    .line 283
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delete:Z

    .line 339
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 340
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    .line 346
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    .line 367
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectedPosion:I

    .line 368
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    .line 369
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotRefreshAfterDelete:Z

    .line 379
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    .line 380
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSingledelete:Z

    .line 381
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevSelectedPosition:I

    .line 392
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsKeepPosition:Z

    .line 394
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showCalllogTip:Z

    .line 398
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->keyPressed:Z

    .line 403
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v0, v2

    const-string v3, "_id"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "cityid"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "cnap_name"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "fname"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "lname"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "type"

    aput-object v3, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->LOG_PROJECTION:[Ljava/lang/String;

    .line 413
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    .line 415
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    .line 4172
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    .line 4176
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotResetSelectedItems:Z

    .line 4178
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCursorSize:I

    .line 4186
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    .line 4188
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectDisabled:Z

    .line 4214
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewBy:I

    return-void

    :cond_0
    move v0, v2

    .line 230
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;-><init>()V

    .line 231
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    .line 255
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->previousCursorCount:I

    .line 261
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    .line 270
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    .line 271
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    .line 273
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 274
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSelectSimId:I

    .line 275
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 279
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    .line 280
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFromMissedCallNotify:Z

    .line 305
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    .line 312
    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_CALL:I

    .line 313
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDMSG:I

    .line 314
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_EDITNUMBER:I

    .line 315
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDINFO:I

    .line 316
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_VIEWCONTACT:I

    .line 317
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SAVECONTACT:I

    .line 318
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_BLOCKCONTACT:I

    .line 319
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_UNBLOCKCONTACT:I

    .line 320
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_BLOCKNUMBER:I

    .line 321
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVELOG:I

    .line 322
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_WHITELIST:I

    .line 323
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_BLACKLIST:I

    .line 324
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_CTCINTLROAMINGCALL:I

    .line 325
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_CTC133CALLBACKCALL:I

    .line 326
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVE_FROM_WHITE_LIST:I

    .line 327
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVE_FROM_BLACK_LIST:I

    .line 328
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_INSTANCE_LETTERING:I

    .line 329
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVEHISTORYLOG:I

    .line 332
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_RESTORE_LOG_SPAMMSG:I

    .line 333
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_DELETE_LOG_SPAMMSG:I

    .line 365
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTabChanged:Z

    .line 366
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    .line 371
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 377
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSplitStatus:Z

    .line 407
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    .line 408
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    .line 409
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 423
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCoverOpen:Z

    .line 442
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMenuVisible:Z

    .line 447
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    .line 454
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverState:Z

    .line 2930
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$24;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$24;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewVoicemailMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3798
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$33;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$33;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4180
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;

    .line 4182
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;

    .line 4190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    .line 4210
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    .line 4212
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowDelProgressDlg:Z

    .line 4222
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 4606
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverState:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog(I)V

    return-void
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 226
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewBy:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 226
    sput p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewBy:I

    return p0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(ZZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCoverOpen:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCoverOpen:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Landroid/view/IWindowManager;)Landroid/view/IWindowManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # Landroid/view/IWindowManager;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWindowManager:Landroid/view/IWindowManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V

    return-void
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 226
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    return p0
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 226
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCursorSize:I

    return v0
.end method

.method static synthetic access$3102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 226
    sput p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCursorSize:I

    return p0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectedItemInfo(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3500()Z
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotResetSelectedItems:Z

    return v0
.end method

.method static synthetic access$3502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 226
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotResetSelectedItems:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteConfirmDlg(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowDelProgressDlg:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowDelProgressDlg:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateVoicemailNotifications()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logsDBChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollState:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollState:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTopIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTopOffset:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    return-object v0
.end method

.method private callLogCoverReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 653
    const-string v1, "CallLogFragment"

    const-string v2, "callLogCoverReceiver()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 664
    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 665
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 681
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 660
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 661
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private cleanupResouces()V
    .locals 1

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3993
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 3994
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    .line 3995
    return-void
.end method

.method private createSearchBar()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1451
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f0900ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1452
    .local v0, "searchBarLinearLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 1453
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1455
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    .line 1456
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    if-nez v1, :cond_1

    .line 1534
    :goto_0
    return-void

    .line 1458
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1459
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 1460
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v5, v3, v5, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 1461
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 1462
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 1463
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0e01c2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1464
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchOn:Z

    .line 1465
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1511
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 904
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 905
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 906
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 908
    :cond_0
    return-void
.end method

.method private fadeInAnimation(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 4
    .param p1, "listview"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 1083
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1084
    .local v1, "fadeIn":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1085
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1087
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1088
    .local v0, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1090
    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1091
    return-void
.end method

.method private fillUpCallLog(Ljava/io/File;II)V
    .locals 21
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # I
    .param p3, "count"    # I

    .prologue
    .line 686
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    const-string v2, "CallLogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    new-instance v10, Lcom/sec/android/app/dialertab/calllog/DataReader;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/sec/android/app/dialertab/calllog/DataReader;-><init>(Ljava/lang/String;)V

    .line 691
    .local v10, "dataReader":Lcom/sec/android/app/dialertab/calllog/DataReader;
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    .line 692
    .local v17, "rand":Ljava/util/Random;
    const/16 v16, 0x1

    .line 693
    .local v16, "mCallLogFileExist":Z
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogData;-><init>(Landroid/content/Context;)V

    .line 694
    .local v1, "callLogData":Lcom/sec/android/app/dialertab/calllog/CallLogData;
    const-string v2, "CallLogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fillUpCallLog - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogData;->getCallLogTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v15, 0x0

    .line 697
    .local v15, "lineCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v13, v0, :cond_1

    .line 699
    :try_start_0
    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/DataReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 700
    .local v14, "line":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 708
    .end local v14    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/DataReader;->close()V

    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 711
    .local v7, "baseTime":J
    add-int/lit8 v2, v15, 0x1

    new-array v0, v2, [J

    move-object/from16 v18, v0

    .line 712
    .local v18, "timeStamps":[J
    move v13, v15

    :goto_2
    if-ltz v13, :cond_3

    .line 713
    aput-wide v7, v18, v13

    .line 714
    const/16 v2, 0x258

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    .line 715
    .local v11, "diff":I
    mul-int/lit16 v2, v11, 0x3e8

    int-to-long v5, v2

    sub-long/2addr v7, v5

    .line 712
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 703
    .end local v7    # "baseTime":J
    .end local v11    # "diff":I
    .end local v18    # "timeStamps":[J
    .restart local v14    # "line":Ljava/lang/String;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 697
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 704
    .end local v14    # "line":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 705
    .local v12, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 718
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v7    # "baseTime":J
    .restart local v18    # "timeStamps":[J
    :cond_3
    new-instance v10, Lcom/sec/android/app/dialertab/calllog/DataReader;

    .end local v10    # "dataReader":Lcom/sec/android/app/dialertab/calllog/DataReader;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/sec/android/app/dialertab/calllog/DataReader;-><init>(Ljava/lang/String;)V

    .line 719
    .restart local v10    # "dataReader":Lcom/sec/android/app/dialertab/calllog/DataReader;
    const/4 v13, 0x0

    :goto_3
    move/from16 v0, p3

    if-ge v13, v0, :cond_4

    .line 722
    :try_start_1
    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/DataReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 723
    .restart local v14    # "line":Ljava/lang/String;
    if-nez v14, :cond_5

    .line 749
    .end local v14    # "line":Ljava/lang/String;
    :cond_4
    :goto_4
    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/DataReader;->close()V

    .line 750
    if-eqz v16, :cond_9

    .line 751
    const-string v2, "CallLogFragment"

    const-string v5, "Call Log Fill Up is done"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_5
    return-void

    .line 726
    .restart local v14    # "line":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v2, "\t"

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 732
    .local v9, "callLogDatas":[Ljava/lang/String;
    array-length v2, v9

    const/4 v5, 0x2

    if-lt v2, v5, :cond_8

    .line 733
    add-int/lit8 v2, v13, 0x1

    aget-wide v5, v18, v2

    aget-wide v19, v18, v13

    sub-long v5, v5, v19

    const-wide/16 v19, 0x3e8

    div-long v5, v5, v19

    long-to-int v11, v5

    .line 734
    .restart local v11    # "diff":I
    const/4 v4, 0x0

    .line 735
    .local v4, "duration":I
    if-lez v11, :cond_6

    .line 736
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 738
    :cond_6
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 739
    .local v3, "calllogType":I
    if-lez v3, :cond_8

    const/4 v2, 0x3

    if-gt v3, v2, :cond_8

    .line 740
    const/4 v2, 0x3

    if-ne v3, v2, :cond_7

    .line 741
    const/4 v4, 0x0

    .line 744
    :cond_7
    const/4 v2, 0x1

    aget-object v2, v9, v2

    aget-wide v5, v18, v13

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/dialertab/calllog/CallLogData;->insert(Ljava/lang/String;IIJ)V

    .line 719
    .end local v3    # "calllogType":I
    .end local v4    # "duration":I
    .end local v11    # "diff":I
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 727
    .end local v9    # "callLogDatas":[Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 728
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 729
    const/16 v16, 0x0

    .line 730
    goto :goto_4

    .line 753
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v2, "CallLogFragment"

    const-string v5, "Call Log Fill Up failed. CallLog file does not exist"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private getSelectedItemInfo(I)V
    .locals 7
    .param p1, "itemCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 4782
    if-lez p1, :cond_3

    .line 4783
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 4784
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4785
    .local v3, "mNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4786
    .local v2, "mNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4787
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 4788
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 4789
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4790
    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4786
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4792
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4793
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 4796
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-string v5, "NUMBER"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4797
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-string v5, "NAME"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4800
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4801
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-string v5, "NUMBER"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;

    .line 4802
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 4803
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-string v5, "NAME"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;

    .line 4805
    .end local v1    # "i":I
    .end local v2    # "mNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "mNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public static getSelectionMode()Z
    .locals 1

    .prologue
    .line 4807
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    return v0
.end method

.method private loadPref()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1803
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1804
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "reject_popup"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 1805
    const-string v2, "permanent_save_view_by_setting"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1806
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1807
    .local v0, "parent":Landroid/app/Activity;
    instance-of v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;

    if-nez v2, :cond_1

    .line 1808
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_4

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1809
    const-string v2, "default_view_by_setting_allcalls"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1810
    const-string v2, "EasyModeWhichButton"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 1813
    :goto_0
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1814
    const-string v2, "SIMWhichButton"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 1815
    :cond_0
    const-string v2, "not_support_msg_logs"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1816
    const-string v2, "SIMWhichButton"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 1830
    .end local v0    # "parent":Landroid/app/Activity;
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v2, :cond_2

    .line 1831
    const-string v2, "AutoRejectWhichButton"

    const/16 v3, 0x50

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 1833
    :cond_2
    return-void

    .line 1812
    .restart local v0    # "parent":Landroid/app/Activity;
    :cond_3
    const-string v2, "EasyModeWhichButton"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_0

    .line 1818
    :cond_4
    const-string v2, "default_view_by_setting_allcalls"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1819
    const-string v2, "WhichButton"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 1822
    :goto_2
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1823
    const-string v2, "SIMWhichButton"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 1824
    :cond_5
    const-string v2, "not_support_msg_logs"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1825
    const-string v2, "SIMWhichButton"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    goto :goto_1

    .line 1821
    :cond_6
    const-string v2, "WhichButton"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_2
.end method

.method private logsDBChanged()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 4741
    const/4 v7, 0x0

    .line 4743
    .local v7, "tempSize":I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewBy:I

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4745
    .local v6, "tempCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 4746
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 4747
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4749
    :cond_0
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCursorSize:I

    if-eq v0, v7, :cond_1

    .line 4750
    const/4 v0, 0x1

    .line 4752
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3978
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3983
    :goto_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 3984
    .local v1, "imageView":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3985
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3988
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 3979
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3986
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3958
    if-eqz p1, :cond_1

    .line 3962
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 3964
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3965
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3967
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3968
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3965
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3970
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "index":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :catch_0
    move-exception v5

    .line 3972
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->nullViewDrawable(Landroid/view/View;)V

    .line 3974
    :cond_1
    return-void
.end method

.method private openSelectSimDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3205
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const v1, 0x7f0e03f2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3209
    .local v0, "items":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3210
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    .line 3214
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e03f1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$25;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$25;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    .line 3226
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$26;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$26;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3232
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3233
    return-void
.end method

.method private openViewByDialog()V
    .locals 11

    .prologue
    const v10, 0x7f0e02d4

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3236
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->haveVOIPCalls(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    .line 3237
    const/4 v1, 0x0

    .line 3238
    .local v1, "viewby_items_array":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 3239
    .local v0, "arrayId":I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 3240
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3241
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    .line 3244
    :cond_0
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3245
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_2

    .line 3246
    const v0, 0x7f080006

    .line 3357
    :cond_1
    :goto_0
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3358
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0309

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$27;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$27;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v10, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    .line 3424
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3425
    return-void

    .line 3247
    :cond_2
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    if-eqz v2, :cond_3

    .line 3248
    const v0, 0x7f080016

    goto :goto_0

    .line 3250
    :cond_3
    const v0, 0x7f080015

    goto :goto_0

    .line 3253
    :cond_4
    const-string v2, "feature_spr"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "feature_cspire"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3254
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_5

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3255
    const v0, 0x7f08000c

    goto :goto_0

    .line 3257
    :cond_5
    const v0, 0x7f08000b

    goto :goto_0

    .line 3260
    :cond_6
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3261
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_7

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3262
    const v0, 0x7f08000a

    goto :goto_0

    .line 3263
    :cond_7
    const-string v2, "feature_volte_support_videocall"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3264
    const v0, 0x7f080009

    goto/16 :goto_0

    .line 3266
    :cond_8
    const v0, 0x7f080008

    goto/16 :goto_0

    .line 3269
    :cond_9
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3270
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_a

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3271
    const v0, 0x7f08000f

    goto/16 :goto_0

    .line 3273
    :cond_a
    const v0, 0x7f08000e

    goto/16 :goto_0

    .line 3276
    :cond_b
    const-string v2, "feature_view_by_vvm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3277
    const v0, 0x7f08001c

    goto/16 :goto_0

    .line 3279
    :cond_c
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3280
    const v0, 0x7f080007

    goto/16 :goto_0

    .line 3282
    :cond_d
    const-string v2, "dcm_not_support_extra_calllog_type"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3283
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_e

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3284
    const v0, 0x7f080006

    goto/16 :goto_0

    .line 3286
    :cond_e
    const v0, 0x7f08000d

    goto/16 :goto_0

    .line 3289
    :cond_f
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3290
    const-string v2, "not_support_msg_logs"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3291
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_11

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3292
    const v0, 0x7f08001a

    .line 3307
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3309
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-nez v2, :cond_1

    .line 3310
    :cond_10
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3311
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    .line 3312
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    .line 3313
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 3314
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    .line 3318
    :goto_3
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 3319
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    .line 3323
    :goto_4
    const-string v2, "CallLogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simNameCDMA : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    const-string v2, "CallLogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simNameGSM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0400

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 3326
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0400

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    goto/16 :goto_0

    .line 3293
    :cond_11
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v2, :cond_12

    .line 3294
    const v0, 0x7f08001d

    goto/16 :goto_2

    .line 3296
    :cond_12
    const v0, 0x7f080019

    goto/16 :goto_2

    .line 3299
    :cond_13
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_14

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3300
    const v0, 0x7f080018

    goto/16 :goto_2

    .line 3301
    :cond_14
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v2, :cond_15

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v2, :cond_15

    .line 3302
    const v0, 0x7f08001d

    goto/16 :goto_2

    .line 3304
    :cond_15
    const v0, 0x7f080017

    goto/16 :goto_2

    .line 3316
    :cond_16
    const v2, 0x7f0e03ef

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    goto/16 :goto_3

    .line 3321
    :cond_17
    const v2, 0x7f0e03f0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    goto/16 :goto_4

    .line 3327
    :cond_18
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3328
    const-string v2, "not_support_msg_logs"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e0394

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 3330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e0395

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    goto/16 :goto_0

    .line 3332
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e0394

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 3333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e0395

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    goto/16 :goto_0

    .line 3339
    :cond_1a
    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3340
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_1b

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3341
    const v0, 0x7f080012

    goto/16 :goto_0

    .line 3343
    :cond_1b
    const v0, 0x7f080011

    goto/16 :goto_0

    .line 3346
    :cond_1c
    const-string v2, "feature_view_by_vvm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3347
    const v0, 0x7f08001b

    goto/16 :goto_0

    .line 3350
    :cond_1d
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_1e

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3351
    const v0, 0x7f080006

    goto/16 :goto_0

    .line 3353
    :cond_1e
    const v0, 0x7f080005

    goto/16 :goto_0

    .line 3382
    :cond_1f
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0309

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$29;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$29;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v10, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method private openViewByDialog(I)V
    .locals 4
    .param p1, "simcardId"    # I

    .prologue
    .line 3429
    const/4 v0, 0x0

    .line 3431
    .local v0, "arrayId":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3432
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->hide()V

    .line 3435
    :cond_0
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3436
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    if-eqz v1, :cond_1

    .line 3437
    const v0, 0x7f080016

    .line 3463
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0309

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02d4

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$31;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$31;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    .line 3493
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3495
    return-void

    .line 3439
    :cond_1
    const v0, 0x7f080015

    goto :goto_0

    .line 3441
    :cond_2
    const-string v1, "feature_spr"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3442
    const v0, 0x7f08000b

    goto :goto_0

    .line 3443
    :cond_3
    const-string v1, "feature_view_by_vvm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3444
    const v0, 0x7f08001c

    goto :goto_0

    .line 3445
    :cond_4
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3446
    const v0, 0x7f080007

    goto :goto_0

    .line 3447
    :cond_5
    const-string v1, "feature_view_by_vvm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3448
    const v0, 0x7f08001b

    goto :goto_0

    .line 3449
    :cond_6
    const-string v1, "feature_kdi"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3450
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v1, :cond_7

    const-string v1, "feature_easy_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3451
    const v0, 0x7f080012

    goto/16 :goto_0

    .line 3453
    :cond_7
    const v0, 0x7f080011

    goto/16 :goto_0

    .line 3456
    :cond_8
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v1, :cond_9

    const-string v1, "feature_easy_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3457
    const v0, 0x7f080006

    goto/16 :goto_0

    .line 3460
    :cond_9
    const v0, 0x7f080005

    goto/16 :goto_0
.end method

.method private refreshData(Z)V
    .locals 1
    .param p1, "mResetMissed"    # Z

    .prologue
    .line 3684
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 3685
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->invalidateCache()V

    .line 3686
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startCallsQuery()V

    .line 3687
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnEntry(Z)V

    .line 3689
    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 6

    .prologue
    .line 3694
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3696
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 3697
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 3708
    :goto_0
    const-string v3, "dcm_support_machichara_service"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_0

    .line 3710
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.nttdocomo.android.mascot"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 3712
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.android.mascot.DisablePopup.AbsentArriving"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3714
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.nttdocomo.android.mascot"

    const-string v4, "com.nttdocomo.android.mascot.service.MascotIntentService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3716
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3728
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return-void

    .line 3699
    .restart local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_2
    const-string v3, "CallLogFragment"

    const-string v4, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 3723
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3724
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CallLogFragment"

    const-string v4, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3718
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v0

    .line 3719
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v3, "CallLogFragment"

    const-string v4, "com.nttdocomo.android.mascot is not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3725
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_2
    move-exception v0

    .line 3726
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private showDeleteConfirmDlg(I)V
    .locals 10
    .param p1, "iOpIndex"    # I

    .prologue
    const v9, 0x7f0e0344

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4569
    const-string v4, "CallLogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDeleteConfirmDlg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 4571
    .local v0, "deleteLogsCount":I
    const/4 v2, 0x0

    .line 4572
    .local v2, "msg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4574
    .local v3, "title":Ljava/lang/String;
    if-ne p1, v7, :cond_0

    .line 4575
    const v4, 0x7f0e034d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4576
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4587
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e02f4

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;

    invoke-direct {v6, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e02d4

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$34;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$34;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 4603
    .local v1, "mDeleteConfirmDlg":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 4604
    return-void

    .line 4578
    .end local v1    # "mDeleteConfirmDlg":Landroid/app/AlertDialog;
    :cond_0
    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    .line 4579
    const v4, 0x7f0e034b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4580
    const v4, 0x7f0e0343

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4582
    :cond_1
    const v4, 0x7f0e034c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4583
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private showProgress()V
    .locals 3

    .prologue
    .line 4757
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 4758
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 4761
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 4763
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0221

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4767
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$36;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$36;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 4778
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 4779
    return-void
.end method

.method private updateOnEntry(Z)V
    .locals 2
    .param p1, "mResetMissed"    # Z

    .prologue
    .line 3738
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)V

    .line 3739
    .local v0, "entry":Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3740
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3741
    return-void
.end method

.method private updateOnExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3732
    const-string v0, "CallLogFragment"

    const-string v1, "========= updateOnExit ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(ZZ)V

    .line 3734
    return-void
.end method

.method private updateOnTransition(ZZ)V
    .locals 4
    .param p1, "onEntry"    # Z
    .param p2, "mResetMissed"    # Z

    .prologue
    .line 3746
    iput-boolean p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    .line 3747
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3752
    if-nez p1, :cond_0

    .line 3753
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 3755
    :cond_0
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOnTransition mResetMissed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    const-string v1, "feature_clear_cover"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3760
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverState:Z

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCoverOpen:Z

    .line 3767
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCoverOpen:Z

    if-eqz v1, :cond_2

    .line 3768
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 3784
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V

    .line 3785
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateVoicemailNotifications()V

    .line 3796
    :cond_2
    :goto_0
    return-void

    .line 3789
    :cond_3
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    if-nez v1, :cond_2

    .line 3790
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3791
    .local v0, "unlockReceiverfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3792
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    .line 3793
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateSweepActionFeasibility()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3861
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v4, :cond_1

    .line 3909
    :cond_0
    :goto_0
    return-void

    .line 3864
    :cond_1
    const-string v4, "CallLogFragment"

    const-string v5, "updateSweepActionFeasibility"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SweepOperationArea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3868
    .local v0, "cscSweepArea":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSweepActionEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3869
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 3870
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 3871
    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 3872
    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 3873
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v4, :cond_0

    .line 3874
    const-string v4, "ExcludeAvatar"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3876
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto :goto_0

    .line 3880
    :cond_2
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3881
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 3882
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 3883
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->configureSweepActionCallbackAndListener()V

    .line 3890
    :cond_3
    :goto_1
    const-string v4, "CallLogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSweepActionFeasibility, mSweepActionBarCallBack : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    const-string v4, "CallLogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSweepActionFeasibility, mSweepActionListener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 3893
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 3895
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v4, :cond_0

    .line 3897
    const-string v4, "ExcludeAvatar"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3899
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 3901
    .local v2, "photowidth":F
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0197

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 3903
    .local v1, "leftMargin":F
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0198

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 3905
    .local v3, "textGap":F
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    add-float v5, v2, v1

    const/high16 v6, 0x40000000

    div-float v6, v3, v6

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto/16 :goto_0

    .line 3885
    .end local v1    # "leftMargin":F
    .end local v2    # "photowidth":F
    .end local v3    # "textGap":F
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v4, :cond_3

    .line 3886
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->configureSweepActionCallbackAndListener()V

    goto/16 :goto_1
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    .prologue
    .line 3833
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3834
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3835
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.dialertab.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3836
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3838
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public SaveToContact()V
    .locals 18

    .prologue
    .line 2110
    const-string v1, "feature_cnam"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->LOG_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2115
    .local v14, "cursor_cityid":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2116
    .local v6, "city_id":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 2117
    const-string v1, "type"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 2118
    .local v16, "idxCallType":I
    const-string v1, "cnap_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2120
    .local v17, "idxCnapName":I
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2121
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2122
    .local v15, "iCallType":I
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2124
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    .line 2125
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    .line 2126
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 2128
    const/4 v1, 0x2

    if-eq v15, v1, :cond_0

    .line 2129
    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    .line 2130
    const/4 v1, 0x5

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    .line 2131
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 2134
    .end local v15    # "iCallType":I
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2135
    const/4 v14, 0x0

    .line 2136
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    if-eqz v1, :cond_1

    .line 2137
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firstname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Lastname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CnapName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " City ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->AddToContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    .end local v6    # "city_id":Ljava/lang/String;
    .end local v14    # "cursor_cityid":Landroid/database/Cursor;
    .end local v16    # "idxCallType":I
    .end local v17    # "idxCnapName":I
    :cond_2
    :goto_0
    return-void

    .line 2142
    :cond_3
    const-string v1, "feature_cnap"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v1, "content://logs/call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->LOG_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2147
    .local v13, "cursorCnap":Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 2148
    const-string v1, "type"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 2149
    .restart local v16    # "idxCallType":I
    const-string v1, "cnap_name"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2150
    .restart local v17    # "idxCnapName":I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2151
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2152
    .restart local v15    # "iCallType":I
    const/4 v1, 0x2

    if-eq v15, v1, :cond_4

    .line 2153
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 2156
    .end local v15    # "iCallType":I
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2157
    const/4 v13, 0x0

    .line 2159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->AddToContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2162
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->AddToContact(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2167
    .end local v13    # "cursorCnap":Landroid/database/Cursor;
    .end local v16    # "idxCallType":I
    .end local v17    # "idxCnapName":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->AddToContact(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method VIP_Delete_SpamMsgData(ILjava/lang/String;)V
    .locals 5
    .param p1, "logType"    # I
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2560
    const-string v1, "CallLogFragment"

    const-string v2, "======VIP_Delete_SpamMsgData()======"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    const/4 v0, 0x0

    .line 2562
    .local v0, "Duri":Landroid/net/Uri;
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_1

    .line 2564
    sget-object v1, Lcom/android/contacts/util/DummyFramework$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2565
    if-eqz v0, :cond_0

    .line 2566
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2572
    :cond_0
    :goto_0
    return-void

    .line 2567
    :cond_1
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 2568
    sget-object v1, Lcom/android/contacts/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2569
    if-eqz v0, :cond_0

    .line 2570
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method VIP_Restore_SpamMsgData(ILjava/lang/String;)V
    .locals 25
    .param p1, "logType"    # I
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    .line 2442
    const-string v2, "CallLogFragment"

    const-string v4, "======VIP_Restore_SpamMsgData()======"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    const/16 v2, 0x12c

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 2446
    const/4 v3, 0x0

    .line 2447
    .local v3, "Ruri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2449
    .local v8, "SpamCursor":Landroid/database/Cursor;
    sget-object v2, Lcom/android/contacts/util/DummyFramework$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2451
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getEnableDualMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "body"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "date"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "read"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "phonetype"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "card_mode"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2460
    :goto_0
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2462
    const-string v2, "address"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2463
    .local v11, "mAddress":Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2464
    .local v12, "mBody":Ljava/lang/String;
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 2465
    .local v18, "mTimeMills":J
    const-string v2, "read"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 2466
    .local v17, "mSMSRead":I
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIP] mAddress :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBody :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTimeMills :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSMSRead :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 2469
    .local v23, "sms_values":Landroid/content/ContentValues;
    const-string v2, "address"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    const-string v2, "body"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    const-string v2, "date"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2472
    const-string v2, "read"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2474
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getEnableDualMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2475
    const-string v2, "status"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2476
    .local v14, "mDeliveryStatus":I
    const-string v2, "phonetype"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2477
    .local v16, "mPhoneType":I
    const-string v2, "card_mode"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2478
    .local v13, "mCardMode":I
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIP] mDeliveryStatus :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPhoneType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", card_mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const-string v2, "status"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2481
    const-string v2, "phonetype"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2482
    const-string v2, "card_mode"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2484
    .end local v13    # "mCardMode":I
    .end local v14    # "mDeliveryStatus":I
    .end local v16    # "mPhoneType":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2487
    if-nez v17, :cond_1

    .line 2489
    new-instance v10, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.ACTION_RESTORE_MESSAGE"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2490
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2497
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "mAddress":Ljava/lang/String;
    .end local v12    # "mBody":Ljava/lang/String;
    .end local v17    # "mSMSRead":I
    .end local v18    # "mTimeMills":J
    .end local v23    # "sms_values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 2498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2556
    .end local v3    # "Ruri":Landroid/net/Uri;
    .end local v8    # "SpamCursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    return-void

    .line 2456
    .restart local v3    # "Ruri":Landroid/net/Uri;
    .restart local v8    # "SpamCursor":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "body"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "date"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "read"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_0

    .line 2494
    :cond_4
    if-eqz v8, :cond_1

    .line 2495
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2500
    .end local v3    # "Ruri":Landroid/net/Uri;
    .end local v8    # "SpamCursor":Landroid/database/Cursor;
    :cond_5
    const/16 v2, 0xc8

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 2501
    const/4 v3, 0x0

    .line 2502
    .restart local v3    # "Ruri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2503
    .restart local v8    # "SpamCursor":Landroid/database/Cursor;
    sget-object v2, Lcom/android/contacts/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v21

    .line 2507
    .local v21, "p":Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v22

    .line 2508
    .local v22, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v20

    .line 2509
    .local v20, "mmsUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getEnableDualMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "read"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "phonetype"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "card_mode"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2517
    :goto_3
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2519
    const-string v2, "read"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2520
    .local v15, "mMMSRead":I
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIP] mMMSRead :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 2524
    .local v24, "values":Landroid/content/ContentValues;
    const/4 v2, 0x1

    if-ne v15, v2, :cond_6

    .line 2525
    const-string v2, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2526
    const-string v2, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2529
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getEnableDualMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2530
    const-string v2, "phonetype"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2531
    .restart local v16    # "mPhoneType":I
    const-string v2, "card_mode"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2532
    .restart local v13    # "mCardMode":I
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIP] mPhoneType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", card_mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    const-string v2, "phonetype"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2535
    const-string v2, "card_mode"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2537
    .end local v13    # "mCardMode":I
    .end local v16    # "mPhoneType":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2539
    if-nez v15, :cond_8

    .line 2541
    new-instance v10, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.ACTION_RESTORE_MESSAGE"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2542
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2549
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v15    # "mMMSRead":I
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_8
    if-eqz v8, :cond_9

    .line 2550
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2552
    .end local v20    # "mmsUri":Landroid/net/Uri;
    .end local v22    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_9
    :goto_4
    if-eqz v3, :cond_2

    .line 2553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2514
    .restart local v20    # "mmsUri":Landroid/net/Uri;
    .restart local v22    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "read"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto/16 :goto_3

    .line 2546
    .end local v20    # "mmsUri":Landroid/net/Uri;
    .end local v22    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v9

    .line 2547
    .local v9, "e":Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2549
    if-eqz v8, :cond_9

    .line 2550
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 2549
    .end local v9    # "e":Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_b

    .line 2550
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2
.end method

.method public backPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4127
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4128
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    .line 4130
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4131
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 4143
    :cond_1
    :goto_0
    return-void

    .line 4133
    :cond_2
    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 4134
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewBy:I

    .line 4135
    const-string v0, "feature_view_by_vvm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4136
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    goto :goto_0

    .line 4140
    :cond_3
    const-string v0, "CallLogFragment"

    const-string v1, "mCallLogFragment.mFromMissedCallNotify = false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFromMissedCallNotify:Z

    goto :goto_0
.end method

.method public callSelectedEntry()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3527
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v5

    .line 3528
    .local v5, "position":I
    if-gez v5, :cond_0

    .line 3532
    const/4 v5, 0x0

    .line 3534
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 3535
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 3536
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3537
    .local v4, "number":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "P"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3574
    .end local v4    # "number":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3547
    .restart local v4    # "number":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3548
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "sip"

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3565
    .local v3, "intent":Landroid/content/Intent;
    :goto_1
    const-string v6, "feature_assistdialing"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3566
    const-string v6, "origin"

    const-string v7, "from_dialer"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3568
    :cond_3
    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3570
    const/high16 v6, 0x10800000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3572
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3553
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3554
    .local v0, "callType":I
    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eq v0, v7, :cond_5

    const/4 v6, 0x3

    if-ne v0, v6, :cond_6

    .line 3558
    :cond_5
    const/4 v6, 0x5

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3559
    .local v1, "countryIso":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v6, v4, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3561
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public clearCustomSearchResult()V
    .locals 3

    .prologue
    .line 1536
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchOn:Z

    if-eqz v0, :cond_1

    .line 1537
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1545
    :cond_1
    return-void
.end method

.method public clearDetail()V
    .locals 1

    .prologue
    .line 3933
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    if-eqz v0, :cond_0

    .line 3934
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onDetailClear()V

    .line 3935
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 3936
    return-void
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 1103
    const-string v0, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 1104
    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    .prologue
    .line 478
    const-string v0, "CallLogFragment"

    const-string v1, "configureSweepActionCallbackAndListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V

    .line 480
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Landroid/widget/Adapter;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 482
    return-void
.end method

.method public fetchLogs()V
    .locals 4

    .prologue
    .line 1703
    const-string v0, "feature_tablet_selection_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-eqz v0, :cond_0

    .line 1723
    :goto_0
    return-void

    .line 1708
    :cond_0
    const-string v0, "CallLogFragment"

    const-string v1, "========= fetchLogs ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_1

    .line 1711
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_1

    .line 1712
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    add-int/lit8 v0, v0, 0x50

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 1714
    :cond_1
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1715
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(II)V

    goto :goto_0

    .line 1717
    :cond_2
    const-string v0, "feature_support_call_log_search"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1720
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    goto :goto_0
.end method

.method public getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method public getEnableDualMode()Z
    .locals 1

    .prologue
    .line 2437
    const/4 v0, 0x0

    return v0
.end method

.method public getEnableMagazineCard()Z
    .locals 3

    .prologue
    .line 4161
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v2, "magazinecardservice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardManager;

    invoke-virtual {v1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isServiceEnabled()Z

    move-result v0

    .line 4162
    .local v0, "enableMagazinecard":Z
    if-eqz v0, :cond_0

    .line 4163
    const/4 v1, 0x1

    .line 4165
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInformationFromView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0900ec

    .line 4146
    const/4 v0, 0x0

    .line 4147
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x7f0900ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 4148
    .restart local v0    # "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 4150
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 4151
    .restart local v0    # "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    .line 4153
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 4154
    .restart local v0    # "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    .line 4156
    const v1, 0x7f0900ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 4157
    .restart local v0    # "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    .line 4158
    return-void
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method public getLogsCount()I
    .locals 1

    .prologue
    .line 3953
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    return v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method protected getSimCardInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4012
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4013
    const v2, 0x7f0e0394

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4014
    .local v0, "defaultSlot1Name":Ljava/lang/String;
    const v2, 0x7f0e0395

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4015
    .local v1, "defaultSlot2Name":Ljava/lang/String;
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 4016
    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    .line 4017
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    .line 4018
    sput v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    .line 4025
    :goto_0
    const-string v2, "ril.ICC_TYPE2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4026
    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    .line 4027
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    .line 4028
    sput v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    .line 4053
    .end local v0    # "defaultSlot1Name":Ljava/lang/String;
    .end local v1    # "defaultSlot2Name":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 4020
    .restart local v0    # "defaultSlot1Name":Ljava/lang/String;
    .restart local v1    # "defaultSlot2Name":Ljava/lang/String;
    :cond_1
    const-string v2, "gsm.sim.cardname"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    .line 4021
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    .line 4022
    const-string v2, "gsm.sim.icon"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    goto :goto_0

    .line 4030
    :cond_2
    const-string v2, "gsm.sim.cardname2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    .line 4031
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    .line 4032
    const-string v2, "gsm.sim.icon2"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    goto :goto_1

    .line 4034
    .end local v0    # "defaultSlot1Name":Ljava/lang/String;
    .end local v1    # "defaultSlot2Name":Ljava/lang/String;
    :cond_3
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4035
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    .line 4036
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    .line 4037
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 4038
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    .line 4042
    :goto_2
    const-string v2, "CallLogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim1 Icon iconIndexCDMA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simNameCDMA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_2"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    .line 4045
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    .line 4046
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 4047
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    .line 4051
    :goto_3
    const-string v2, "CallLogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim2 Icon iconIndexGSM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simNameGSM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4040
    :cond_4
    const v2, 0x7f0e03ef

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    goto :goto_2

    .line 4049
    :cond_5
    const v2, 0x7f0e03f0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    goto :goto_3
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 4056
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 4057
    .local v0, "FILE_PATH":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4058
    .local v3, "in":Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 4060
    .local v1, "current_slot":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4061
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 4062
    const-string v5, "CallForwardingTab"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot_Sel [read]<---------------------------------- : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4067
    if-eqz v4, :cond_3

    .line 4069
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4075
    :goto_0
    const/4 v3, 0x0

    .line 4079
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 4080
    const-string v1, "0"

    .line 4083
    :cond_1
    return-object v1

    .line 4070
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 4071
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4072
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 4073
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4063
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 4064
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "CallForwardingTab"

    const-string v6, "File open error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4067
    if-eqz v3, :cond_0

    .line 4069
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 4075
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 4070
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 4071
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4072
    :catch_4
    move-exception v2

    .line 4073
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 4067
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_2

    .line 4069
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 4075
    :goto_5
    const/4 v3, 0x0

    :cond_2
    throw v5

    .line 4070
    :catch_5
    move-exception v2

    .line 4071
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 4072
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 4073
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 4067
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 4063
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :cond_3
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 3583
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isSearchOn()Z
    .locals 1

    .prologue
    .line 1547
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchOn:Z

    return v0
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    .prologue
    .line 3856
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 760
    const-string v10, "CallLogFragment"

    const-string v11, "========= onCallsFetched ========="

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    .line 765
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 767
    if-eqz p1, :cond_0

    .line 770
    iget v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->previousCursorCount:I

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 771
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 773
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->previousCursorCount:I

    .line 775
    const/4 v3, 0x0

    .line 776
    .local v3, "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 777
    .local v6, "obj":Landroid/app/Activity;
    instance-of v10, v6, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v10, :cond_3

    move-object v3, v6

    .line 778
    check-cast v3, Lcom/android/contacts/activities/DialtactsActivity;

    .line 781
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 782
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 783
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 785
    .local v0, "currentLogCount":I
    if-eqz v0, :cond_4

    .line 786
    sget-boolean v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSingledelete:Z

    if-eqz v10, :cond_8

    .line 787
    const/4 v10, 0x1

    if-ne v0, v10, :cond_7

    .line 788
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 789
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    .line 834
    :cond_4
    :goto_1
    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    .line 835
    const/4 v10, 0x0

    sput-boolean v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSingledelete:Z

    .line 836
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    .line 837
    const/4 v10, 0x0

    sput-boolean v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsKeepPosition:Z

    .line 842
    .end local v0    # "currentLogCount":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 843
    iget-boolean v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v10, :cond_6

    .line 844
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    .line 851
    .local v2, "listView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 852
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 854
    .end local v2    # "listView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogFetched:Z

    .line 855
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    .line 857
    const-string v10, "feature_tablet_selection_mode"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 858
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCount()I

    move-result v0

    .line 859
    .restart local v0    # "currentLogCount":I
    const-string v10, "CallLogFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prevLogsCount==== "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "currentLogCount==== "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    sget v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    if-ge v10, v0, :cond_11

    sget-object v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-eqz v10, :cond_11

    .line 861
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 862
    .local v8, "tempSelectedGroupIds":Landroid/util/SparseIntArray;
    const/4 v9, 0x0

    .local v9, "tempdataCnt":I
    :goto_2
    sget-object v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_f

    .line 863
    sget-object v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 864
    .local v5, "mposition":I
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getGroupSize(I)I

    move-result v10

    invoke-virtual {v8, v5, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 862
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 791
    .end local v5    # "mposition":I
    .end local v8    # "tempSelectedGroupIds":Landroid/util/SparseIntArray;
    .end local v9    # "tempdataCnt":I
    :cond_7
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevSelectedPosition:I

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSelectedPos(I)V

    .line 792
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1

    .line 794
    :cond_8
    sget-boolean v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsKeepPosition:Z

    if-eqz v10, :cond_9

    .line 795
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1

    .line 797
    :cond_9
    sget v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    if-le v10, v0, :cond_a

    .line 798
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->clearDetail()V

    .line 799
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 800
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1

    .line 801
    :cond_a
    sget v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    if-ge v10, v0, :cond_4

    .line 802
    iget v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_c

    const-string v10, "feature_tmo"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "feature_vzw"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    const-string v10, "permanent_save_view_by_setting"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 806
    const/4 v10, 0x1

    iput v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    .line 808
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 809
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1

    .line 811
    :cond_c
    iget v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    if-eqz v10, :cond_d

    const-string v10, "feature_tmo"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "feature_vzw"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "permanent_save_view_by_setting"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 815
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    .line 817
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 818
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1

    .line 821
    :cond_d
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getSelectedPos()I

    move-result v10

    if-eqz v10, :cond_e

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->clearDetail()V

    .line 823
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v11}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getSelectedPos()I

    move-result v11

    sget v12, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    sub-int v12, v0, v12

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSelectedPos(I)V

    .line 824
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1

    .line 825
    :cond_e
    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    .line 826
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 827
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1

    .line 866
    .restart local v8    # "tempSelectedGroupIds":Landroid/util/SparseIntArray;
    .restart local v9    # "tempdataCnt":I
    :cond_f
    sget-object v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->clear()V

    .line 867
    const/4 v4, 0x0

    .local v4, "mPosition":I
    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCount()I

    move-result v10

    if-ge v4, v10, :cond_10

    .line 868
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    .line 867
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 870
    :cond_10
    const/4 v1, 0x0

    .local v1, "dataCnt":I
    :goto_4
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_11

    .line 871
    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 872
    .local v7, "position":I
    sget-object v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    sub-int v11, v0, v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v12, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getGroupSize(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 875
    .end local v1    # "dataCnt":I
    .end local v4    # "mPosition":I
    .end local v7    # "position":I
    .end local v8    # "tempSelectedGroupIds":Landroid/util/SparseIntArray;
    .end local v9    # "tempdataCnt":I
    :cond_11
    const-string v10, "CallLogFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCallsFeetched finishByDestroyOnSelectionMode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->finishByDestroyOnSelectionMode:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    sget-boolean v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->finishByDestroyOnSelectionMode:Z

    if-eqz v10, :cond_12

    .line 877
    const/4 v10, 0x0

    sput-boolean v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->finishByDestroyOnSelectionMode:Z

    .line 878
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActionMode()V

    .line 880
    :cond_12
    sget-object v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    if-eqz v10, :cond_13

    .line 881
    sget-object v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->setItemCheck()V

    .line 882
    :cond_13
    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 16
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1118
    invoke-super/range {p0 .. p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1120
    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    if-eqz v11, :cond_0

    .line 1121
    const-string v11, "CallLogFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onConfigurationChanged, this"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_2

    .line 1242
    :cond_1
    :goto_0
    return-void

    .line 1124
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v11, :cond_3

    .line 1125
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    if-eqz v11, :cond_3

    .line 1126
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1127
    .local v4, "index":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1128
    .local v9, "v":Landroid/view/View;
    if-nez v9, :cond_b

    const/4 v8, 0x0

    .line 1129
    .local v8, "offset":I
    :goto_1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTopIndex:I

    .line 1130
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTopOffset:I

    .line 1131
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1132
    .local v2, "config":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1145
    .end local v2    # "config":I
    .end local v4    # "index":I
    .end local v8    # "offset":I
    .end local v9    # "v":Landroid/view/View;
    :cond_3
    const-string v11, "feature_chn_duos"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1146
    move-object/from16 v0, p1

    iget v11, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    move-object/from16 v0, p1

    iget v11, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_c

    .line 1175
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isAdded()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v11, :cond_10

    .line 1177
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f090091

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f09008d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 1180
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-nez v11, :cond_6

    .line 1181
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f090090

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNoLogs:Landroid/widget/TextView;

    .line 1182
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNoLogs:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1183
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v11, :cond_f

    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v11, :cond_f

    .line 1184
    const/16 v11, 0x384

    iput v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1188
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNoLogs:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    :goto_4
    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v11, :cond_7

    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v11, :cond_7

    .line 1209
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f090090

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0e0308

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f090095

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0e0308

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 1213
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1218
    :cond_8
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1219
    .local v3, "heightValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const v12, 0x10102eb

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v3, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1223
    :cond_9
    const/4 v1, 0x0

    .line 1224
    .local v1, "actionBarHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isAdded()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1225
    iget v11, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 1229
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-nez v11, :cond_1

    .line 1230
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1232
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1128
    .end local v1    # "actionBarHeight":I
    .end local v3    # "heightValue":Landroid/util/TypedValue;
    .restart local v4    # "index":I
    .restart local v9    # "v":Landroid/view/View;
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    goto/16 :goto_1

    .line 1150
    .end local v4    # "index":I
    .end local v9    # "v":Landroid/view/View;
    :cond_c
    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v11, :cond_d

    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v11, :cond_d

    .line 1152
    const-string v11, "CallLogFragment"

    const-string v12, "Don\'t clearFocus when VIPmode for Option menu !!"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1156
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v10

    .line 1157
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_4

    .line 1158
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchOn:Z

    if-eqz v11, :cond_e

    instance-of v11, v10, Landroid/widget/SearchView$SearchAutoComplete;

    if-eqz v11, :cond_e

    .line 1159
    const-string v11, "CallLogFragment"

    const-string v12, "SearchView is open and focused,no need to clear focus"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1161
    :cond_e
    const-string v11, "CallLogFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currentFocus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1163
    invoke-virtual {v10}, Landroid/view/View;->clearFocus()V

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v10

    .line 1165
    if-eqz v10, :cond_4

    .line 1166
    const-string v11, "CallLogFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currentFocus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1168
    invoke-virtual {v10}, Landroid/view/View;->clearFocus()V

    goto/16 :goto_2

    .line 1186
    .end local v10    # "view":Landroid/view/View;
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    .line 1192
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f09008d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f090091

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 1195
    const-string v11, "feature_hvga"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1196
    const-string v11, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1197
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f090094

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1198
    .local v6, "mNoLogsText2":Landroid/widget/TextView;
    const/high16 v11, 0x41b00000

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f090095

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1200
    .local v7, "mNoLogsText3":Landroid/widget/TextView;
    const/high16 v11, 0x41900000

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1204
    .end local v6    # "mNoLogsText2":Landroid/widget/TextView;
    .end local v7    # "mNoLogsText3":Landroid/widget/TextView;
    :cond_11
    const-string v11, "feature_kor"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1205
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v12, 0x7f090095

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0e02aa

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 1235
    .restart local v1    # "actionBarHeight":I
    .restart local v3    # "heightValue":Landroid/util/TypedValue;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getOrientation()I

    move-result v11

    if-nez v11, :cond_13

    .line 1236
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1239
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 18
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2765
    invoke-super/range {p0 .. p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 2767
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v1, :cond_0

    .line 2769
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2782
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v1, :cond_2

    .line 2784
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    if-eqz v1, :cond_1

    .line 2785
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    .line 2786
    const/4 v1, 0x0

    .line 2926
    :goto_0
    return v1

    .line 2771
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showRestoreLogSpamMsgConfirmDlg()V

    .line 2772
    const/4 v1, 0x1

    goto :goto_0

    .line 2775
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogSpamMsgConfirmDlg()V

    .line 2776
    const/4 v1, 0x1

    goto :goto_0

    .line 2788
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 2926
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2790
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 2791
    const/4 v1, 0x1

    goto :goto_0

    .line 2793
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 2794
    const/4 v1, 0x1

    goto :goto_0

    .line 2797
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->SaveToContact()V

    .line 2798
    const/4 v1, 0x1

    goto :goto_0

    .line 2801
    :pswitch_5
    const/4 v12, -0x1

    .line 2802
    .local v12, "contact_Id":I
    const-wide/16 v13, -0x1

    .line 2804
    .local v13, "contact_profile_Id":J
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 2805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v6, "phone_lookup_with_profile"

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2811
    .local v16, "phonesCursor":Landroid/database/Cursor;
    if-eqz v16, :cond_4

    .line 2812
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 2813
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2814
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2816
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2819
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v13, v14}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewProfileContact(Landroid/content/Context;J)V

    .line 2862
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2821
    .end local v16    # "phonesCursor":Landroid/database/Cursor;
    :cond_5
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2822
    const-string v1, "CallLogFragment"

    const-string v3, "onContextItemSelected : URI query"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2824
    .local v2, "contactRef":Landroid/net/Uri;
    const-string v4, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 2827
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 2828
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2834
    .restart local v16    # "phonesCursor":Landroid/database/Cursor;
    if-eqz v16, :cond_7

    .line 2835
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 2836
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2837
    const-string v1, "contact_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2840
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2842
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    goto :goto_1

    .line 2844
    .end local v2    # "contactRef":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "phonesCursor":Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2850
    .restart local v16    # "phonesCursor":Landroid/database/Cursor;
    if-eqz v16, :cond_a

    .line 2851
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 2852
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2853
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2855
    :cond_9
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2858
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 2865
    .end local v12    # "contact_Id":I
    .end local v13    # "contact_profile_Id":J
    .end local v16    # "phonesCursor":Landroid/database/Cursor;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    .line 2866
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2869
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 2870
    .local v17, "pref":Landroid/content/SharedPreferences;
    const-string v1, "reject_popup"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 2871
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v1, :cond_b

    .line 2872
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2875
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2874
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 2878
    .end local v17    # "pref":Landroid/content/SharedPreferences;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 2879
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2882
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 2883
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2886
    :pswitch_a
    const/4 v15, 0x0

    .line 2887
    .local v15, "nameText":Ljava/lang/String;
    sget-object v15, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    .line 2888
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSavedContact:Z

    if-nez v1, :cond_c

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2889
    sget-object v15, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 2890
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v15, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2894
    .end local v15    # "nameText":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg()V

    .line 2895
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2898
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteHistoryLogsConfirmDlg()V

    .line 2899
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2903
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configWhitelistNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 2904
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2908
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 2909
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2912
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeIntlRoamingCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 2913
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2916
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->make133CallbackCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 2917
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2920
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2921
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2769
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2788
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 537
    const-string v7, "CallLogFragment"

    const-string v8, "========= onCreate ========="

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    .line 541
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    .line 543
    sget-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v7, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "VIP_BlockedLogs"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    .line 547
    :cond_0
    const-string v7, "feature_chn_duos_cdma_gsm"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 548
    invoke-static {v11}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MultiSimTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 558
    :goto_0
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;)V

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    .line 559
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 560
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 562
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 563
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    .line 570
    invoke-virtual {p0, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 571
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->loadPref()V

    .line 572
    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    sput v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewBy:I

    .line 573
    const-string v7, "feature_tmo"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "feature_vzw"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 574
    :cond_1
    iput v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 576
    :cond_2
    const/4 v4, 0x0

    .line 577
    .local v4, "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 578
    .local v5, "obj":Landroid/app/Activity;
    instance-of v7, v5, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v7, :cond_3

    move-object v4, v5

    .line 579
    check-cast v4, Lcom/android/contacts/activities/DialtactsActivity;

    .line 582
    :cond_3
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-nez v7, :cond_4

    .line 583
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v7

    if-eq v7, v11, :cond_4

    .line 584
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    :cond_4
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, "salesCode":Ljava/lang/String;
    const-string v7, "PAP"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 604
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "calllog_import"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 606
    .local v1, "demoImport":I
    if-lez v1, :cond_a

    .line 607
    :try_start_0
    const-string v7, "CallLogFragment"

    const-string v8, "insert Call logs for LDU"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "calllog_import"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 609
    new-instance v0, Ljava/io/File;

    const-string v7, "/storage/sdcard0/LiveDemo/calllog.txt"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "callLogDir":Ljava/io/File;
    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-direct {p0, v0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fillUpCallLog(Ljava/io/File;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v0    # "callLogDir":Ljava/io/File;
    .end local v1    # "demoImport":I
    :cond_5
    :goto_1
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    .line 628
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 629
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v7, "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_ON"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    const-string v7, "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_OFF"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 633
    const-string v7, "feature_clear_cover"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 640
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->callLogCoverReceiver(Landroid/content/Context;)V

    .line 644
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->refreshRCSeSettingValue(Landroid/content/Context;)V

    .line 646
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v7, :cond_7

    .line 647
    iput-boolean v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    .line 649
    :cond_7
    return-void

    .line 549
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v5    # "obj":Landroid/app/Activity;
    .end local v6    # "salesCode":Ljava/lang/String;
    :cond_8
    const-string v7, "feature_common_dsds_support "

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "feature_common_use_multisim"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 551
    invoke-static {v9}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 552
    invoke-static {v9}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber1:Ljava/lang/String;

    .line 553
    invoke-static {v11}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber2:Ljava/lang/String;

    goto/16 :goto_0

    .line 555
    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 612
    .restart local v1    # "demoImport":I
    .restart local v4    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .restart local v5    # "obj":Landroid/app/Activity;
    .restart local v6    # "salesCode":Ljava/lang/String;
    :cond_a
    :try_start_1
    const-string v7, "CallLogFragment"

    const-string v8, "Need Not Import..."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 614
    :catch_0
    move-exception v2

    .line 615
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CallLogFragment"

    const-string v8, "exception to insert logs"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 25
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1836
    invoke-super/range {p0 .. p3}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1838
    const-string v2, "feature_tablet_selection_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2105
    :cond_0
    :goto_0
    return-void

    .line 1842
    :cond_1
    const-string v2, "CallLogFragment"

    const-string v4, "========= onCreateContextMenu ========="

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string v2, "feature_folder_type"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1845
    const/16 v17, 0x0

    .line 1846
    .local v17, "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    .line 1847
    .local v19, "obj":Landroid/app/Activity;
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v2, :cond_2

    move-object/from16 v17, v19

    .line 1848
    check-cast v17, Lcom/android/contacts/activities/DialtactsActivity;

    .line 1850
    :cond_2
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1856
    .end local v17    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v19    # "obj":Landroid/app/Activity;
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    .line 1859
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    move-object v15, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    .local v15, "info":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    const/16 v23, 0x0

    .line 1866
    .local v23, "tv":Landroid/widget/TextView;
    const v2, 0x7f0900ee

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1867
    .restart local v23    # "tv":Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 1869
    const v2, 0x7f0900ec

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1870
    .restart local v23    # "tv":Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    .line 1872
    const v2, 0x7f0900ec

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1873
    .restart local v23    # "tv":Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    .line 1875
    const v2, 0x7f0900ef

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1876
    .restart local v23    # "tv":Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    .line 1878
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1879
    const/16 v16, 0x0

    .line 1881
    .local v16, "iv":Landroid/widget/ImageView;
    const v2, 0x7f0900ed

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "iv":Landroid/widget/ImageView;
    check-cast v16, Landroid/widget/ImageView;

    .line 1882
    .restart local v16    # "iv":Landroid/widget/ImageView;
    if-eqz v16, :cond_6

    .line 1883
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 1884
    .local v22, "simCardId":I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_5

    .line 1885
    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 1889
    :goto_1
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simCardId:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " mVoiceMailNumber"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    .end local v16    # "iv":Landroid/widget/ImageView;
    .end local v22    # "simCardId":I
    :cond_4
    :goto_2
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v2, :cond_8

    .line 1898
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 1899
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1903
    :goto_3
    const/4 v2, 0x1

    const/16 v4, 0x13

    const/4 v7, 0x0

    const v8, 0x7f0e04c5

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1904
    const/4 v2, 0x1

    const/16 v4, 0x14

    const/4 v7, 0x0

    const v8, 0x7f0e02f4

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1860
    .end local v15    # "info":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    .end local v23    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v14

    .line 1861
    .local v14, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v14}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto/16 :goto_0

    .line 1887
    .end local v14    # "e":Ljava/lang/ClassCastException;
    .restart local v15    # "info":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    .restart local v16    # "iv":Landroid/widget/ImageView;
    .restart local v22    # "simCardId":I
    .restart local v23    # "tv":Landroid/widget/TextView;
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    goto :goto_1

    .line 1891
    .end local v22    # "simCardId":I
    :cond_6
    const-string v2, "CallLogFragment"

    const-string v4, "iv null(iv)"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1901
    .end local v16    # "iv":Landroid/widget/ImageView;
    :cond_7
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_3

    .line 1908
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1909
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1910
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1911
    const/4 v2, 0x1

    const/16 v4, 0xa

    const/4 v7, 0x0

    const v8, 0x7f0e02f6

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1913
    :cond_9
    const/4 v2, 0x1

    const/16 v4, 0xa

    const/4 v7, 0x0

    const v8, 0x7f0e02f4

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1917
    :cond_a
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 1918
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1939
    :goto_4
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_b
    const-string v2, "feature_common_use_multisim"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1941
    const/16 v22, 0x0

    .line 1942
    .restart local v22    # "simCardId":I
    const/16 v16, 0x0

    .line 1943
    .restart local v16    # "iv":Landroid/widget/ImageView;
    const v2, 0x7f0900ed

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "iv":Landroid/widget/ImageView;
    check-cast v16, Landroid/widget/ImageView;

    .line 1944
    .restart local v16    # "iv":Landroid/widget/ImageView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_12

    .line 1945
    const/16 v22, 0x0

    .line 1950
    :goto_5
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dsds - simCardId :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    if-nez v22, :cond_13

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber1:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 1956
    :goto_6
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dsds - mVoiceMailNumber :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    .end local v16    # "iv":Landroid/widget/ImageView;
    .end local v22    # "simCardId":I
    :cond_c
    :goto_7
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1981
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1982
    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x0

    const v8, 0x7f0e0234

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1985
    :cond_d
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1986
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 1990
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    .line 1991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v7, "phone_lookup_with_profile"

    invoke-static {v4, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2017
    .local v20, "phonesCursor":Landroid/database/Cursor;
    :goto_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSavedContact:Z

    .line 2018
    if-eqz v20, :cond_1a

    .line 2019
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_19

    .line 2020
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSavedContact:Z

    .line 2021
    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v7, 0x0

    const v8, 0x7f0e02fa

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2022
    const/4 v2, 0x1

    const/4 v4, 0x5

    const/4 v7, 0x0

    const v8, 0x7f0e02fb

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2027
    :goto_9
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2034
    :goto_a
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 2035
    const/16 v18, 0x0

    .line 2036
    .local v18, "nReject_match":I
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2037
    .local v21, "rejectNum":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 2038
    .local v24, "where":Ljava/lang/StringBuffer;
    const-string v2, "reject_number="

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2039
    const-string v2, "\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2040
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2041
    const-string v2, "\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2042
    const-string v2, " AND reject_match="

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2043
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2044
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "reject_number"

    aput-object v4, v9, v2

    .line 2048
    .local v9, "projection":[Ljava/lang/String;
    const-string v2, "ctc_vip_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v2, v4, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-static {v2, v4, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    .line 2051
    const/4 v2, 0x1

    const/16 v4, 0xf

    const/4 v7, 0x0

    const v8, 0x7f0e039e

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2055
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v2, v4, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v2, v4, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    .line 2057
    const/4 v2, 0x1

    const/16 v4, 0x10

    const/4 v7, 0x0

    const v8, 0x7f0e039d

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2090
    .end local v9    # "projection":[Ljava/lang/String;
    .end local v18    # "nReject_match":I
    .end local v21    # "rejectNum":Ljava/lang/String;
    .end local v24    # "where":Ljava/lang/StringBuffer;
    :cond_f
    :goto_c
    const-string v2, "instant_lettering"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2092
    const/4 v2, 0x1

    const/16 v4, 0x11

    const/4 v7, 0x0

    const v8, 0x7f0e0467

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2096
    :cond_10
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2097
    const/4 v2, 0x1

    const/16 v4, 0xa

    const/4 v7, 0x0

    const v8, 0x7f0e02f6

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2101
    :goto_d
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2102
    const/4 v2, 0x1

    const/16 v4, 0x12

    const/4 v7, 0x0

    const v8, 0x7f0e02f7

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1920
    .end local v20    # "phonesCursor":Landroid/database/Cursor;
    :cond_11
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_4

    .line 1948
    .restart local v16    # "iv":Landroid/widget/ImageView;
    .restart local v22    # "simCardId":I
    :cond_12
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_5

    .line 1954
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber2:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_6

    .line 1957
    .end local v16    # "iv":Landroid/widget/ImageView;
    .end local v22    # "simCardId":I
    :cond_14
    const-string v2, "feature_common_use_multisim"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1959
    const/16 v22, 0x0

    .line 1960
    .restart local v22    # "simCardId":I
    const/16 v16, 0x0

    .line 1961
    .restart local v16    # "iv":Landroid/widget/ImageView;
    const v2, 0x7f0900ed

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "iv":Landroid/widget/ImageView;
    check-cast v16, Landroid/widget/ImageView;

    .line 1962
    .restart local v16    # "iv":Landroid/widget/ImageView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    .line 1963
    const/16 v22, 0x0

    .line 1967
    :goto_e
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MultiSIM - simCardId :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    if-nez v22, :cond_16

    .line 1969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber1:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 1973
    :goto_f
    const-string v2, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MultiSIM - mVoiceMailNumber :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1965
    :cond_15
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    goto :goto_e

    .line 1971
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber2:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    goto :goto_f

    .line 1996
    .end local v16    # "iv":Landroid/widget/ImageView;
    .end local v22    # "simCardId":I
    :cond_17
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1997
    const-string v2, "CallLogFragment"

    const-string v4, "onCreateContextMenu : URI query"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1999
    .local v3, "contactRef":Landroid/net/Uri;
    const-string v5, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 2002
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 2003
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2009
    .restart local v20    # "phonesCursor":Landroid/database/Cursor;
    goto/16 :goto_8

    .line 2010
    .end local v3    # "contactRef":Landroid/net/Uri;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "phonesCursor":Landroid/database/Cursor;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .restart local v20    # "phonesCursor":Landroid/database/Cursor;
    goto/16 :goto_8

    .line 2024
    :cond_19
    const/4 v2, 0x1

    const/4 v4, 0x6

    const/4 v7, 0x0

    const v8, 0x7f0e02fc

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2025
    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v7, 0x0

    const v8, 0x7f0e02fa

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 2029
    :cond_1a
    const/4 v2, 0x1

    const/4 v4, 0x6

    const/4 v7, 0x0

    const v8, 0x7f0e02fc

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2030
    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v7, 0x0

    const v8, 0x7f0e02fa

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 2053
    .restart local v9    # "projection":[Ljava/lang/String;
    .restart local v18    # "nReject_match":I
    .restart local v21    # "rejectNum":Ljava/lang/String;
    .restart local v24    # "where":Ljava/lang/StringBuffer;
    :cond_1b
    const/4 v2, 0x1

    const/16 v4, 0xb

    const/4 v7, 0x0

    const v8, 0x7f0e039e

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 2059
    :cond_1c
    const/4 v2, 0x1

    const/16 v4, 0xc

    const/4 v7, 0x0

    const v8, 0x7f0e039d

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 2061
    :cond_1d
    const-string v2, "call_block_ui"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 2063
    const/4 v2, 0x1

    const/16 v4, 0x9

    const/4 v7, 0x0

    const v8, 0x7f0e03a6

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 2066
    :cond_1e
    const-string v2, "feature_disable_call_rejection"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 2068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v2, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2072
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_22

    .line 2073
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2074
    :cond_1f
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_21

    .line 2075
    const/4 v2, 0x1

    const/4 v4, 0x7

    const/4 v7, 0x0

    const v8, 0x7f0e02fd

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2082
    :cond_20
    :goto_10
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    .line 2078
    :cond_21
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v7, 0x0

    const v8, 0x7f0e0302

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_10

    .line 2084
    :cond_22
    const-string v2, "CallLogFragment"

    const-string v4, "onCreateContextMenu - Cursor c is null"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2099
    .end local v9    # "projection":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v18    # "nReject_match":I
    .end local v21    # "rejectNum":Ljava/lang/String;
    .end local v24    # "where":Ljava/lang/StringBuffer;
    :cond_23
    const/4 v2, 0x1

    const/16 v4, 0xa

    const/4 v7, 0x0

    const v8, 0x7f0e02f4

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 2943
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2945
    const-string v1, "feature_tablet_selection_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2946
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-eqz v1, :cond_1

    .line 2969
    :cond_0
    :goto_0
    return-void

    .line 2951
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v1, :cond_3

    .line 2952
    const-string v1, "feature_view_by_vvm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2953
    const v1, 0x7f120006

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2954
    const v1, 0x7f0904e4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2956
    .local v0, "viewVoicemail":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2957
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2958
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2959
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewVoicemailMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 2962
    .end local v0    # "viewVoicemail":Landroid/view/MenuItem;
    :cond_2
    const v1, 0x7f120004

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 2965
    :cond_3
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v1, :cond_0

    .line 2966
    const v1, 0x7f120026

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 926
    const-string v6, "CallLogFragment"

    const-string v7, "========= onCreateView ========="

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 932
    const v6, 0x7f040021

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    .line 935
    :cond_0
    const-string v6, "feature_spr"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "feature_cspire"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 937
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f090090

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0e0307

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 938
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f090095

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0e0307

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 941
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 942
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 943
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v6, :cond_8

    .line 944
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 945
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFocusable(Z)V

    .line 946
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setChoiceMode(I)V

    .line 974
    :cond_2
    :goto_0
    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 975
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v7, 0x3f000000

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVelocityScale(F)V

    .line 976
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f090090

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0e02aa

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 979
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v6, :cond_d

    .line 980
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f09008d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 982
    const-string v6, "feature_hvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 983
    const-string v6, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 984
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f09008f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 985
    .local v1, "mNoLogsText":Landroid/widget/TextView;
    const/high16 v6, 0x41b00000

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 986
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f090090

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 987
    .local v2, "mNoLogsText1":Landroid/widget/TextView;
    const/high16 v6, 0x41900000

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1005
    .end local v1    # "mNoLogsText":Landroid/widget/TextView;
    .end local v2    # "mNoLogsText1":Landroid/widget/TextView;
    :cond_5
    :goto_1
    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v6, :cond_6

    .line 1007
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f090090

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0e0308

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1008
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f090095

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0e0308

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1011
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1013
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f09008c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    .line 1015
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-nez v6, :cond_7

    .line 1016
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1017
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1020
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    return-object v6

    .line 948
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    goto/16 :goto_0

    .line 951
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 953
    const/4 v0, 0x0

    .line 954
    .local v0, "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 955
    .local v5, "obj":Landroid/app/Activity;
    instance-of v6, v5, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v6, :cond_a

    move-object v0, v5

    .line 956
    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    .line 959
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 960
    const-string v6, "feature_scroll_fragment"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 961
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "swipe_to_call_message"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 968
    :cond_b
    :goto_2
    const-string v6, "feature_chn_duos"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 969
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFocusable(Z)V

    goto/16 :goto_0

    .line 963
    :cond_c
    const-string v6, "CallLogFragment"

    const-string v7, "onCreateView : setSweepActionEnabled"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    goto :goto_2

    .line 993
    .end local v0    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v5    # "obj":Landroid/app/Activity;
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f090091

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 995
    const-string v6, "feature_hvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 996
    const-string v6, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 997
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f090094

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 998
    .local v3, "mNoLogsText2":Landroid/widget/TextView;
    const/high16 v6, 0x41b00000

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 999
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f090095

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1000
    .local v4, "mNoLogsText3":Landroid/widget/TextView;
    const/high16 v6, 0x41900000

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1637
    const-string v0, "CallLogFragment"

    const-string v1, "========= onDestroy ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onDestroy()V

    .line 1639
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1640
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1646
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cleanupResouces()V

    .line 1653
    const-string v0, "feature_clear_cover"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1659
    :cond_0
    const-string v0, "feature_tablet_selection_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1660
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1661
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->finishByDestroyOnSelectionMode:Z

    if-nez v0, :cond_1

    .line 1662
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->finishByDestroyOnSelectionMode:Z

    .line 1663
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotResetSelectedItems:Z

    .line 1665
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1668
    :cond_2
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1672
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onDestroyView()V

    .line 1675
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1677
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 1678
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 1679
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 1680
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_1

    .line 1684
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 1686
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    if-eqz v0, :cond_2

    .line 1687
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 1689
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cleanupResouces()V

    .line 1690
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    const/16 v7, 0x50

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3063
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    move v4, v5

    .line 3199
    :cond_0
    :goto_0
    return v4

    .line 3065
    :sswitch_0
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delete:Z

    .line 3066
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActionMode()V

    .line 3067
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v5, :cond_1

    .line 3068
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 3070
    :cond_1
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    if-eqz v5, :cond_0

    .line 3071
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->deselectAll()V

    goto :goto_0

    .line 3076
    :sswitch_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v6, "0011"

    invoke-static {v5, v6}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 3077
    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3078
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openSelectSimDialog()V

    goto :goto_0

    .line 3080
    :cond_2
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v5, :cond_3

    .line 3081
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    if-lt v5, v7, :cond_3

    .line 3082
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    add-int/lit8 v5, v5, -0x50

    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 3083
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog()V

    goto :goto_0

    .line 3088
    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3089
    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    if-nez v6, :cond_4

    .line 3090
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    .line 3091
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3092
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 3093
    iput v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_0

    .line 3095
    :cond_4
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    .line 3096
    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3097
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 3098
    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_0

    .line 3101
    :cond_5
    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    if-nez v6, :cond_6

    .line 3102
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    .line 3103
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3104
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 3105
    iput v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto/16 :goto_0

    .line 3107
    :cond_6
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    .line 3108
    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3109
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 3110
    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto/16 :goto_0

    .line 3116
    :sswitch_3
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v5, :cond_0

    .line 3118
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3119
    .local v2, "restore_intent":Landroid/content/Intent;
    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3120
    const-string v5, "sim_id"

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3122
    :cond_7
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    if-ge v5, v7, :cond_8

    .line 3123
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    add-int/lit8 v5, v5, 0x50

    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 3124
    :cond_8
    const-string v5, "view_by"

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3125
    const-string v5, "VIP_Restore"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3126
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    .line 3127
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotRefreshAfterDelete:Z

    .line 3128
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3134
    .end local v2    # "restore_intent":Landroid/content/Intent;
    :sswitch_4
    const-string v5, "feature_tablet_selection_mode"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3135
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delete:Z

    .line 3136
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActionMode()V

    .line 3137
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v5, :cond_9

    .line 3138
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 3140
    :cond_9
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    if-eqz v5, :cond_0

    .line 3141
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->deselectAll()V

    goto/16 :goto_0

    .line 3146
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3147
    .local v0, "delete_intent":Landroid/content/Intent;
    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3148
    const-string v5, "sim_id"

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3150
    :cond_b
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v5, :cond_d

    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v5, :cond_d

    .line 3152
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    if-ge v5, v7, :cond_c

    .line 3153
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    add-int/lit8 v5, v5, 0x50

    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 3154
    :cond_c
    const-string v5, "VIP_Delete"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3155
    const-string v5, "view_by"

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3157
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    .line 3158
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotRefreshAfterDelete:Z

    .line 3159
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3162
    :cond_d
    const-string v5, "view_by"

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3164
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    .line 3165
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotRefreshAfterDelete:Z

    .line 3166
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3171
    .end local v0    # "delete_intent":Landroid/content/Intent;
    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v6, "0013"

    invoke-static {v5, v6}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 3172
    const/4 v1, 0x0

    .line 3173
    .local v1, "duration_intent":Landroid/content/Intent;
    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3175
    :cond_e
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "duration_intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3179
    .restart local v1    # "duration_intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3177
    :cond_f
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "duration_intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "duration_intent":Landroid/content/Intent;
    goto :goto_1

    .line 3183
    .end local v1    # "duration_intent":Landroid/content/Intent;
    :sswitch_6
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchOn:Z

    if-eqz v6, :cond_11

    .line 3184
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f0900ff

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 3185
    .local v3, "searchBarLinearLayout":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_0

    .line 3186
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 3187
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v7, ""

    invoke-virtual {v6, v7, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 3189
    :cond_10
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3190
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchOn:Z

    goto/16 :goto_0

    .line 3193
    .end local v3    # "searchBarLinearLayout":Landroid/widget/LinearLayout;
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->createSearchBar()V

    goto/16 :goto_0

    .line 3063
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0904d6 -> :sswitch_0
        0x7f0904d7 -> :sswitch_1
        0x7f0904d8 -> :sswitch_4
        0x7f0904d9 -> :sswitch_5
        0x7f0904da -> :sswitch_6
        0x7f0904e4 -> :sswitch_2
        0x7f090547 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1566
    const-string v0, "CallLogFragment"

    const-string v1, "========= onPause ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onPause()V

    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 1571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    .line 1573
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1574
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1578
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockStateDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockStateDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockStateDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1582
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1583
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1584
    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    .line 1587
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    if-eqz v0, :cond_3

    .line 1588
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1589
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    .line 1592
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 1593
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1594
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1597
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1601
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1605
    :cond_6
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1606
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1607
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1622
    :cond_7
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x7f0904d8

    const/4 v8, 0x0

    .line 2973
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2975
    const v5, 0x7f0904d6

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2976
    .local v4, "selectionMenuItem":Landroid/view/MenuItem;
    const-string v5, "feature_tablet_selection_mode"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2977
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectDisabled:Z

    if-eqz v5, :cond_1

    .line 2978
    :cond_0
    if-eqz v4, :cond_1

    .line 2979
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2983
    :cond_1
    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v5, :cond_f

    .line 2985
    :try_start_0
    const-string v5, "feature_tablet_selection_mode"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2986
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2987
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectDisabled:Z

    if-eqz v5, :cond_8

    .line 2988
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2989
    const v5, 0x7f0904d8

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3007
    :goto_0
    const-string v5, "disable_call_duration_information"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3008
    const v5, 0x7f0904d9

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3009
    .local v0, "callDurationMenuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_3

    .line 3010
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3013
    .end local v0    # "callDurationMenuItem":Landroid/view/MenuItem;
    :cond_3
    sget-boolean v5, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v5, :cond_4

    const-string v5, "feature_easy_mode"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3014
    const v5, 0x7f0904d9

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3016
    .restart local v0    # "callDurationMenuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 3017
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3020
    .end local v0    # "callDurationMenuItem":Landroid/view/MenuItem;
    :cond_4
    const-string v5, "feature_support_call_log_search"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3021
    const v5, 0x7f0904da

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3022
    .local v2, "searchMenuItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_6

    .line 3023
    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchOn:Z

    if-eqz v5, :cond_d

    .line 3025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3026
    .local v3, "searchOffTite":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0e01c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    const-string v5, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3028
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0e01c2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3047
    .end local v2    # "searchMenuItem":Landroid/view/MenuItem;
    .end local v3    # "searchOffTite":Ljava/lang/StringBuilder;
    :cond_6
    :goto_1
    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    if-eqz v5, :cond_7

    .line 3048
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    .line 3059
    :cond_7
    :goto_2
    return-void

    .line 2991
    :cond_8
    const v5, 0x7f0904d8

    :try_start_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3043
    :catch_0
    move-exception v1

    .line 3044
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CallLogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPrepareOptionsMenu called without inflate menu error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2994
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    if-eqz v4, :cond_a

    .line 2995
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2997
    :cond_a
    const v5, 0x7f0904d8

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 3000
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 3001
    const v5, 0x7f0904d8

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 3003
    :cond_c
    const v5, 0x7f0904d8

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 3033
    .restart local v2    # "searchMenuItem":Landroid/view/MenuItem;
    :cond_d
    const v5, 0x7f0e01c2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 3037
    .end local v2    # "searchMenuItem":Landroid/view/MenuItem;
    :cond_e
    const v5, 0x7f0904da

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3038
    .restart local v2    # "searchMenuItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_6

    .line 3039
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3051
    .end local v2    # "searchMenuItem":Landroid/view/MenuItem;
    :cond_f
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v5, :cond_7

    .line 3053
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3055
    :cond_10
    const v5, 0x7f090547

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3056
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1760
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_1

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1762
    const-string v0, "EasyModeWhichButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 1768
    :goto_0
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    const-string v0, "SIMWhichButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 1772
    :cond_0
    return-void

    .line 1763
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_2

    .line 1764
    const-string v0, "AutoRejectWhichButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_0

    .line 1766
    :cond_2
    const-string v0, "WhichButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    .line 1247
    const-string v9, "CallLogFragment"

    const-string v10, "========= onResume ========="

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onResume()V

    .line 1252
    const-string v9, "feature_sstream"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1254
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v10, "com.android.contacts"

    const-string v11, "missed call"

    const-string v12, "samsung.personal"

    invoke-static {v9, v10, v11, v12}, Lsstream/lib/SStreamContentManager;->deleteAllStoryItemsFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getEnableMagazineCard()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1262
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v10, "magazinecardservice"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardManager;

    .line 1263
    .local v2, "gcm":Lcom/samsung/android/magazinecard/MagazineCardManager;
    const-string v9, "com.android.phone"

    invoke-virtual {v2, v9}, Lcom/samsung/android/magazinecard/MagazineCardManager;->removeAllCard(Ljava/lang/String;)Z

    .line 1267
    .end local v2    # "gcm":Lcom/samsung/android/magazinecard/MagazineCardManager;
    :cond_1
    const-string v9, "feature_clear_cover"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1268
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v9, :cond_2

    .line 1269
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1273
    :cond_2
    const/4 v9, 0x0

    sput-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotRefreshAfterDelete:Z

    .line 1275
    sget-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v9, :cond_3

    .line 1276
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "VIP_BlockedLogs"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    .line 1278
    :cond_3
    const-string v9, "feature_common_multisim_V2 "

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1279
    const/4 v8, 0x0

    .line 1280
    .local v8, "preferredSimCondition":I
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "prefered_voice_call"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1281
    const/4 v9, 0x2

    if-lt v8, v9, :cond_4

    .line 1282
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->setCurrentNetwork(Landroid/content/Context;)V

    .line 1285
    .end local v8    # "preferredSimCondition":I
    :cond_4
    const-string v9, "permanent_save_view_by_setting"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1286
    const/4 v4, 0x0

    .line 1287
    .local v4, "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1288
    .local v7, "obj":Landroid/app/Activity;
    instance-of v9, v7, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v9, :cond_5

    move-object v4, v7

    .line 1289
    check-cast v4, Lcom/android/contacts/activities/DialtactsActivity;

    .line 1291
    :cond_5
    if-eqz v4, :cond_6

    iget-boolean v9, v4, Lcom/android/contacts/activities/DialtactsActivity;->mFromMissedCallNotify:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 1292
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFromMissedCallNotify:Z

    .line 1293
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/contacts/activities/DialtactsActivity;->mFromMissedCallNotify:Z

    .line 1295
    :cond_6
    iget-boolean v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFromMissedCallNotify:Z

    if-eqz v9, :cond_13

    .line 1296
    const-string v9, "default_view_by_setting_allcalls"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1297
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 1307
    .end local v4    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v7    # "obj":Landroid/app/Activity;
    :cond_7
    :goto_1
    const-string v9, "feature_folder_type"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1308
    const/4 v4, 0x0

    .line 1309
    .restart local v4    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1310
    .restart local v7    # "obj":Landroid/app/Activity;
    instance-of v9, v7, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v9, :cond_8

    move-object v4, v7

    .line 1311
    check-cast v4, Lcom/android/contacts/activities/DialtactsActivity;

    .line 1314
    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    .line 1315
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    if-eqz v9, :cond_9

    .line 1316
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 1317
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 1324
    .end local v4    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v7    # "obj":Landroid/app/Activity;
    :cond_9
    const/4 v4, 0x0

    .line 1325
    .restart local v4    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1326
    .restart local v7    # "obj":Landroid/app/Activity;
    instance-of v9, v7, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v9, :cond_a

    move-object v4, v7

    .line 1327
    check-cast v4, Lcom/android/contacts/activities/DialtactsActivity;

    .line 1330
    :cond_a
    iget-boolean v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v9, :cond_14

    .line 1331
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v9

    if-nez v9, :cond_b

    .line 1332
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    .line 1338
    :cond_b
    :goto_2
    sget-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v9, :cond_e

    sget-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v9, :cond_e

    .line 1339
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    iget-boolean v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v9, :cond_15

    .line 1340
    :cond_c
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f090091

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f09008d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 1343
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f090090

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNoLogs:Landroid/widget/TextView;

    .line 1344
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNoLogs:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1345
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v9, 0x384

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1346
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNoLogs:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1360
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    :goto_3
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f090090

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0e0308

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1361
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f090095

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0e0308

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1362
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1363
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    .line 1368
    :cond_e
    const-string v9, "feature_chn_duos"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1369
    const-string v9, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1370
    const-string v9, "Home"

    sput-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    .line 1371
    const-string v9, "Office"

    sput-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    .line 1372
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    sput-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameCDMA:Ljava/lang/String;

    .line 1373
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    sput-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->simNameGSM:Ljava/lang/String;

    .line 1374
    const/4 v9, 0x4

    sput v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    .line 1375
    const/4 v9, 0x3

    sput v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    .line 1377
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSimCardInfo()V

    .line 1380
    :cond_10
    const-string v9, "feature_chn_duos_cdma_gsm"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1381
    const/4 v9, 0x1

    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MultiSimTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 1396
    :goto_4
    const/4 v9, 0x0

    sput-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->keyPressed:Z

    .line 1403
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1404
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v9, "com.sec.android.app.action.changed_call_settings"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1405
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1439
    const-string v9, "feature_folder_type"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1440
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    if-nez v9, :cond_19

    .line 1441
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 1442
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 1447
    :cond_11
    :goto_5
    return-void

    .line 1255
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v7    # "obj":Landroid/app/Activity;
    :catch_0
    move-exception v0

    .line 1256
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 1299
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .restart local v7    # "obj":Landroid/app/Activity;
    :cond_12
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto/16 :goto_1

    .line 1302
    :cond_13
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->loadPref()V

    goto/16 :goto_1

    .line 1334
    :cond_14
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 1335
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    goto/16 :goto_2

    .line 1348
    :cond_15
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f09008d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f090091

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 1351
    const-string v9, "feature_hvga"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1352
    const-string v9, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1353
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f090094

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1354
    .local v5, "mNoLogsText2":Landroid/widget/TextView;
    const/high16 v9, 0x41b00000

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1355
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f090095

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1356
    .local v6, "mNoLogsText3":Landroid/widget/TextView;
    const/high16 v9, 0x41900000

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3

    .line 1382
    .end local v5    # "mNoLogsText2":Landroid/widget/TextView;
    .end local v6    # "mNoLogsText3":Landroid/widget/TextView;
    :cond_16
    const-string v9, "feature_common_dsds_support "

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    const-string v9, "feature_common_use_multisim"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 1384
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 1385
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber1:Ljava/lang/String;

    .line 1386
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber2:Ljava/lang/String;

    goto/16 :goto_4

    .line 1387
    :cond_17
    const-string v9, "feature_common_use_multisim"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1388
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MultiSimTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 1389
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MultiSimTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber1:Ljava/lang/String;

    .line 1390
    const/4 v9, 0x1

    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MultiSimTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber2:Ljava/lang/String;

    goto/16 :goto_4

    .line 1392
    :cond_18
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1444
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :cond_19
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v9, 0x0

    sput-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    goto/16 :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1744
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1746
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_1

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    const-string v0, "EasyModeWhichButton"

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1753
    :goto_0
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    const-string v0, "SIMWhichButton"

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1757
    :cond_0
    return-void

    .line 1748
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_2

    .line 1749
    const-string v0, "AutoRejectWhichButton"

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1751
    :cond_2
    const-string v0, "WhichButton"

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 1113
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStart()V

    .line 1114
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1626
    const-string v0, "CallLogFragment"

    const-string v1, "========= onStop ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStop()V

    .line 1628
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1629
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 1631
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    .line 1632
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectDisabled:Z

    .line 1633
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 1025
    const-string v0, "CallLogFragment"

    const-string v1, "========= onViewCreated ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1027
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    if-eqz p2, :cond_0

    .line 1029
    invoke-virtual {p0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1032
    .local v4, "currentCountryIso":Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1037
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsCanFocus(Z)V

    .line 1038
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 1040
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 1077
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1078
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1079
    .local v6, "dsp":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWidth:D

    .line 1080
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3588
    const-string v3, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========= onVisibilityChanged =========, visible : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 3591
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3592
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTabChanged:Z

    .line 3597
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eq v3, p1, :cond_1

    .line 3598
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    .line 3600
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3601
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 3602
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3605
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3606
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    .line 3608
    :cond_2
    if-nez p1, :cond_3

    .line 3609
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    .line 3610
    const-string v3, "feature_folder_type"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3611
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v3, :cond_3

    .line 3612
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    if-nez v3, :cond_9

    .line 3613
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 3614
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 3622
    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsTabChange:Z

    if-eqz v3, :cond_5

    .line 3623
    const-string v3, "feature_folder_type"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3624
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    if-nez v3, :cond_a

    .line 3625
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 3626
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 3631
    :cond_4
    :goto_1
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsTabChange:Z

    .line 3634
    :cond_5
    if-eqz p1, :cond_6

    .line 3635
    const-string v3, "CallLogFragment"

    const-string v4, "Sweep callback registering"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    const-string v3, "feature_scroll_fragment"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3637
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "swipe_to_call_message"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 3644
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    if-eqz v3, :cond_7

    .line 3645
    const-string v3, "CallLogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSweepActionBarCallBack.setListStatus() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    if-nez p1, :cond_c

    :goto_3
    invoke-virtual {v3, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setListDrawStop(Z)V

    .line 3649
    :cond_7
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3656
    :cond_8
    return-void

    .line 3616
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    goto :goto_0

    .line 3628
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    goto :goto_1

    .line 3639
    :cond_b
    const-string v3, "CallLogFragment"

    const-string v4, "onvisiblilityChanged : setSweepActionEnabled"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    goto :goto_2

    :cond_c
    move v1, v2

    .line 3646
    goto :goto_3
.end method

.method public openForList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 1562
    return-void
.end method

.method public openSaveToDialog()V
    .locals 3

    .prologue
    .line 2173
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e02fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080010

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02d4

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddContactDlg:Landroid/app/AlertDialog;

    .line 2258
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddContactDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2259
    return-void
.end method

.method public reLoadDetail()V
    .locals 2

    .prologue
    .line 3924
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_0

    .line 3925
    const-string v0, "CallLogFragment"

    const-string v1, "reLoadDetail"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    if-eqz v0, :cond_1

    .line 3927
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    invoke-interface {v0, v1}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onViewContactAction(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V

    .line 3928
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 3930
    :cond_1
    return-void
.end method

.method public registerForList(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1557
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1558
    return-void
.end method

.method public resetAfterDelete()V
    .locals 1

    .prologue
    .line 3939
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    if-eqz v0, :cond_1

    .line 3940
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    if-eqz v0, :cond_0

    .line 3941
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onDetailClear()V

    .line 3942
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 3943
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    .line 3945
    :cond_1
    return-void
.end method

.method public saveViewByPreference(I)V
    .locals 5
    .param p1, "viewby"    # I

    .prologue
    const/4 v4, 0x0

    .line 1782
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1783
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1784
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_0

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1785
    const-string v2, "EasyModeWhichButton"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1792
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1793
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFromMissedCallNotify:Z

    .line 1794
    return-void

    .line 1787
    :cond_0
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v2, :cond_1

    .line 1788
    const-string v2, "AutoRejectWhichButton"

    add-int/lit8 v3, p1, 0x50

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1790
    :cond_1
    const-string v2, "WhichButton"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public saveViewBySIMidPreference(I)V
    .locals 5
    .param p1, "viewbySIMid"    # I

    .prologue
    .line 1797
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1798
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1799
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SIMWhichButton"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1800
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1801
    return-void
.end method

.method public saveViewStatusPreference()V
    .locals 5

    .prologue
    .line 1775
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1776
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1777
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "reject_popup"

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1778
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1779
    return-void
.end method

.method public selectDetail(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V
    .locals 1
    .param p1, "detailInfoData"    # Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .prologue
    .line 3916
    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->pos:I

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectedPosion:I

    .line 3917
    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->prevPos:I

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevSelectedPosition:I

    .line 3918
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 3919
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    if-eqz v0, :cond_0

    .line 3920
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onViewContactAction(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V

    .line 3921
    :cond_0
    return-void
.end method

.method protected setCallLogAdapter(I)V
    .locals 3
    .param p1, "selection"    # I

    .prologue
    .line 3498
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3499
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3501
    :cond_0
    const-string v0, "feature_support_call_log_search"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3502
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(ILjava/lang/String;Landroid/content/Context;)V

    .line 3506
    :goto_0
    return-void

    .line 3504
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    goto :goto_0
.end method

.method protected setCallLogAdapter(II)V
    .locals 1
    .param p1, "selection"    # I
    .param p2, "simcardId"    # I

    .prologue
    .line 3508
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3509
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 3512
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3513
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3516
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(II)V

    .line 3517
    return-void
.end method

.method public setListOnActionMode()V
    .locals 3

    .prologue
    .line 525
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListOnActionMode selectedGroupIds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-eqz v0, :cond_0

    .line 527
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotResetSelectedItems:Z

    .line 528
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActionMode()V

    .line 531
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->setItemCheck()V

    .line 533
    :cond_0
    return-void
.end method

.method public setLogsListActionListener(Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    .prologue
    .line 3912
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    .line 3913
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 513
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTopIndex:I

    .line 514
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTopOffset:I

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    check-cast v0, Lcom/android/contacts/widget/AutoScrollListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/contacts/widget/AutoScrollListView;->requestPositionToScreen(IIZ)V

    .line 517
    :cond_0
    return-void
.end method

.method public setPositionChangeListener(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    .line 509
    return-void
.end method

.method public setSelectMode(Z)V
    .locals 0
    .param p1, "mSelectMode"    # Z

    .prologue
    .line 4810
    sput-boolean p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectDisabled:Z

    .line 4811
    return-void
.end method

.method public setSplitBarEnabled(Z)V
    .locals 1
    .param p1, "isSplitBarEnabled"    # Z

    .prologue
    .line 3948
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSplitBarEnabled(Z)V

    .line 3949
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSplitStatus:Z

    .line 3950
    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V
    .locals 0
    .param p1, "sweepActionBarCallBack"    # Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 488
    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3841
    const-string v0, "CallLogFragment"

    const-string v1, "setSweepActionEnabled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    .line 3843
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateSweepActionFeasibility()V

    .line 3852
    return-void
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .param p1, "sweepActionListener"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 493
    return-void
.end method

.method public setWhichButton(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 520
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 521
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setCallLogAdapter(I)V

    .line 522
    return-void
.end method

.method public showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mNumber"    # Ljava/lang/String;

    .prologue
    .line 2262
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2263
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0401d8

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2265
    .local v0, "discover_notify":Landroid/widget/LinearLayout;
    const v5, 0x7f09042f

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2267
    .local v4, "notify_confirm":Landroid/widget/LinearLayout;
    const v5, 0x7f090430

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2270
    .local v3, "not_show_again":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v5, 0x7f0e0245

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2271
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

    .line 2273
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->requestFocus()Z

    .line 2274
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    .line 2275
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    .line 2277
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$11;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$11;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2282
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e02fd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0347

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$13;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$13;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e02d4

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2299
    return-void
.end method

.method public showDeleteHistoryLogsConfirmDlg()V
    .locals 8

    .prologue
    const v7, 0x7f0e0346

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2719
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2720
    .local v0, "deleteLogsDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2722
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2723
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2728
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02f4

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$23;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$23;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02d4

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2756
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 2758
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0e02f7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2759
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2760
    return-void

    .line 2725
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public showDeleteLogSpamMsgConfirmDlg()V
    .locals 4

    .prologue
    .line 2374
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2375
    .local v0, "deleteLogsDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0345

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02f4

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02d4

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$16;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$16;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 2431
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v2, 0x7f0e0343

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2432
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2434
    return-void
.end method

.method public showDeleteLogsConfirmDlg()V
    .locals 4

    .prologue
    .line 2577
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2578
    .local v0, "deleteLogsDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0345

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02f4

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02d4

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$18;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$18;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2652
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 2654
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2655
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v2, 0x7f0e02f6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2658
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2660
    return-void

    .line 2657
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v2, 0x7f0e0343

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    goto :goto_0
.end method

.method public showDeleteLogsConfirmDlg(II)V
    .locals 4
    .param p1, "itemPosition"    # I
    .param p2, "itemSize"    # I

    .prologue
    .line 2663
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2664
    .local v0, "deleteLogsDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0345

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02f4

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;

    invoke-direct {v3, p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02d4

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$20;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$20;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2712
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 2714
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v2, 0x7f0e0343

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2715
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2716
    return-void
.end method

.method public showRestoreLogSpamMsgConfirmDlg()V
    .locals 4

    .prologue
    .line 2305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2306
    .local v0, "resotreLogsDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e04c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e04c5

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$15;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$15;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02d4

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 2368
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v2, 0x7f0e04c7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2369
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2371
    return-void
.end method

.method public startActionMode()V
    .locals 2

    .prologue
    .line 4225
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    if-nez v0, :cond_0

    .line 4226
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    .line 4228
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    .line 4230
    return-void
.end method

.method public startCallsQuery()V
    .locals 4

    .prologue
    .line 1726
    const-string v0, "CallLogFragment"

    const-string v1, "========= startCallsQuery ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    .line 1731
    :cond_0
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1732
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(II)V

    .line 1740
    :goto_0
    return-void

    .line 1734
    :cond_1
    const-string v0, "feature_support_call_log_search"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1735
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1737
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    goto :goto_0
.end method
