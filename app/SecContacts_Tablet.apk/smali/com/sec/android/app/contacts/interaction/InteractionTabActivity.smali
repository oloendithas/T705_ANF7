.class public Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
.implements Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$SourceIdQueryTask;,
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;
    }
.end annotation


# static fields
.field private static final CONTACTS_TAG:Ljava/lang/String; = "tab-contacts"

.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field private static final DEFAULT_LIMITED_EMAIL_COUNT:I = 0xfa

.field private static final DEFAULT_LIMITED_EPISODE_COUNT:I = 0xfa

.field private static final DEFAULT_LIMITED_VCARD_INDIVIDUAL_COUNT:I = 0x3e8

.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field private static final EASY_MODE_SWITCH_INTENT:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field private static final EXTRA_VALUE_INVALID:I = 0x0

.field private static final FAVORITES_TAG:Ljava/lang/String; = "tab-favorites"

.field protected static final FOCUS_DELAY:I = 0xc8

.field private static final GROUPS_TAG:Ljava/lang/String; = "tab-groups"

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_ALERT_MESSAGE_FOR_CONTACT:Ljava/lang/String; = "alert_message_for_contact"

.field private static final KEY_CURRENT_COUNT:Ljava/lang/String; = "existingRecipientCount"

.field private static final KEY_CURRENT_TAB:Ljava/lang/String; = "currentTab"

.field private static final KEY_DISPLAY_TAB:Ljava/lang/String; = "displayTab"

.field private static final KEY_DONE_BUTTON_CLICKABLE:Ljava/lang/String; = "doneButtonClickable"

.field private static final KEY_ENABLE_SELECT_ALL_FROM_MMS:Ljava/lang/String; = "FromMMS"

.field private static final KEY_EXTRA_VALUE:Ljava/lang/String; = "extraValue"

.field private static final KEY_IS_SELECTION_MODE:Ljava/lang/String; = "selectionMode"

.field private static final KEY_LIMITED_COUNT:Ljava/lang/String; = "maxRecipientCount"

.field private static final KEY_ONLINE_SEARCH_MODE:Ljava/lang/String; = "mOnlineSearchMode"

.field private static final KEY_ONLY_RCS_TAB:Ljava/lang/String; = "showOnlyChatTab"

.field private static final KEY_SELECTED_COUNT:Ljava/lang/String; = "mSelectedCount"

.field private static final KEY_SEND_MESSAGE:Ljava/lang/String; = "FromMMS"

.field private static final KEY_SPEED_DIAL:Ljava/lang/String; = "from_speed_dial"

.field private static final LOGS_TAG:Ljava/lang/String; = "tab-logs"

.field private static final NO_LIMIT:I = 0xffff

.field private static final RCSE_TAG:Ljava/lang/String; = "tab-rcse"

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static SEND_ALL_NAMECARDS:I = 0x0

.field private static SEND_INDIVIDUAL_NAMECARDS:I = 0x0

.field private static final SUBACTIVITY_ADD_TO_EXISTING_CONTACT:I = 0x0

.field public static final SUBACTIVITY_GAL_SEARCH:I = 0x4

.field private static final SUBACTIVITY_NAMECARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InteractionTabActivity"

.field private static mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

.field private static sendType:I


# instance fields
.field private final RESTART_TUTORIAL_MODE:I

.field private mActionBar:Landroid/app/ActionBar;

.field protected mActionCode:I

.field private mActionbartitle:Ljava/lang/String;

.field private mAlertMessageforContact:Z

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mCurrentCount:I

.field private mCurrentOrientationmode:I

.field private mDeco:Landroid/view/View;

.field private mDisplayTab:Z

.field private mDoneButtonClickable:Z

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableSelectAllFromMMS:Z

.field private mExceptedRcsList:Ljava/lang/String;

.field protected mExtraValue:I

.field private mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

.field private mFragmentAtForeGround:Landroid/app/Fragment;

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

.field private mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsAllSelected:Z

.field private mIsEasyMode:Z

.field private mIsGroupConference:Z

.field private mIsMultiWindowSupported:Z

.field private mIsPhone:Z

.field private mIsRcsOnlyFromMMS:Z

.field private mIsRecreatedInstance:Z

.field private mIsRightAlignmentNeeded:Z

.field private mIsSelectionMode:Z

.field private mIsSendingMSG:Z

.field private mIsSipHide:Z

.field private mIsStartMultiWindow:Z

.field private mIsTablet:Z

.field private mIsTutorialMode:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitedCount:I

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMainView:Landroid/view/View;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mOnlineSearchMode:I

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

.field private mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSelectActionBarView:Landroid/view/View;

.field private mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

.field private mSelectButton:Landroid/widget/Button;

.field private mSelectedCount:I

.field private mSelectedCountInSearchMode:I

.field private mSipReceiver:Landroid/content/BroadcastReceiver;

.field private mSpeedDial:Z

.field public mTabState:I

.field private mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    .line 260
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 147
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsAllSelected:Z

    .line 149
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    .line 157
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    .line 228
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 290
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    .line 309
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRcsOnlyFromMMS:Z

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExceptedRcsList:Ljava/lang/String;

    .line 325
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    .line 330
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->RESTART_TUTORIAL_MODE:I

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;

    .line 1135
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 225
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSipHide:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSipHide:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDeco:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->doDoneAction()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnSoureIdPickerResult(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getVcardName(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showSpeedDialTutorialPopup()V

    return-void
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->onQueryCompleted(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getCountOfContactsAdapter()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCountInSearchMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCountInSearchMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsAllSelected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsAllSelected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .prologue
    .line 129
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    return v0
.end method

.method private actionbarTitle(I)Ljava/lang/String;
    .locals 11
    .param p1, "selectedCount"    # I

    .prologue
    const v10, 0x7f0e03e3

    const v9, 0x7f0e0028

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1215
    const/4 v3, 0x0

    .line 1217
    .local v3, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1218
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "title":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "title":Ljava/lang/String;
    move-object v4, v3

    .line 1266
    .end local v3    # "title":Ljava/lang/String;
    .local v4, "title":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1222
    .end local v4    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-nez v5, :cond_1

    .line 1223
    if-lez p1, :cond_1

    .line 1224
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 1226
    .end local v3    # "title":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    goto :goto_0

    .line 1230
    .end local v4    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "actionbar_title"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "actionBarTitle":Ljava/lang/String;
    const-string v5, "Send message"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1233
    const v5, 0x7f0e0233

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1244
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1245
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1246
    const-string v3, ""

    .line 1250
    :cond_2
    if-lez p1, :cond_8

    .line 1251
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "from_magazine"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1252
    .local v1, "fromMagazine":Z
    if-eqz v1, :cond_7

    .line 1253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1254
    .local v2, "selectedWithLimited":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03e4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v2    # "selectedWithLimited":Ljava/lang/String;
    :goto_2
    move-object v4, v3

    .line 1260
    .end local v3    # "title":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    goto/16 :goto_0

    .line 1234
    .end local v1    # "fromMagazine":Z
    .end local v4    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_3
    const-string v5, "Send email"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1235
    const v5, 0x7f0e0232

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1236
    :cond_4
    const-string v5, "Speed dial setting"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1237
    const v5, 0x7f0e0230

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1238
    :cond_5
    const-string v5, "Share namecard via"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1239
    const v5, 0x7f0e0229

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1241
    :cond_6
    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1257
    .restart local v1    # "fromMagazine":Z
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1262
    .end local v1    # "fromMagazine":Z
    :cond_8
    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1263
    const v5, 0x7f0e0267

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_9
    move-object v4, v3

    .line 1266
    .end local v3    # "title":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private configureActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x1c

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 664
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 669
    .local v1, "lHasToSupportActionMode":Z
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectActionBarView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 670
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_3

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :cond_1
    if-nez v1, :cond_5

    .line 675
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-eqz v2, :cond_4

    .line 676
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 683
    :goto_3
    const v2, 0x7f0e0267

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    .line 684
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1    # "lHasToSupportActionMode":Z
    :cond_2
    move v1, v2

    .line 668
    goto :goto_1

    .restart local v1    # "lHasToSupportActionMode":Z
    :cond_3
    move v3, v4

    .line 670
    goto :goto_2

    .line 681
    :cond_4
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_3

    .line 688
    :cond_5
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 689
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0
.end method

.method private configureContactsFragments()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1006
    const-string v0, "InteractionTabActivity"

    const-string v3, "configureFragments - configureContactsFragments"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setMultiSelectEnabled(Z)V

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchMode(Z)V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v3, Lcom/android/contacts/list/ContactListFilter;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1014
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setLegacyCompatibilityMode(Z)V

    .line 1016
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEnableSelectAllFromMMS:Z

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setMMSinformation(IIIZ)V

    .line 1023
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSpeedDial(Z)V

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mAlertMessageforContact:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setAlertMessageforContact(Z)V

    .line 1025
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIncludeProfile(Z)V

    .line 1030
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v3, 0x11

    if-ne v0, v3, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    .line 1036
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v3, 0x126

    if-ne v0, v3, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    if-nez v0, :cond_5

    .line 1042
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    .line 1048
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-nez v0, :cond_6

    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectoryResultLimit(I)V

    .line 1055
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setEasyMode(Z)V

    .line 1056
    return-void

    .line 1021
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setMMSinformation(III)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1025
    goto :goto_1

    .line 1045
    :cond_5
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    goto :goto_2

    .line 1052
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    goto :goto_3
.end method

.method private configureFavoritesFragments()V
    .locals 4

    .prologue
    .line 1113
    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments - configureFavoritesFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x4

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setMMSinformation(III)V

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setLegacyCompatibilityMode(Z)V

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setMultiSelectEnabled(Z)V

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchMode(Z)V

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDirectorySearchMode(I)V

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setEasyMode(Z)V

    .line 1122
    return-void
.end method

.method private configureFragments(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 975
    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_3

    .line 978
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 979
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_0

    .line 980
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFavoritesFragments()V

    .line 982
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_1

    .line 983
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureGroupsFragments()V

    .line 985
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_2

    .line 986
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureLogsFragments()V

    .line 988
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_3

    .line 989
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureRCSeFragments()V

    .line 994
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSendingMSG(Z)V

    .line 995
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_4

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSendingMSG(Z)V

    .line 998
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_5

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setSendingMSG(Z)V

    .line 1002
    :cond_5
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(I)V

    .line 1003
    return-void
.end method

.method private configureGroupsFragments()V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 1126
    return-void
.end method

.method private configureLogsFragments()V
    .locals 3

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setContactsRequest(I)V

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setSendingMSG(Z)V

    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setMMSinformation(II)V

    .line 1132
    return-void
.end method

.method private configureRCSeFragments()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1059
    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments - configureContactsFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setMultiSelectEnabled(Z)V

    .line 1061
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSearchMode(Z)V

    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setLegacyCompatibilityMode(Z)V

    .line 1069
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEnableSelectAllFromMMS:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setMMSinformation(IIIZ)V

    .line 1076
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSpeedDial(Z)V

    .line 1077
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setIncludeProfile(Z)V

    .line 1080
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllEnabled(Z)V

    .line 1086
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x126

    if-ne v0, v1, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllEnabled(Z)V

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    if-nez v0, :cond_5

    .line 1092
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    .line 1098
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-nez v0, :cond_6

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDirectorySearchMode(I)V

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDirectoryResultLimit(I)V

    .line 1105
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setEasyMode(Z)V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExceptedRcsList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExceptedRcsList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setExceptedList(Ljava/lang/String;)V

    .line 1110
    :cond_3
    return-void

    .line 1074
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setMMSinformation(III)V

    goto :goto_0

    .line 1095
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    goto :goto_1

    .line 1102
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDirectorySearchMode(I)V

    goto :goto_2
.end method

.method private createViewsAndMultipleFragments(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f090196

    .line 808
    const-string v0, "InteractionTabActivity"

    const-string v1, "createViewsAndMultipleFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;-><init>(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .line 813
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_13

    .line 814
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    .line 820
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getChatFirstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->findLastTabIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    .line 824
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->checkTalkBackEnable()V

    .line 825
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->initialize()V

    .line 826
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V

    .line 828
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 829
    .local v6, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 831
    .local v7, "transaction":Landroid/app/FragmentTransaction;
    const-string v0, "tab-contacts"

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 833
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_1

    .line 834
    const-string v0, "tab-groups"

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 837
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_2

    .line 838
    const-string v0, "tab-logs"

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 841
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_3

    .line 842
    const-string v0, "tab-favorites"

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .line 845
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_4

    .line 846
    const-string v0, "tab-rcse"

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .line 855
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-nez v0, :cond_d

    .line 856
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 858
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    if-eqz v0, :cond_5

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsSelectionMode(Z)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->hideHeaderView()V

    .line 862
    :cond_5
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_6

    .line 863
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 865
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_7

    .line 866
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 868
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_8

    .line 869
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .line 871
    :cond_8
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_9

    .line 872
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .line 875
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const-string v1, "tab-contacts"

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 876
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_a

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const-string v1, "tab-favorites"

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 879
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_b

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    const-string v1, "tab-groups"

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 882
    :cond_b
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_c

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    const-string v1, "tab-logs"

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 885
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_d

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    const-string v1, "tab-rcse"

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 889
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 891
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v0, :cond_e

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setIsSelectionMode(Z)V

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsSelectionMode(Z)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->hideHeaderView()V

    .line 897
    :cond_e
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_f

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 900
    :cond_f
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_10

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 903
    :cond_10
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_11

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 906
    :cond_11
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_12

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 910
    :cond_12
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 911
    invoke-virtual {v6}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 913
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFragments(I)V

    .line 914
    return-void

    .line 816
    .end local v6    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_13
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabStateByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    goto/16 :goto_0
.end method

.method private createViewsAndRCSeFragments(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 952
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 955
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const-string v2, "tab-rcse"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .line 958
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    if-nez v2, :cond_0

    .line 959
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .line 960
    const v2, 0x7f090196

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    const-string v4, "tab-rcse"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 962
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 963
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 965
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_1

    .line 966
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureRCSeFragments()V

    .line 969
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTutorialMode:Z

    if-eqz v2, :cond_2

    .line 970
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setTutorialMode(Z)V

    .line 972
    :cond_2
    return-void
.end method

.method private createViewsAndSingleFragments(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 918
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 919
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 922
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const-string v2, "tab-contacts"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 924
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-nez v2, :cond_0

    .line 925
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 926
    const v2, 0x7f090196

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const-string v4, "tab-contacts"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 928
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;

    .line 929
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 930
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 932
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_1

    .line 933
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 936
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTutorialMode:Z

    if-eqz v2, :cond_2

    .line 937
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setTutorialMode(Z)V

    .line 940
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    if-eqz v2, :cond_3

    .line 941
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsSelectionMode(Z)V

    .line 942
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->hideHeaderView()V

    .line 945
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v2, :cond_4

    .line 946
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setIsSelectionMode(Z)V

    .line 948
    :cond_4
    return-void
.end method

.method private doDoneAction()V
    .locals 3

    .prologue
    .line 1368
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_6

    .line 1369
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1371
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getChatFirstMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    if-nez v0, :cond_1

    .line 1373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Ljava/util/HashMap;)V

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->sendNum()V

    goto :goto_0

    .line 1377
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1378
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult()V

    goto :goto_0

    .line 1379
    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1380
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    goto :goto_0

    .line 1381
    :cond_4
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 1382
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onPickerResult()V

    goto :goto_0

    .line 1383
    :cond_5
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    if-nez v0, :cond_0

    .line 1384
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getChatFirstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    if-nez v0, :cond_0

    .line 1385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Ljava/util/HashMap;)V

    goto :goto_0

    .line 1389
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRcsOnlyFromMMS:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-eqz v0, :cond_8

    .line 1390
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    goto :goto_0

    .line 1392
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onPickerResult()V

    goto :goto_0
.end method

.method private getCountOfContactsAdapter()I
    .locals 2

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, "totCount":I
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    packed-switch v1, :pswitch_data_0

    .line 800
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 804
    :cond_0
    :goto_0
    return v0

    .line 790
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 795
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 788
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVcardName(I)Ljava/lang/String;
    .locals 10
    .param p1, "size"    # I

    .prologue
    const v9, 0x7f0e0210

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2845
    if-ne p1, v1, :cond_3

    .line 2846
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v2, v8

    .line 2849
    .local v2, "display_name_projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2850
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2851
    .local v0, "name_cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2853
    .local v7, "name_cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2854
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2855
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2856
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2857
    :cond_0
    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2860
    :cond_1
    if-eqz v7, :cond_2

    .line 2861
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2865
    .end local v0    # "name_cr":Landroid/content/ContentResolver;
    .end local v2    # "display_name_projection":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "name_cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v6

    :cond_3
    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getVcardName(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const v11, 0x7f0e0210

    const/16 v10, 0xa0

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 2965
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 2966
    new-array v2, v3, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v2, v9

    .line 2969
    .local v2, "display_name_projection":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnContactIdPickerResult(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    .line 2970
    .local v6, "contactId":Ljava/lang/String;
    const-string v1, "InteractionTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVCardName  = contactId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    const/4 v7, 0x0

    .line 2972
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2973
    .local v0, "name_cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2975
    .local v8, "name_cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2976
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2977
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2978
    if-eqz v7, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2979
    :cond_0
    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2982
    :cond_1
    if-eqz v8, :cond_2

    .line 2983
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2986
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_LimitNameLength"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xfa

    if-ne v1, v3, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_3

    .line 2988
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1, v7, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2993
    .end local v0    # "name_cr":Landroid/content/ContentResolver;
    .end local v2    # "display_name_projection":[Ljava/lang/String;
    .end local v6    # "contactId":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "name_cursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-object v7

    :cond_4
    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private handleHomeKeyForVideoCall(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .prologue
    const/4 v3, 0x3

    .line 1967
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1968
    .local v0, "mStatusBar":Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    .line 1970
    .local v1, "state":I
    if-eqz p1, :cond_1

    .line 1971
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->isVideoCallActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1972
    const/4 v2, 0x1

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->requestSystemKeyEvent(IZ)Z

    .line 1973
    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    .line 1974
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1977
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->requestSystemKeyEvent(IZ)Z

    .line 1978
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private hasActiveVideoCall()Z
    .locals 6

    .prologue
    .line 1983
    const/4 v1, 0x0

    .line 1985
    .local v1, "mIsVideoCallActive":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1986
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1987
    const-string v3, "InteractionTabActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isVideoCallActive() :  phone.isIdle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "phone.getActivePhoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 1995
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v3, "InteractionTabActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVideoCallActive..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    return v1

    .line 1989
    .restart local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1991
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1992
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "InteractionTabActivity"

    const-string v4, "Connection Failed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2687
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2688
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRcsOnlyFromMMS:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-eqz v1, :cond_1

    .line 2689
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2692
    :goto_0
    return-void

    .line 2691
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private insertDefaultEmergencyContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "phoneDataId"    # Ljava/lang/String;

    .prologue
    .line 2355
    const-string v4, "P"

    const-string v5, ","

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "W"

    const-string v6, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 2357
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2358
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    const-string v4, "number"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    const-string v4, "phone_data_id"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    const-string v4, "content://com.android.contacts/emergency/message"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2364
    .local v0, "insertUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 2366
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 2368
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2369
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v4, "result_id"

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2370
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 2371
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 2372
    return-void
.end method

.method private isVideoCallActive()Z
    .locals 1

    .prologue
    .line 2000
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hasActiveVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;->hasActiveImsCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2456
    .local p1, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2457
    .local v2, "keyStrings":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2458
    .local v0, "dataStrings":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2463
    .local v3, "resultString":Ljava/lang/StringBuilder;
    :try_start_0
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v6, 0x118

    if-ne v5, v6, :cond_1

    .line 2464
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2465
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2466
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2473
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2475
    :cond_0
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2476
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2477
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2479
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2528
    :catch_0
    move-exception v1

    .line 2529
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 2485
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    :try_start_2
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    .line 2486
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2487
    .local v4, "shareUri":Landroid/net/Uri;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2493
    .end local v4    # "shareUri":Landroid/net/Uri;
    :cond_2
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v6, 0x123

    if-ne v5, v6, :cond_3

    .line 2494
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2497
    :cond_3
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v6, 0x21

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v6, 0x22

    if-ne v5, v6, :cond_5

    .line 2499
    :cond_4
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2500
    :cond_5
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v6, 0x125

    if-ne v5, v6, :cond_6

    .line 2501
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2503
    :cond_6
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v6, 0xbe

    if-ne v5, v6, :cond_7

    .line 2505
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2511
    :cond_7
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2512
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2522
    :cond_8
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private onQueryCompleted(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 2909
    const/4 v1, 0x0

    .line 2911
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2912
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2914
    :cond_0
    if-eqz p1, :cond_2

    .line 2915
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2916
    if-nez v1, :cond_3

    .line 2917
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2923
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2927
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2928
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2929
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 2930
    return-void

    .line 2920
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 2004
    const/4 v2, 0x0

    .line 2006
    .local v2, "result":Z
    :try_start_0
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 2008
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 2009
    if-eqz p2, :cond_1

    .line 2010
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v2

    .line 2023
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return v2

    .line 2013
    .restart local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2014
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2020
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private returnSoureIdPickerResult(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2376
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2377
    .local v4, "selectedContactId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2378
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2379
    .local v1, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, ";"

    invoke-direct {p0, v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2380
    if-nez v4, :cond_1

    .line 2381
    move-object v4, v3

    goto :goto_0

    .line 2383
    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 2384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2388
    .end local v1    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$SourceIdQueryTask;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$SourceIdQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;)V

    .line 2389
    .local v2, "queryTask":Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$SourceIdQueryTask;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$SourceIdQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2390
    return-void
.end method

.method private scrollToTab(I)V
    .locals 3
    .param p1, "tabIndex"    # I

    .prologue
    .line 3011
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 3136
    :goto_0
    return-void

    .line 3017
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3021
    .local v0, "scrollTabHandler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Landroid/os/Handler;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3135
    .local v1, "scrollTabThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setActionBarLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2832
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_0

    .line 2834
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2835
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setMultiWindow(Z)V

    .line 2836
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->updateActionBarMode(I)V

    .line 2842
    :cond_0
    :goto_0
    return-void

    .line 2838
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setMultiWindow(Z)V

    .line 2839
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_0
.end method

.method private setCurrentFragmentActiveFlag()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2720
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRcsOnlyFromMMS:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-eqz v0, :cond_3

    .line 2721
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v0, :cond_2

    .line 2722
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 2792
    :cond_1
    :goto_0
    return-void

    .line 2725
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-nez v0, :cond_5

    .line 2726
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2730
    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    if-eqz v0, :cond_4

    .line 2731
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    .line 2734
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    if-nez v0, :cond_5

    .line 2735
    const-string v0, "InteractionTabActivity"

    const-string v1, "mRCSeFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2740
    :cond_5
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2762
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 2763
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_6

    .line 2765
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setIsFragmentShowing(Z)V

    .line 2767
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_1

    .line 2768
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    .line 2742
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 2743
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_7

    .line 2745
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setIsFragmentShowing(Z)V

    .line 2747
    :cond_7
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_1

    .line 2748
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    .line 2752
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 2753
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_8

    .line 2755
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setIsFragmentShowing(Z)V

    .line 2757
    :cond_8
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_1

    .line 2758
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    .line 2772
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 2773
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_9

    .line 2775
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setIsFragmentShowing(Z)V

    .line 2777
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_1

    .line 2778
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setIsFragmentShowing(Z)V

    goto/16 :goto_0

    .line 2782
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 2783
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_a

    .line 2784
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setIsFragmentShowing(Z)V

    .line 2786
    :cond_a
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_1

    .line 2788
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setIsFragmentShowing(Z)V

    goto/16 :goto_0

    .line 2740
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setCurrentFragmentSoftInputMode()V
    .locals 2

    .prologue
    .line 2796
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2797
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRcsOnlyFromMMS:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-eqz v0, :cond_1

    .line 2798
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSoftInputMode()V

    .line 2823
    :goto_0
    :pswitch_0
    return-void

    .line 2800
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSoftInputMode()V

    goto :goto_0

    .line 2804
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2812
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setSoftInputMode()V

    goto :goto_0

    .line 2806
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSoftInputMode()V

    goto :goto_0

    .line 2809
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSoftInputMode()V

    goto :goto_0

    .line 2817
    :pswitch_4
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_3

    .line 2818
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSoftInputMode()V

    goto :goto_0

    .line 2820
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSoftInputMode()V

    goto :goto_0

    .line 2804
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setupDropdownActionBar()Landroid/app/ActionBar;
    .locals 5

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 696
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 697
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 698
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectActionBarView:Landroid/view/View;

    .line 702
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectActionBarView:Landroid/view/View;

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectButton:Landroid/widget/Button;

    .line 704
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    .line 705
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0401b1

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 706
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 707
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 708
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateSelectButton()V

    .line 710
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 775
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 776
    return-object v0
.end method

.method private setupMultiWindow()V
    .locals 2

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v1, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDeco:Landroid/view/View;

    .line 1173
    const v1, 0x7f09011d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMainView:Landroid/view/View;

    .line 1175
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1176
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private showSpeedDialTutorialPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2933
    new-instance v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    sget-object v1, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 2935
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const v1, 0x7f0e0434

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 2936
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    .line 2937
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIsSmallWindow(Z)V

    .line 2938
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrowVisibility(Z)V

    .line 2939
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 2941
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 2943
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->showWithoutCir(Z)V

    .line 2944
    return-void
.end method

.method private updateMultipleFragmentVisibility(Z)V
    .locals 10
    .param p1, "isTabChanged"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1691
    const-string v6, "InteractionTabActivity"

    const-string v7, "updateMultipleFragmentVisibility"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 1694
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1696
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const v6, 0x7f0901a3

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1697
    .local v1, "contactsUnavailableView":Landroid/view/View;
    const v6, 0x7f090196

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1699
    .local v4, "listContainerView":Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v6}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v5

    .line 1701
    .local v5, "providerStatus":Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 1704
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v6, v6, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v6, v6, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_25

    .line 1708
    :cond_0
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1709
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1711
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    packed-switch v6, :pswitch_data_0

    .line 1939
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1951
    :goto_1
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1952
    :goto_2
    return-void

    .line 1713
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;

    .line 1714
    const-string v6, "InteractionTabActivity"

    const-string v7, "updateFragmentVisibility->GROUPS"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setMMSinformation(III)V

    .line 1717
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setVTConferenceMode(Z)V

    .line 1718
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1719
    .local v0, "config":Landroid/content/res/Configuration;
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsEasyMode:Z

    if-eqz v6, :cond_2

    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget v6, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1723
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearListViewFocus()V

    .line 1724
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->hideSoftKeyboard()V

    .line 1727
    :cond_2
    if-eqz p1, :cond_5

    .line 1728
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 1729
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 1732
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v6, :cond_3

    .line 1734
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 1735
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 1736
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchViewClearFocus()V

    .line 1738
    :cond_3
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v6, :cond_4

    .line 1739
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    .line 1741
    :cond_4
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v6, :cond_5

    .line 1742
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->clearSelectedArray()V

    .line 1743
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->clearCustomSearchResult()V

    .line 1748
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1749
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1752
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v6, :cond_6

    .line 1754
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1756
    :cond_6
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v6, :cond_7

    .line 1757
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1759
    :cond_7
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v6, :cond_1

    .line 1760
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 1765
    .end local v0    # "config":Landroid/content/res/Configuration;
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;

    .line 1766
    const-string v6, "InteractionTabActivity"

    const-string v7, "updateFragmentVisibility->CONTACTS"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1768
    :cond_8
    const-string v6, "InteractionTabActivity"

    const-string v7, "mContactsFragment null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1773
    :cond_9
    if-eqz p1, :cond_c

    .line 1776
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v6, :cond_a

    .line 1778
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 1779
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 1780
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 1782
    :cond_a
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v6, :cond_b

    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v6, :cond_b

    .line 1783
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    .line 1785
    :cond_b
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v6, :cond_c

    .line 1786
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->clearSelectedArray()V

    .line 1787
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->clearCustomSearchResult()V

    .line 1792
    :cond_c
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v6, :cond_d

    .line 1793
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1795
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1798
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v6, :cond_e

    .line 1800
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1802
    :cond_e
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v6, :cond_f

    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v6, :cond_f

    .line 1803
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1808
    :cond_f
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v6, :cond_10

    .line 1810
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchViewClearFocus()V

    .line 1812
    :cond_10
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v6, :cond_1

    .line 1813
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 1817
    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;

    .line 1818
    const-string v6, "InteractionTabActivity"

    const-string v7, "updateFragmentVisibility->FAVORITES"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_12

    .line 1820
    :cond_11
    const-string v6, "InteractionTabActivity"

    const-string v7, "mFavoritesFragment null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1825
    :cond_12
    if-eqz p1, :cond_14

    .line 1826
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 1827
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchViewClearFocus()V

    .line 1828
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 1829
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 1830
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v6, :cond_13

    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v6, :cond_13

    .line 1831
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    .line 1833
    :cond_13
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v6, :cond_14

    .line 1834
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->clearSelectedArray()V

    .line 1835
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->clearCustomSearchResult()V

    .line 1840
    :cond_14
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v6, :cond_15

    .line 1841
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1843
    :cond_15
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1844
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1845
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v6, :cond_16

    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v6, :cond_16

    .line 1846
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1849
    :cond_16
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchViewClearFocus()V

    .line 1850
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v6, :cond_1

    .line 1851
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 1855
    :pswitch_3
    const-string v6, "InteractionTabActivity"

    const-string v7, "updateFragmentVisibility->LOGS"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;

    .line 1858
    if-eqz p1, :cond_18

    .line 1859
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 1860
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 1861
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_17

    .line 1862
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 1863
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 1865
    :cond_17
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v6, :cond_18

    .line 1866
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->clearSelectedArray()V

    .line 1867
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->clearCustomSearchResult()V

    .line 1872
    :cond_18
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v6, :cond_19

    .line 1873
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1875
    :cond_19
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1876
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_1a

    .line 1877
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1879
    :cond_1a
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v6, :cond_1b

    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v6, :cond_1b

    .line 1880
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1883
    :cond_1b
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_1c

    .line 1884
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchViewClearFocus()V

    .line 1886
    :cond_1c
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v6, :cond_1

    .line 1887
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 1891
    :pswitch_4
    const-string v6, "InteractionTabActivity"

    const-string v7, "updateFragmentVisibility->CONTACTS"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 1893
    :cond_1d
    const-string v6, "InteractionTabActivity"

    const-string v7, "mRCSeFragment null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1896
    :cond_1e
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;

    .line 1898
    if-eqz p1, :cond_21

    .line 1901
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_1f

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v6, :cond_1f

    .line 1903
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 1904
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 1905
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->clearCustomSearchResult()V

    .line 1907
    :cond_1f
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v6, :cond_20

    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v6, :cond_20

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v6, :cond_20

    .line 1908
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    .line 1911
    :cond_20
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 1912
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 1915
    :cond_21
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1917
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v6, :cond_22

    .line 1918
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1920
    :cond_22
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1923
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_23

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v6, :cond_23

    .line 1925
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1927
    :cond_23
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v6, :cond_24

    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v6, :cond_24

    .line 1928
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1933
    :cond_24
    sget-boolean v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v6, :cond_1

    .line 1935
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchViewClearFocus()V

    goto/16 :goto_0

    .line 1942
    :cond_25
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v6, :cond_26

    .line 1943
    new-instance v6, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v6}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 1944
    const v6, 0x7f0901a4

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v3, v6, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1947
    :cond_26
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {v6, v7}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 1948
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1949
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1711
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateSelectButton()V
    .locals 5

    .prologue
    .line 781
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectButton:Landroid/widget/Button;

    const v1, 0x7f0e03e3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 784
    :cond_0
    return-void
.end method

.method private updateSingleFragmentVisibility()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1650
    const-string v5, "InteractionTabActivity"

    const-string v6, "updateSingleFragmentVisibility"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1653
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1655
    .local v2, "ft":Landroid/app/FragmentTransaction;
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1656
    :cond_0
    const-string v5, "InteractionTabActivity"

    const-string v6, "mContactsFragment null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :goto_0
    return-void

    .line 1660
    :cond_1
    const v5, 0x7f0901a3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1661
    .local v0, "contactsUnavailableView":Landroid/view/View;
    const v5, 0x7f090196

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1663
    .local v3, "listContainerView":Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v5}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v4

    .line 1665
    .local v4, "providerStatus":Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    iput-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 1668
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v5, v5, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v5, v5, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 1671
    :cond_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1672
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1674
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1687
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 1677
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v5, :cond_4

    .line 1678
    new-instance v5, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v5}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 1679
    const v5, 0x7f0901a4

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v2, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1682
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 1683
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1684
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 1182
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1184
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 1185
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1186
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-eqz v1, :cond_0

    .line 1187
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1191
    :cond_0
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    .line 1192
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v1, :cond_4

    .line 1193
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_3

    .line 1194
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1209
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1211
    :cond_2
    return-object v0

    .line 1196
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1199
    :cond_4
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1200
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_5

    .line 1201
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1203
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1204
    :cond_6
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1205
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1956
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1963
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1958
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1959
    .local v0, "action":I
    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1956
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1492
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->finish()V

    .line 1493
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-nez v0, :cond_0

    .line 1494
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRightAlignmentNeeded:Z

    if-nez v0, :cond_1

    .line 1495
    const v0, 0x7f050003

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->overridePendingTransition(II)V

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    const v0, 0x7f050004

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public hideSoftKeyboardInFragment(I)V
    .locals 3
    .param p1, "tab"    # I

    .prologue
    const/4 v2, 0x0

    .line 2696
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2698
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    packed-switch p1, :pswitch_data_0

    .line 2715
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2700
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2701
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 2705
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2706
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 2710
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2711
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 2698
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isMultiwindowMode()Z
    .locals 1

    .prologue
    .line 2827
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 2660
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2662
    packed-switch p1, :pswitch_data_0

    .line 2684
    :cond_0
    :goto_0
    return-void

    .line 2664
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 2665
    if-eqz p3, :cond_1

    .line 2666
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 2668
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 2674
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 2675
    const-string v2, "namecard_string"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2676
    .local v1, "rtData":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2677
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "namecard_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 2678
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 2662
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1502
    const-string v0, "InteractionTabActivity"

    const-string v1, "onAttachFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-nez v0, :cond_0

    .line 1505
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    .line 1507
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_6

    .line 1508
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v0, :cond_2

    .line 1509
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 1511
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 1540
    :cond_1
    :goto_0
    return-void

    .line 1513
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_3

    .line 1515
    const-string v0, "InteractionTabActivity"

    const-string v1, "mFavoritesFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .line 1517
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    goto :goto_0

    .line 1519
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_4

    .line 1521
    const-string v0, "InteractionTabActivity"

    const-string v1, "mGroupsFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    goto :goto_0

    .line 1523
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v0, :cond_5

    .line 1525
    const-string v0, "InteractionTabActivity"

    const-string v1, "mCallLogFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 1527
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    goto :goto_0

    .line 1530
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    if-eqz v0, :cond_1

    .line 1532
    const-string v0, "InteractionTabActivity"

    const-string v1, "mRCSeFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    .line 1534
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    goto :goto_0

    .line 1538
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupActionListener()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1271
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTutorialMode:Z

    if-eqz v0, :cond_0

    .line 1272
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(I)V

    .line 1273
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 1274
    return-void
.end method

.method public onContactListFilterChanged()V
    .locals 2

    .prologue
    .line 2058
    const-string v0, "InteractionTabActivity"

    const-string v1, "notifyContactListFilterChanged -> onContactListFilterChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2065
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    .line 341
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_speed_dial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 344
    .local v10, "mfromActivity":Ljava/lang/String;
    const-string v0, "AddGlanceListActivity"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRightAlignmentNeeded:Z

    .line 347
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsMultiWindowSupported:Z

    .line 348
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_1

    .line 349
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 351
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRightAlignmentNeeded:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 352
    :cond_2
    const v0, 0x7f110036

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setTheme(I)V

    .line 354
    :cond_3
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 355
    const-string v0, "InteractionTabActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {p0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 359
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tutorial_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTutorialMode:Z

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSipHide:Z

    .line 366
    new-instance v0, Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactListFilterController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 369
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    .line 370
    new-instance v0, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    .line 374
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_4

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 376
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupMultiWindow()V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    .line 381
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 383
    .local v9, "mIntent":Landroid/content/Intent;
    const-string v0, "isGroupConference"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    .line 385
    const-string v0, "easy-mode"

    const-string v1, "mode"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 387
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsEasyMode:Z

    .line 393
    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->refreshRCSeSettingValue(Landroid/content/Context;)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 399
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 400
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 401
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    .line 402
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    .line 403
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsEasyMode:Z

    .line 432
    :goto_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getChatVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 433
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "excepted_contacts_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExceptedRcsList:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExceptedRcsList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExceptedRcsList:Ljava/lang/String;

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExceptedRcsList:Ljava/lang/String;

    .line 443
    :cond_6
    :goto_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isEasyModeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 444
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 453
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    .end local v7    # "filter":Landroid/content/IntentFilter;
    :cond_7
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    .line 459
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_15

    .line 460
    const-string v0, "InteractionTabActivity"

    const-string v1, "mIsRecreatedInstance"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 462
    const-string v0, "extraValue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 463
    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 464
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    .line 465
    const-string v0, "from_speed_dial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    .line 466
    const-string v0, "alert_message_for_contact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mAlertMessageforContact:Z

    .line 467
    const-string v0, "displayTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    .line 468
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    if-eqz v0, :cond_8

    .line 469
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabStateByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    .line 471
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRecreatedInstance-mTabState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_8
    const-string v0, "doneButtonClickable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    .line 474
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 476
    const-string v0, "FromMMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEnableSelectAllFromMMS:Z

    .line 479
    :cond_9
    const-string v0, "mSelectedCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    .line 480
    const-string v0, "mOnlineSearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    .line 482
    const-string v0, "FromMMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    .line 484
    const-string v0, "showOnlyChatTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRcsOnlyFromMMS:Z

    .line 485
    const-string v0, "selectionMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    .line 577
    :goto_4
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLimitedCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v11

    .line 582
    .local v11, "redirect":Landroid/content/Intent;
    if-eqz v11, :cond_26

    .line 584
    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 585
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 656
    .end local v11    # "redirect":Landroid/content/Intent;
    :cond_a
    :goto_5
    return-void

    .line 390
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsEasyMode:Z

    goto/16 :goto_0

    .line 405
    :cond_c
    const-string v0, "isLogsTabBlock"

    const-string v1, "logblock"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "vip-email"

    const-string v1, "additional"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pick-contact-from-tab"

    const-string v1, "additional"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "email-multi"

    const-string v1, "additional"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_e

    .line 409
    :cond_d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 410
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_1

    .line 413
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_10

    .line 415
    :cond_f
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 416
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_1

    .line 420
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 422
    :cond_11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 423
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_1

    .line 426
    :cond_12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 427
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_1

    .line 439
    :cond_13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    goto/16 :goto_2

    .line 458
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 488
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 492
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExtraValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_16

    .line 494
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(I)V

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto/16 :goto_5

    .line 503
    :cond_16
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getRecipientLimit()I

    move-result v8

    .line 508
    .local v8, "limitedMmsCount":I
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_1a

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v0

    if-nez v0, :cond_17

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRcsOnlyFromMMS:Z

    .line 553
    :cond_17
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "existingRecipientCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "alert_message_for_contact"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mAlertMessageforContact:Z

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    .line 561
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getSelectionMode()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x96

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xaa

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_25

    :cond_18
    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    .line 565
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    .line 567
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 569
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FromMMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEnableSelectAllFromMMS:Z

    .line 574
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FromMMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    goto/16 :goto_4

    .line 517
    :cond_1a
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1b

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_6

    .line 520
    :cond_1b
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xaa

    if-ne v0, v1, :cond_1c

    .line 521
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_6

    .line 522
    :cond_1c
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    sget v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    if-ne v0, v1, :cond_1d

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_1d

    .line 524
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_MaxCountVcardAttachment"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 526
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    if-gtz v0, :cond_17

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_6

    .line 529
    :cond_1d
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1e

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_6

    .line 532
    :cond_1e
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1f

    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_20

    .line 535
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_6

    .line 536
    :cond_20
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    sget v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    if-ne v0, v1, :cond_23

    .line 537
    const-string v0, "SPH-D710"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "aegis2vzw"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "SPH-D710BST"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "express2lteuc"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 541
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_6

    .line 543
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_6

    .line 545
    :cond_23
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    sget v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    if-ne v0, v1, :cond_24

    .line 546
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_6

    .line 549
    :cond_24
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_6

    .line 561
    :cond_25
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 589
    .end local v8    # "limitedMmsCount":I
    .restart local v11    # "redirect":Landroid/content/Intent;
    :cond_26
    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setContentView(I)V

    .line 592
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    if-eqz v0, :cond_2a

    .line 593
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupDropdownActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    .line 598
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 599
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 600
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 601
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setFinishOnTouchOutside(Z)V

    .line 604
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRcsOnlyFromMMS:Z

    if-eqz v0, :cond_2b

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_2b

    .line 605
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndRCSeFragments(Landroid/os/Bundle;)V

    .line 613
    :goto_9
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureActionBar()V

    .line 615
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v0, :cond_27

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setTabletLayoutAttribute(Z)V

    .line 619
    :cond_27
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setCurrentFragmentActiveFlag()V

    .line 620
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setCurrentFragmentSoftInputMode()V

    .line 622
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTutorialMode:Z

    if-eqz v0, :cond_a

    .line 623
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 625
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 626
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_29

    .line 627
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_28

    .line 628
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showSpeedDialTutorialPopup()V

    .line 630
    :cond_28
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 635
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_29
    :goto_a
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSipReceiver:Landroid/content/BroadcastReceiver;

    .line 652
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 653
    .local v12, "sipfilter":Landroid/content/IntentFilter;
    const-string v0, "ResponseAxT9Info"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v12}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 595
    .end local v12    # "sipfilter":Landroid/content/IntentFilter;
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    goto/16 :goto_8

    .line 607
    :cond_2b
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_2c

    .line 608
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndMultipleFragments(Landroid/os/Bundle;)V

    goto :goto_9

    .line 610
    :cond_2c
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndSingleFragments(Landroid/os/Bundle;)V

    goto :goto_9

    .line 633
    :cond_2d
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showSpeedDialTutorialPopup()V

    goto :goto_a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1278
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1279
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1281
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 1282
    .local v2, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f12000f

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1284
    const v3, 0x7f0904db

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 1285
    const v3, 0x7f0904f6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 1287
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    const v4, 0x7f0e0061

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1288
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v4, 0x7f0e0062

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1290
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getShowIconWithTextOnActionBar()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1293
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040005

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1295
    .local v1, "doneContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040004

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1298
    .local v0, "cancelContainer":Landroid/view/ViewGroup;
    new-instance v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$6;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    new-instance v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$7;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1314
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1315
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1319
    .end local v0    # "cancelContainer":Landroid/view/ViewGroup;
    .end local v1    # "doneContainer":Landroid/view/ViewGroup;
    .end local v2    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1457
    const-string v1, "InteractionTabActivity"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 1461
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    .line 1462
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1463
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1467
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1468
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    .line 1469
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    .line 1470
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsEasyMode:Z

    .line 1484
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v1, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 1487
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 1488
    return-void
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 3141
    const-string v0, "InteractionTabActivity"

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

    .line 3142
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->recreate()V

    .line 3143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1364
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1351
    :sswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTutorialMode:Z

    if-eqz v1, :cond_0

    .line 1352
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(I)V

    .line 1354
    :cond_0
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V

    .line 1355
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 1358
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V

    .line 1359
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->doDoneAction()V

    goto :goto_0

    .line 1349
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1621
    const-string v0, "InteractionTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 1623
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    .line 1624
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    .line 1625
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->handleHomeKeyForVideoCall(Z)V

    .line 1627
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1324
    const-string v0, "InteractionTabActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1335
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getChatFirstMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1340
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    if-eqz v0, :cond_2

    .line 1341
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateSelectButton()V

    .line 1344
    :cond_2
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProviderStatusChange()V
    .locals 3

    .prologue
    .line 2949
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    .line 2950
    .local v0, "providerStatus":Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v1, v2, :cond_0

    .line 2961
    :goto_0
    return-void

    .line 2953
    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 2955
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_1

    .line 2956
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateMultipleFragmentVisibility(Z)V

    goto :goto_0

    .line 2959
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateSingleFragmentVisibility()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1563
    const-string v1, "InteractionTabActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 1565
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    .line 1566
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    if-eqz v1, :cond_0

    .line 1567
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->handleHomeKeyForVideoCall(Z)V

    .line 1569
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1571
    .local v0, "mIntent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_a

    .line 1572
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->checkTalkBackEnable()V

    .line 1573
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setListener(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;)V

    .line 1574
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsEasyMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1575
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1576
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    .line 1577
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    .line 1578
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsEasyMode:Z

    .line 1602
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getChatVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1603
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    .line 1607
    :goto_1
    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateMultipleFragmentVisibility(Z)V

    .line 1609
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 1610
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->scrollToTab(I)V

    .line 1616
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->invalidateOptionsMenu()V

    .line 1617
    return-void

    .line 1580
    :cond_2
    const-string v1, "isLogsTabBlock"

    const-string v2, "logblock"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "vip-email"

    const-string v2, "additional"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "pick-contact-from-tab"

    const-string v2, "additional"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "email-multi"

    const-string v2, "additional"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_4

    .line 1584
    :cond_3
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1585
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto :goto_0

    .line 1588
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_6

    .line 1590
    :cond_5
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1591
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_0

    .line 1593
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 1595
    :cond_7
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1596
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_0

    .line 1599
    :cond_8
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1600
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_0

    .line 1605
    :cond_9
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    goto/16 :goto_1

    .line 1613
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateSingleFragmentVisibility()V

    goto/16 :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2028
    const-string v1, "InteractionTabActivity"

    const-string v2, "onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2034
    :goto_0
    const-string v1, "actionCode"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2035
    const-string v1, "extraValue"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2036
    const-string v1, "maxRecipientCount"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2037
    const-string v1, "existingRecipientCount"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2038
    const-string v1, "from_speed_dial"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2039
    const-string v1, "displayTab"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2040
    const-string v1, "currentTab"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2041
    const-string v1, "doneButtonClickable"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2042
    const-string v1, "mSelectedCount"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2043
    const-string v1, "mOnlineSearchMode"

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2045
    const-string v1, "FromMMS"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2046
    const-string v1, "showOnlyChatTab"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRcsOnlyFromMMS:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2048
    const-string v1, "selectionMode"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2050
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2052
    const-string v1, "FromMMS"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEnableSelectAllFromMMS:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2054
    :cond_0
    return-void

    .line 2031
    :catch_0
    move-exception v0

    .line 2032
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSelectedTabChanged(I)V
    .locals 3
    .param p1, "Tab"    # I

    .prologue
    const/4 v2, 0x0

    .line 1631
    const-string v0, "InteractionTabActivity"

    const-string v1, "onSelectedTabChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    .line 1633
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setCurrentFragmentActiveFlag()V

    .line 1634
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setCurrentFragmentSoftInputMode()V

    .line 1635
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1636
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateMultipleFragmentVisibility(Z)V

    .line 1638
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    .line 1640
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    .line 1641
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCountInSearchMode:I

    .line 1642
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsAllSelected:Z

    .line 1644
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureActionBar()V

    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1646
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->invalidateOptionsMenu()V

    .line 1647
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 3148
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1447
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1448
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTutorialMode:Z

    if-eqz v1, :cond_0

    .line 1449
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(I)V

    .line 1450
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1452
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 1157
    if-eqz p1, :cond_1

    .line 1158
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    .line 1162
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setTabletLayoutAttribute(Z)V

    .line 1165
    :cond_0
    return-void

    .line 1160
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    goto :goto_0
.end method

.method public onZoneChanged(I)V
    .locals 3
    .param p1, "zoneInfo"    # I

    .prologue
    .line 3154
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoneChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    return-void
.end method

.method public returnContactIdPickerResult(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2297
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2298
    .local v4, "selectedContactId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2299
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2300
    .local v2, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2301
    .local v1, "keyStrings":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v3, v1, v5

    .line 2302
    if-nez v4, :cond_1

    .line 2303
    move-object v4, v3

    goto :goto_0

    .line 2305
    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 2306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2309
    .end local v1    # "keyStrings":[Ljava/lang/String;
    .end local v2    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v4
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .locals 16
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 2230
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2231
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2233
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2234
    .local v9, "ididx":I
    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2236
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2237
    .local v15, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 2238
    .local v14, "result":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 2240
    .local v8, "id":Ljava/lang/String;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2241
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2242
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    const/16 v2, 0x3b

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2245
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2250
    .local v13, "phonecursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2251
    const-string v2, "data1"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2253
    .local v12, "numidx":I
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2254
    .local v11, "num":Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    if-eqz v11, :cond_0

    .line 2258
    .end local v11    # "num":Ljava/lang/String;
    .end local v12    # "numidx":I
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2261
    .end local v13    # "phonecursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2263
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2264
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 2265
    .local v10, "intent":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2266
    const-string v2, "datatype"

    const-string v3, "contact"

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2268
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2269
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2270
    const-string v2, "index"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2271
    const-string v2, "phone_data_id"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v10, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2273
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 2274
    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;J)V
    .locals 7
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 2279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2280
    .local v2, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2282
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2286
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2287
    const-string v3, "datatype"

    const-string v4, "contact"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2288
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_result"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2289
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2290
    const-string v3, "index"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "index"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2291
    const-string v3, "phone_data_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2293
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 2294
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 2553
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2554
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTutorialMode:Z

    if-eqz v0, :cond_0

    .line 2555
    const-string v0, "tutorial_mode"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2557
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2558
    const-string v0, "from_chat_tab"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2560
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 2563
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 2565
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 3
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 2536
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    .line 2538
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2539
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CONTACT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2540
    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2541
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2547
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2548
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2549
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 2542
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public returnPickerResult(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 2314
    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v10, 0x126

    if-ne v9, v10, :cond_0

    .line 2315
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2316
    .local v3, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2318
    .local v0, "dataStrings":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v6, v0, v9

    .line 2319
    .local v6, "phoneDataId":Ljava/lang/String;
    aget-object v5, v0, v11

    .line 2320
    .local v5, "number":Ljava/lang/String;
    aget-object v4, v0, v12

    .line 2321
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->insertDefaultEmergencyContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2324
    .end local v0    # "dataStrings":[Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "phoneDataId":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    .local v8, "resultData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2328
    .restart local v3    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 2329
    .local v7, "result":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v9, :cond_4

    .line 2330
    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    if-ne v9, v12, :cond_2

    .line 2331
    const-string v9, ";"

    invoke-direct {p0, v3, v9}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2343
    :cond_1
    :goto_2
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2333
    :cond_2
    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    if-ne v9, v11, :cond_3

    .line 2334
    const-string v9, ";"

    invoke-direct {p0, v3, v9}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 2336
    :cond_3
    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 2337
    const-string v9, ";"

    invoke-direct {p0, v3, v9}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 2341
    :cond_4
    const-string v9, ";"

    invoke-direct {p0, v3, v9}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 2346
    .end local v3    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "result":Ljava/lang/String;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2347
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "result"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2348
    const-string v9, "datatype"

    const-string v10, "contact"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2349
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 2351
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "resultData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method public sendActionIntent(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 2394
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    .local v9, "resultData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 2397
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2398
    .local v5, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, ";"

    invoke-direct {p0, v5, v10}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2399
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2401
    .end local v5    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v11, 0x21

    if-ne v10, v11, :cond_2

    .line 2402
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    invoke-static {v11, v8, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2403
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 2452
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 2453
    return-void

    .line 2404
    :cond_2
    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v11, 0x22

    if-ne v10, v11, :cond_3

    .line 2405
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    invoke-static {v11, v8, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2406
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v10, "videocall"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2407
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2408
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v11, 0x23

    if-ne v10, v11, :cond_7

    .line 2409
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2411
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2413
    const-string v10, "com.android.mms"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2415
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2416
    .local v0, "dat":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 2418
    .local v7, "phoneUri":Landroid/net/Uri;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 2419
    const-string v10, "sms:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_6

    .line 2421
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v2, v10, :cond_5

    .line 2424
    const-string v10, ";"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2428
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2429
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2430
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2431
    .end local v0    # "dat":Ljava/lang/StringBuilder;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "phoneUri":Landroid/net/Uri;
    :cond_7
    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v11, 0x24

    if-ne v10, v11, :cond_1

    .line 2432
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v6, v10, [Ljava/lang/String;

    .line 2433
    .local v6, "output":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_8

    .line 2434
    const-string v10, ""

    aput-object v10, v6, v2

    .line 2435
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v6, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v2

    .line 2433
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2438
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string v11, "mailto:"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2439
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.extra.EMAIL"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2440
    const-string v10, "PHONE_WHITE"

    const-string v11, "DEFAULT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2442
    const-string v10, "theme"

    const/4 v11, 0x2

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2447
    :cond_9
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2448
    :catch_0
    move-exception v1

    .line 2449
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const v10, 0x7f0e010f

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public sendContactsIntent(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2569
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2571
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2572
    .local v2, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2573
    .local v3, "shareUri":Landroid/net/Uri;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2576
    .end local v2    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "shareUri":Landroid/net/Uri;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2577
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2578
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2579
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 2580
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 2581
    return-void
.end method

.method public sendVcardByMultiUriIntent(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2627
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2629
    .local v5, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2630
    .local v3, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2631
    .local v4, "shareUri":Landroid/net/Uri;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2634
    .end local v3    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "shareUri":Landroid/net/Uri;
    :cond_0
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v7, 0xfa

    if-ne v6, v7, :cond_1

    .line 2635
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2636
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "text/x-vcard"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2637
    const-string v6, "vcard"

    const-string v7, "vcard"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2638
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2639
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 2640
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 2656
    :goto_1
    return-void

    .line 2641
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_3

    .line 2642
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2643
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "text/x-vcard"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2644
    const-string v6, "vcard"

    const-string v7, "vcard"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2645
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2648
    const v6, 0x7f0e0229

    invoke-static {p0, v2, v6}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 2649
    .local v0, "chooseIntent":Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-nez v6, :cond_2

    .line 2650
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2651
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 2652
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_1

    .line 2654
    .end local v0    # "chooseIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid or unhandled action code"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public sendVcardIntent(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2584
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2586
    .local v5, "uriListBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2587
    .local v3, "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2588
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2591
    .end local v3    # "line":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2594
    .local v4, "uri":Landroid/net/Uri;
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v7, 0xfa

    if-ne v6, v7, :cond_1

    .line 2595
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2596
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "text/x-vcard"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2597
    const-string v6, "vcard"

    const-string v7, "vcard"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2598
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2599
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 2600
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 2623
    :goto_1
    return-void

    .line 2601
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_3

    .line 2602
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2603
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "text/x-vcard"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2607
    new-instance v6, Landroid/content/ClipData;

    const-string v7, "dummy"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "text/x-vcard"

    aput-object v10, v8, v9

    new-instance v9, Landroid/content/ClipData$Item;

    const-string v10, "dummy"

    invoke-direct {v9, v10}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v6, v7, v8, v9}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 2610
    const-string v6, "vcard"

    const-string v7, "vcard"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2611
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2615
    const v6, 0x7f0e0229

    invoke-static {p0, v2, v6}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 2616
    .local v0, "chooseIntent":Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-nez v6, :cond_2

    .line 2617
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2618
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 2619
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_1

    .line 2621
    .end local v0    # "chooseIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid or unhandled action code"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected setTabletLayoutAttribute(Z)V
    .locals 14
    .param p1, "isOnCreated"    # Z

    .prologue
    const v13, 0x7f0c0107

    const/16 v12, 0x35

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1397
    const v7, 0x7f0901a2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1398
    .local v2, "mainView":Landroid/view/View;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 1399
    .local v5, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c020a

    invoke-virtual {v7, v8, v5, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1400
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 1401
    .local v0, "dimAmount":F
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1402
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x3f000000

    invoke-virtual {v7, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 1405
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1406
    .local v3, "param":Landroid/view/WindowManager$LayoutParams;
    iput v12, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1407
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1409
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1410
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1411
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1441
    .end local v3    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1442
    return-void

    .line 1413
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v7, :cond_1

    .line 1414
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setActionBarLayout()V

    .line 1415
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 1418
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1419
    .restart local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1421
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    if-ne v7, v11, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRightAlignmentNeeded:Z

    if-nez v7, :cond_3

    .line 1422
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 1423
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1424
    .restart local v3    # "param":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1425
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1426
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1427
    const/16 v7, 0x50

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1428
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1430
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "wm":Landroid/view/WindowManager;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 1431
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1432
    .restart local v3    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v12, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1433
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1435
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c01d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1437
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1438
    .restart local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1439
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method public setupActionListener()V
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 1545
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_1

    .line 1546
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 1550
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_1

    .line 1551
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 1555
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_2

    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRCSeFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 1559
    :cond_2
    return-void
.end method
