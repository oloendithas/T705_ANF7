.class public Lcom/android/contacts/activities/PeopleActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
.implements Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PeopleActivity$12;,
        Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;,
        Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
    }
.end annotation


# static fields
.field private static final ACTION_EDIT_MEMBER_COMPLETED:Ljava/lang/String; = "editMemberCompleted"

.field private static final ACTION_MAIN_INTENT:Ljava/lang/String; = "android.intent.action.MAIN"

.field private static final ALL_DETAIL_TAG:Ljava/lang/String; = "tab-detail-all"

.field private static final ALL_TAG:Ljava/lang/String; = "tab-pager-all"

.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.contacts.activities.PeopleActivity"

.field private static final EASYMODE_CONTACTS_TAB:I = 0x2

.field private static final EASYMODE_DIALER_TAB:I = 0x0

.field private static final EASYMODE_GROUPS_TAB:I = 0x1

.field private static final EXTRA_KEY_SELECTED_FAVORITE:Ljava/lang/String; = "selectedfavoriteuri"

.field private static final FAVORITE_DETAIL_TAG:Ljava/lang/String; = "tab-detail-favorite"

.field private static final FAVORITE_TAG:Ljava/lang/String; = "tab-pager-favorite"

.field private static final GROUPS_DETAIL_TAG:Ljava/lang/String; = "tab-detail-group"

.field private static final GROUPS_TAG:Ljava/lang/String; = "tab-pager-groups"

.field private static final KEY_IS_FAVORITES_LIST_EMPTY:Ljava/lang/String; = "isFavoritesListEmpty"

.field private static final KEY_IS_HELP_HUB_DOWNLOAD_DIALOG_SHOWING:Ljava/lang/String; = "isHelpHubDownloadDialogShowing"

.field private static final KEY_LAUNCHED_ACCOUNT_PROMPT:Ljava/lang/String; = "launchedAccountPrompt"

.field private static final KEY_ONLINE_SEARCH_MODE:Ljava/lang/String; = "mOnlineSearchMode"

.field private static final REQUEST_KDDI_AUID_ACCOUNT:I = 0x0

.field public static final REQUEST_SAMSUNG_ACCOUNT_VALIDATION_CHECK:I = 0xb

.field private static final SIM_ONE:I = 0x1

.field private static final SUBACTIVITY_ADD_MEMBER:I = 0x5f

.field private static final SUBACTIVITY_ADD_PRIVATE_CONTACTS:I = 0x64

.field private static final SUBACTIVITY_CONTACTS_PREFERENCES:I = 0x63

.field private static final SUBACTIVITY_DELETE_CONTACTS:I = 0x5e

.field private static final SUBACTIVITY_EDIT_CONTACT:I = 0xd

.field private static final SUBACTIVITY_EDIT_GROUP:I = 0x5

.field private static final SUBACTIVITY_KNOX_MOVE_CONTACTS:I = 0x66

.field private static final SUBACTIVITY_KNOX_REMOVE_CONTACTS:I = 0x67

.field public static final SUBACTIVITY_NEW_CONTACT:I = 0x2

.field private static final SUBACTIVITY_NEW_GROUP:I = 0x4

.field private static final SUBACTIVITY_REMOVE_MEMBER:I = 0x60

.field private static final SUBACTIVITY_SEND_EMAIL_IN_GROUP:I = 0x62

.field private static final SUBACTIVITY_SEND_MESSAGE_IN_GROUP:I = 0x61

.field private static final TAG:Ljava/lang/String; = "PeopleActivity"

.field public static mIsAvailableMyNetwork:Z

.field public static mSelectedView:Landroid/view/View;

.field private static final sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private isUpdateMenu:Z

.field private mAabFlagInfo:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

.field private mAabHandler:Landroid/os/Handler;

.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private mActionMenuLoc:[I

.field private mActionMenuRect:[I

.field mAddPrivateContactMenu:Landroid/view/MenuItem;

.field private mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mAnimationAdapter:Lcom/sec/android/app/contacts/AnimationAdapter;

.field private mBrowserView:Landroid/view/View;

.field private mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailFavoriteLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;

.field private mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

.field private mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mCreateButtonLoc:[I

.field private mCreateButtonRect:[I

.field private mCurrentOrientationmode:I

.field mDeleteFavoritesMenu:Landroid/view/MenuItem;

.field private mDetailsView:Landroid/view/View;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field mDuringSwipe:Z

.field private mEAMReceiver:Landroid/content/BroadcastReceiver;

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableAnimation:Z

.field private mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

.field private mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mFavoritesFragmentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

.field private mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mFinished:Z

.field private mFragmentInitialized:Z

.field private mFromPhoneAppTabPos:I

.field private mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

.field private final mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

.field private mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpHubDownloadDialog:Landroid/app/Dialog;

.field private mHelpHubDownloadDialogShowing:Z

.field private final mInstanceId:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsAddaContactTutorialMode:Z

.field mIsBlackTheme:Z

.field private mIsEasyMode:Z

.field mIsFavoriteListEmpty:Z

.field private mIsFromPhoneApp:Z

.field private mIsFromPhoneAppForDetail:Z

.field private mIsKNOXMode:Z

.field private mIsLockScreenOn:Z

.field private mIsMenuShowing:Z

.field private mIsMultiWindow:Z

.field private mIsMultiWindowSupported:Z

.field private mIsPhone:Z

.field private mIsRecreatedInstance:Z

.field private mIsSpeedDialTutorialMode:Z

.field private mIsUsingTwoPanes:Z

.field private mKeyguardReceiver:Landroid/content/BroadcastReceiver;

.field private mLaunchedAccountPrompt:Ljava/lang/Boolean;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuCheck:Z

.field mMultipleDeleteMenu:Landroid/view/MenuItem;

.field mMultipleRemoveFromKnoxMenu:Landroid/view/MenuItem;

.field private mOnlineSearchMode:I

.field private mOptionsMenuContactsAvailable:Z

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

.field mRemovePrivateContactMenu:Landroid/view/MenuItem;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field mSelectedFavoriteUri:Landroid/net/Uri;

.field private mSelectionActionMode:Z

.field private mSkipAnimationAdapter:Z

.field mStartSubscriberInfoChecker:Ljava/lang/Runnable;

.field private mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

.field private mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

.field private final mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

.field private mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

.field mUserTabClick:Z

.field private mVisibilityOfDeleteContactsMenu:Z

.field public settingsMenu:Landroid/view/MenuItem;

.field public speedDialHelpMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/PeopleActivity;->mIsAvailableMyNetwork:Z

    .line 414
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 518
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 284
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFinished:Z

    .line 286
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnableAnimation:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->isUpdateMenu:Z

    .line 290
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mSkipAnimationAdapter:Z

    .line 294
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsBlackTheme:Z

    .line 325
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 341
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    .line 343
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;

    .line 347
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    .line 349
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 351
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    .line 388
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    .line 394
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    .line 448
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialogShowing:Z

    .line 2088
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mDuringSwipe:Z

    .line 2089
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mUserTabClick:Z

    .line 5427
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$7;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mStartSubscriberInfoChecker:Ljava/lang/Runnable;

    .line 5435
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabHandler:Landroid/os/Handler;

    .line 6201
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$11;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$11;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    .line 519
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    .line 520
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 521
    return-void
.end method

.method private OnlineSearchModeChanged()Z
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    if-nez v0, :cond_0

    .line 1804
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 1806
    :cond_0
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1807
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    .line 1808
    const/4 v0, 0x1

    .line 1810
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/widget/ContactsViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/PeopleActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/PeopleActivity;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/activities/PeopleActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->isUpdateMenu:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/contacts/activities/PeopleActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->isUpdateMenu:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/contacts/activities/PeopleActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneAppForDetail:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/activities/PeopleActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/activities/PeopleActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupFavoriteDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->sendSubscribe(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/contacts/activities/PeopleActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyViewIfNeeded(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/PeopleActivity;->setupGroupDetailFragment(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/contacts/activities/PeopleActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mVisibilityOfDeleteContactsMenu:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->startSubscriberInfoChecker()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/contacts/activities/PeopleActivity;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # [I

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/contacts/activities/PeopleActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/contacts/activities/PeopleActivity;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # [I

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showAddaContactTutorialPopup()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/contacts/activities/PeopleActivity;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # [I

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/contacts/activities/PeopleActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/contacts/activities/PeopleActivity;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # [I

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    return-object p1
.end method

.method static synthetic access$5000(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMenuCheck:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showSpeedDialTutorialPopupTwoPanes()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showSpeedDialTutorialPopup()V

    return-void
.end method

.method static synthetic access$5302(Lcom/android/contacts/activities/PeopleActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialogShowing:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/activities/PeopleActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsLockScreenOn:Z

    return p1
.end method

.method private areGroupWritableAccountsAvailable()Z
    .locals 1

    .prologue
    .line 537
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private checkDisplayUpdateViewConfiguration()V
    .locals 3

    .prologue
    .line 2500
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    .line 2502
    .local v0, "providerStatus":Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    iget v1, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2507
    iget v1, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setCustomUnavailableViewForEachTab(I)V

    .line 2509
    :cond_0
    return-void
.end method

.method private configureContactListFragment()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2453
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v3, :cond_0

    .line 2483
    :goto_0
    return-void

    .line 2455
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->shouldShowSearchResult()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    move v0, v2

    .line 2458
    .local v0, "showSearchResult":Z
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2459
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 2461
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchMode(Z)V

    .line 2465
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    .line 2466
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    .line 2467
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    .line 2470
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisibleScrollbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2471
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v0, :cond_9

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 2472
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v3, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {v5, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalScrollbarPosition(I)V

    .line 2476
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v5, :cond_5

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v4, v2

    :cond_6
    invoke-virtual {v3, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalTwIndexScrollbarPosition(I)V

    .line 2479
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v3, :cond_7

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_7
    move v3, v2

    :goto_4
    invoke-virtual {v4, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionVisible(Z)V

    .line 2481
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v4, :cond_c

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v4

    if-nez v4, :cond_c

    :goto_5
    invoke-virtual {v3, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "showSearchResult":Z
    :cond_8
    move v0, v1

    .line 2455
    goto/16 :goto_1

    .restart local v0    # "showSearchResult":Z
    :cond_9
    move v3, v1

    .line 2471
    goto :goto_2

    :cond_a
    move v3, v4

    .line 2472
    goto :goto_3

    :cond_b
    move v3, v1

    .line 2479
    goto :goto_4

    :cond_c
    move v2, v1

    .line 2481
    goto :goto_5
.end method

.method private configureContactListFragmentForRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2418
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    .line 2419
    .local v0, "contactUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v1, :cond_1

    .line 2450
    :cond_0
    :goto_0
    return-void

    .line 2421
    :cond_1
    if-eqz v0, :cond_4

    .line 2425
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2426
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    .line 2428
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 2431
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 2433
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v1

    if-nez v1, :cond_5

    .line 2435
    iput v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    .line 2441
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2442
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    .line 2447
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2448
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 2438
    :cond_5
    iput v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    goto :goto_1

    .line 2444
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    goto :goto_2
.end method

.method private configureEmptyText(I)V
    .locals 7
    .param p1, "tabState"    # I

    .prologue
    const v6, 0x7f090379

    const/4 v5, 0x0

    const v4, 0x7f0903b9

    const v3, 0x7f0902e5

    const v2, 0x7f090037

    .line 5978
    packed-switch p1, :pswitch_data_0

    .line 6030
    :cond_0
    :goto_0
    return-void

    .line 5980
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5982
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e023c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5988
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-nez v1, :cond_1

    .line 5989
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0085

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5992
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e02e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5994
    const-string v1, "feature_usa"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5995
    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 5996
    .local v0, "noContactBubbleLayout":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 5997
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5998
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 5999
    const v1, 0x7f09037a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e04f2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 6007
    .end local v0    # "noContactBubbleLayout":Landroid/widget/RelativeLayout;
    :cond_1
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6009
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0239

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6011
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v1, :cond_0

    .line 6012
    const-string v1, "feature_usa"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6013
    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 6014
    .restart local v0    # "noContactBubbleLayout":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_2

    .line 6015
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6016
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6017
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 6018
    const v1, 0x7f09037a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e04f1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 6024
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 5978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private configureFavoriteListFragment()V
    .locals 2

    .prologue
    .line 2491
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setSelectionVisible(Z)V

    .line 2492
    return-void

    .line 2491
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private configureFragments(Z)V
    .locals 6
    .param p1, "fromRequest"    # Z

    .prologue
    .line 1606
    if-eqz p1, :cond_6

    .line 1607
    const/4 v1, 0x0

    .line 1608
    .local v1, "filter":Lcom/android/contacts/list/ContactListFilter;
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 1609
    .local v0, "actionCode":I
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    .line 1610
    .local v2, "searchMode":Z
    const/4 v3, -0x1

    .line 1611
    .local v3, "tabToOpen":I
    sparse-switch v0, :sswitch_data_0

    .line 1642
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1644
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v4, :cond_0

    .line 1645
    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 1646
    const/4 v3, 0x2

    .line 1653
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    if-eqz v4, :cond_2

    .line 1654
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 1656
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 1659
    :cond_3
    if-eqz v1, :cond_4

    .line 1660
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 1661
    const/4 v2, 0x0

    .line 1664
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1665
    const/4 v2, 0x0

    .line 1668
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1669
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragmentForRequest()V

    .line 1672
    .end local v0    # "actionCode":I
    .end local v1    # "filter":Lcom/android/contacts/list/ContactListFilter;
    .end local v2    # "searchMode":Z
    .end local v3    # "tabToOpen":I
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragment()V

    .line 1673
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureGroupListFragment()V

    .line 1674
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureFavoriteListFragment()V

    .line 1676
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 1677
    return-void

    .line 1613
    .restart local v0    # "actionCode":I
    .restart local v1    # "filter":Lcom/android/contacts/list/ContactListFilter;
    .restart local v2    # "searchMode":Z
    .restart local v3    # "tabToOpen":I
    :sswitch_0
    const/4 v4, -0x2

    invoke-static {v4}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 1615
    const/4 v3, 0x3

    .line 1616
    goto :goto_0

    .line 1618
    :sswitch_1
    const/4 v4, -0x5

    invoke-static {v4}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 1620
    const/4 v3, 0x3

    .line 1621
    goto :goto_0

    .line 1626
    :sswitch_2
    const/4 v3, 0x2

    .line 1627
    goto :goto_0

    .line 1632
    :sswitch_3
    const/4 v3, 0x3

    .line 1633
    goto :goto_0

    .line 1635
    :sswitch_4
    const/4 v3, 0x1

    .line 1638
    goto :goto_0

    .line 1647
    :cond_7
    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 1648
    const/4 v3, 0x1

    goto :goto_1

    .line 1649
    :cond_8
    if-nez v3, :cond_0

    .line 1650
    const/4 v3, 0x0

    goto :goto_1

    .line 1611
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_4
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x8c -> :sswitch_3
    .end sparse-switch
.end method

.method private configureGroupListFragment()V
    .locals 2

    .prologue
    .line 2487
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectionVisible(Z)V

    .line 2488
    return-void

    .line 2487
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 5338
    .local p0, "listMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 5339
    .local v2, "size":I
    new-array v1, v2, [J

    .line 5340
    .local v1, "membersArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 5341
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 5340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5343
    :cond_0
    return-object v1
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1055
    const v1, 0x7f0401a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setContentView(I)V

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v14

    .line 1061
    .local v14, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v14}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v16

    .line 1064
    .local v16, "transaction":Landroid/app/FragmentTransaction;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    .line 1065
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v1, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1066
    :cond_0
    const v1, 0x7f0903b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 1067
    const v1, 0x7f0903b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 1068
    const v1, 0x7f0903b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 1105
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setDataChangeListener(Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEasyMode(Z)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v2, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v2, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDataChangeListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    new-instance v2, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1121
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v1, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1125
    :cond_2
    const v1, 0x7f0903b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    .line 1127
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1128
    const v1, 0x7f0903bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    .line 1131
    const v1, 0x7f0902c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 1132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 1134
    const v1, 0x7f0903c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 1135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->setFavoriteDetailListener(Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;)V

    .line 1138
    const v1, 0x7f0902f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .line 1139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v1, :cond_d

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v1, :cond_4

    .line 1143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1146
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v1, :cond_5

    .line 1147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1149
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1152
    new-instance v1, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v2, 0x7f090132

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 1156
    new-instance v1, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v2, 0x7f0903c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 1162
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1163
    invoke-virtual {v14}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v2, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 1169
    new-instance v1, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindow:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;ZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 1171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 1174
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v1, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1175
    :cond_7
    new-instance v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    const v2, 0x7f0903bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v2, 0x7f0903bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v2, 0x7f0903c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v2, 0x7f0903bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v2, 0x7f0902b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v2, 0x7f0903be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .line 1182
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 1186
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v1, :cond_b

    .line 1187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 1188
    .local v15, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 1189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "favorite_strquent_listview_state"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1191
    .local v13, "bListViewState":Z
    if-eqz v13, :cond_e

    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    const/4 v1, -0x2

    iput v1, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 1200
    :goto_2
    const v1, 0x7f0903c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-nez v1, :cond_a

    if-nez v13, :cond_f

    :cond_a
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    .end local v13    # "bListViewState":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v1, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1209
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 1210
    return-void

    .line 1070
    :cond_c
    const v1, 0x7f0903b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    .line 1071
    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setAdapter(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    .line 1075
    const-string v11, "tab-pager-favorite"

    .line 1076
    .local v11, "FAVORITE_TAG":Ljava/lang/String;
    const-string v10, "tab-pager-all"

    .line 1077
    .local v10, "ALL_TAG":Ljava/lang/String;
    const-string v12, "tab-pager-groups"

    .line 1088
    .local v12, "GROUPS_TAG":Ljava/lang/String;
    const-string v1, "tab-pager-favorite"

    invoke-virtual {v14, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 1090
    const-string v1, "tab-pager-all"

    invoke-virtual {v14, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 1092
    const-string v1, "tab-pager-groups"

    invoke-virtual {v14, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v1, :cond_1

    .line 1095
    new-instance v1, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 1096
    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 1097
    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 1099
    const v1, 0x7f0903b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v3, "tab-pager-favorite"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1100
    const v1, 0x7f0903b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v3, "tab-pager-all"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1101
    const v1, 0x7f0903b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    const-string v3, "tab-pager-groups"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 1140
    .end local v10    # "ALL_TAG":Ljava/lang/String;
    .end local v11    # "FAVORITE_TAG":Ljava/lang/String;
    .end local v12    # "GROUPS_TAG":Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1196
    .restart local v13    # "bListViewState":Z
    .restart local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1197
    const/4 v1, -0x1

    iput v1, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->hideSplitBar()V

    goto/16 :goto_2

    .line 1200
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1203
    .end local v13    # "bListViewState":Z
    :cond_10
    const/4 v1, -0x2

    iput v1, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    goto/16 :goto_4
.end method

.method private getClassNameOfTopActivity()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5456
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5457
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 5458
    .local v2, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5460
    .local v1, "p":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2107
    packed-switch p1, :pswitch_data_0

    .line 2118
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2109
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 2115
    :goto_0
    return-object v0

    .line 2111
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    goto :goto_0

    .line 2113
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_0

    .line 2115
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    goto :goto_0

    .line 2107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    .prologue
    .line 6186
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    .line 6187
    .local v1, "mCurrentTab":I
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6188
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v2, :cond_0

    .line 6189
    const-string v2, "com.android.contacts.activities.PeopleActivity.Phone"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6190
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 6191
    const-string v2, "com.android.contacts.activities.PeopleActivity.Favourites"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6192
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 6193
    const-string v2, "com.android.contacts.activities.PeopleActivity.Delete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6194
    const-string v2, "com.android.contacts.activities.PeopleActivity.Edit"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6198
    :cond_1
    :goto_0
    return-object v0

    .line 6196
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6197
    const-string v2, "com.android.contacts.activities.PeopleActivity.All"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMenuList()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6171
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    .line 6172
    .local v0, "mCurrentTab":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6173
    .local v1, "menu":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v2, :cond_0

    .line 6174
    const-string v2, "Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6175
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 6176
    const-string v2, "Favourites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6177
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 6178
    const-string v2, "Edit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6182
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6180
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 6181
    const-string v2, "Contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3359
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 3361
    :cond_0
    return-void
.end method

.method private isHelpMenuVisible()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5851
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5872
    :cond_0
    :goto_0
    return v2

    .line 5855
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v1

    .line 5856
    .local v1, "isKnoxMode":Z
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getHelpAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 5858
    .local v0, "helpAppVer":I
    if-nez v1, :cond_0

    .line 5862
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isHelpHubDownloadableSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 5863
    goto :goto_0

    .line 5866
    :cond_2
    if-eq v0, v3, :cond_0

    .line 5868
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    move v2, v3

    .line 5869
    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1795
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1796
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1797
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1799
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isMoveToKNOXEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5700
    const/4 v0, 0x0

    .line 5701
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 5702
    const-string v3, "true"

    const-string v4, "isSupportMoveTo"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5703
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    .line 5704
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    .line 5709
    :goto_0
    const-string v2, "PeopleActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsKNOXMode::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    :goto_1
    return v1

    .line 5707
    :cond_0
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    goto :goto_0

    .line 5712
    :cond_1
    const-string v1, "PeopleActivity"

    const-string v3, "isMoveToKNOXEnabled:: false"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 5713
    goto :goto_1
.end method

.method private lauchMultiSelectionForShareNameCard()V
    .locals 4

    .prologue
    .line 6033
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v0

    .line 6034
    .local v0, "sendType":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6035
    .local v1, "vcardIntent":Landroid/content/Intent;
    const-string v2, "additional"

    const-string v3, "vcard-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6036
    const-string v2, "sendtype"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6037
    const-string v2, "actionbar_title"

    const-string v3, "Share namecard via"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6038
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 6039
    return-void
.end method

.method private processIntent(Z)Z
    .locals 5
    .param p1, "forNewIntent"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1025
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 1026
    const-string v2, "PeopleActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1027
    const-string v2, "PeopleActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " processIntent: forNewIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1031
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setResult(I)V

    .line 1051
    :goto_0
    return v1

    .line 1035
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1036
    .local v0, "redirect":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 1038
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    const/16 v3, 0x8c

    if-ne v2, v3, :cond_3

    .line 1044
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "redirect":Landroid/content/Intent;
    const-class v2, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1045
    .restart local v0    # "redirect":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1047
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1050
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1051
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private requestDownloadingResource(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 6042
    move-object v1, p1

    .line 6044
    .local v1, "c":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 6045
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e04db

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e04dc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/activities/PeopleActivity$10;

    invoke-direct {v4, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$10;-><init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6070
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialog:Landroid/app/Dialog;

    .line 6075
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 6072
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 6073
    iput-boolean v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialogShowing:Z

    goto :goto_0
.end method

.method private resetOptionMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 5799
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 5800
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5801
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5800
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5803
    :cond_0
    return-void
.end method

.method private restartActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6078
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6079
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/activities/PeopleActivity;->overridePendingTransition(II)V

    .line 6080
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6081
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 6082
    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/activities/PeopleActivity;->overridePendingTransition(II)V

    .line 6083
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 6084
    return-void
.end method

.method private scrollToTab(I)V
    .locals 3
    .param p1, "tabIndex"    # I

    .prologue
    .line 1423
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 1548
    :goto_0
    return-void

    .line 1429
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1433
    .local v0, "scrollTabHandler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/contacts/activities/PeopleActivity$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/contacts/activities/PeopleActivity$4;-><init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/os/Handler;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1547
    .local v1, "scrollTabThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "visibility"    # Z

    .prologue
    .line 2093
    if-ltz p1, :cond_1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    .line 2094
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 2095
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2096
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 2097
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 2099
    :cond_0
    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    if-eqz v1, :cond_1

    .line 2100
    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v0, p2}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;->onVisibilityChanged(Z)V

    .line 2104
    :cond_1
    return-void
.end method

.method private sendSubscribe(Landroid/net/Uri;)V
    .locals 10
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 6130
    const-string v7, "PeopleActivity"

    const-string v8, "sendSubscribe start"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6131
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 6133
    .local v5, "cr":Landroid/content/ContentResolver;
    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    .line 6134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6135
    .local v4, "contactId":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheExpiryTime(Landroid/content/ContentResolver;)I

    move-result v1

    .line 6136
    .local v1, "cacheExpiryTime":I
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheTime(Landroid/content/ContentResolver;I)J

    move-result-wide v2

    .line 6138
    .local v2, "cacheTime":J
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollExpiryTime()I

    move-result v6

    .line 6139
    .local v6, "pollExpiryTime":I
    const-string v7, "PeopleActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CacheExpiryTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6140
    const-string v7, "PeopleActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CacheTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6141
    const-string v7, "PeopleActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pollExpiryTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    const-string v7, "PeopleActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isCacheExpired: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v9, v2, v3, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6147
    const/4 v0, 0x1

    .line 6148
    .local v0, "allowSubscribe":Z
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7, v2, v3, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6149
    if-eqz v6, :cond_0

    .line 6150
    const/4 v0, 0x0

    .line 6151
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->eraseCacheInfo(J)V

    .line 6153
    :cond_1
    const-string v7, "PeopleActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contactUri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6154
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish404()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish403()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6157
    const-string v7, "PeopleActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscribeTask--contactId is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6158
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendsubscribe(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 6160
    :cond_2
    const-string v7, "PeopleActivity"

    const-string v8, "sendSubscribe end"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6162
    .end local v0    # "allowSubscribe":Z
    .end local v1    # "cacheExpiryTime":I
    .end local v2    # "cacheTime":J
    .end local v4    # "contactId":Ljava/lang/String;
    .end local v6    # "pollExpiryTime":I
    :cond_3
    return-void
.end method

.method private setCustomUnavailableViewForEachTab(I)V
    .locals 6
    .param p1, "providerStatus"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2639
    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    .line 2642
    const v2, 0x7f0901a3

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2643
    .local v0, "contactsUnavailableView":Landroid/view/View;
    const v2, 0x7f0900d6

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2645
    .local v1, "mainView":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2646
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v2, :cond_0

    .line 2647
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    .line 2649
    :cond_0
    if-eqz v1, :cond_1

    .line 2650
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2652
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_2

    .line 2653
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 2658
    :cond_2
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2659
    :cond_3
    invoke-virtual {p0, v3, v3}, Lcom/android/contacts/activities/PeopleActivity;->setNoContactsViewVisible(ZZ)V

    .line 2660
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2690
    .end local v0    # "contactsUnavailableView":Landroid/view/View;
    .end local v1    # "mainView":Landroid/view/View;
    :cond_4
    :goto_0
    return-void

    .line 2664
    .restart local v0    # "contactsUnavailableView":Landroid/view/View;
    .restart local v1    # "mainView":Landroid/view/View;
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2665
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_8

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v3, v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 2670
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v2, :cond_7

    .line 2671
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyStatePhoto()V

    .line 2675
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v2, :cond_4

    .line 2676
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyStatePhoto()V

    goto :goto_0

    :cond_8
    move v2, v4

    .line 2665
    goto :goto_1

    .line 2680
    .end local v0    # "contactsUnavailableView":Landroid/view/View;
    .end local v1    # "mainView":Landroid/view/View;
    :cond_9
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_a

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2681
    :cond_a
    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/activities/PeopleActivity;->setNoContactsViewVisible(ZZ)V

    .line 2683
    :cond_b
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_4

    .line 2685
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_c

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_2
    invoke-virtual {v5, v4, v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    goto :goto_0

    :cond_c
    move v2, v4

    goto :goto_2
.end method

.method private setQueryTextToFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 2415
    return-void
.end method

.method private setVisibleMergeMenuIfNeeded(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "mergeMenu"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 5877
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5878
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5900
    :goto_0
    return-void

    .line 5882
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5884
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 5888
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5890
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 5895
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->shouldeGoogleMergeMenuHide()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->shouldSamsungMergeMenuHide()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5896
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 5898
    :cond_3
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setupContactDetailFragment(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 1692
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setSpeedDialTutorialMode(Z)V

    .line 1698
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 1699
    return-void

    .line 1695
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setSpeedDialTutorialMode(Z)V

    goto :goto_0
.end method

.method private setupFavoriteDetailFragment(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 1703
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 1704
    return-void
.end method

.method private setupGroupDetailFragment(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 1
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p2, "isAutoAdd"    # Z

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setAutoAdd(Z)V

    .line 1709
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroupWithReload(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 1710
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 1712
    :cond_0
    return-void
.end method

.method private shouldSamsungMergeMenuHide()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5922
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5936
    :cond_0
    :goto_0
    return v0

    .line 5927
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5933
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isSamsungCloudDataSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5936
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldeGoogleMergeMenuHide()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5904
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5917
    :cond_0
    :goto_0
    return v0

    .line 5909
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5913
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableMergeWithGoogle"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5917
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAddaContactTutorialPopup()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 5670
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v1, :cond_0

    .line 5671
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 5672
    :cond_0
    new-instance v1, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 5673
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const v2, 0x7f0e042e

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 5675
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I

    if-eqz v1, :cond_1

    .line 5676
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 5677
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 5680
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I

    if-eqz v1, :cond_2

    .line 5681
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5683
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTouchableArea(Landroid/graphics/Rect;)V

    .line 5686
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentOrientationmode:I

    if-eq v1, v7, :cond_5

    .line 5689
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    .line 5694
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextViewGravity(I)V

    .line 5695
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->show(Z)V

    .line 5696
    return-void

    .line 5691
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    goto :goto_0
.end method

.method private showEmptyStateForTab(I)V
    .locals 4
    .param p1, "tab"    # I

    .prologue
    const/4 v0, -0x1

    .line 2031
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v1, :cond_0

    .line 2032
    packed-switch p1, :pswitch_data_0

    .line 2049
    :cond_0
    :goto_0
    return-void

    .line 2034
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0e0078

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0e0079

    goto :goto_1

    .line 2039
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-nez v1, :cond_2

    .line 2040
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0e0085

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 2045
    :cond_2
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 2032
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showEmptyViewIfNeeded(I)V
    .locals 11
    .param p1, "tab"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2052
    packed-switch p1, :pswitch_data_0

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 2054
    :pswitch_0
    const v8, 0x7f0903b9

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2055
    const v8, 0x7f0903b3

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2056
    const v8, 0x7f0900d6

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2060
    :pswitch_1
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-nez v9, :cond_1

    .line 2061
    iget-boolean v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    invoke-virtual {p0, v7, v8}, Lcom/android/contacts/activities/PeopleActivity;->setNoContactsViewVisible(ZZ)V

    goto :goto_0

    .line 2065
    :cond_1
    :pswitch_2
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v9, :cond_0

    .line 2066
    const/4 v0, 0x0

    .line 2068
    .local v0, "OnlineSearchEnable":Z
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 2072
    .local v2, "accounts":[Landroid/accounts/Account;
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    .line 2073
    .local v5, "isKnoxMode":Z
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v1, v3, v4

    .line 2074
    .local v1, "account":Landroid/accounts/Account;
    const-string v9, "com.android.ldap"

    iget-object v10, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "sec_container_1.com.android.ldap"

    iget-object v10, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v5, :cond_5

    .line 2076
    :cond_2
    const/4 v0, 0x1

    .line 2081
    .end local v1    # "account":Landroid/accounts/Account;
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v9, v9, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    if-nez v0, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/android/contacts/activities/PeopleActivity;->setNoContactsViewVisible(ZZ)V

    goto :goto_0

    .line 2073
    .restart local v1    # "account":Landroid/accounts/Account;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2052
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showSpeedDialTutorialPopup()V
    .locals 3

    .prologue
    const v2, 0x7f0c017f

    .line 5825
    new-instance v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 5826
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const v1, 0x7f0e0439

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 5827
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_1

    .line 5828
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentOrientationmode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5829
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 5842
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0180

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 5844
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    .line 5845
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrowVisibility(Z)V

    .line 5846
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->showWithoutCir(Z)V

    .line 5848
    return-void

    .line 5832
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    goto :goto_0

    .line 5837
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    goto :goto_0
.end method

.method private showSpeedDialTutorialPopupTwoPanes()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 5805
    new-instance v1, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 5806
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    if-eqz v1, :cond_0

    .line 5807
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 5808
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 5810
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    if-eqz v1, :cond_1

    .line 5811
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v4, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5813
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTouchableArea(Landroid/graphics/Rect;)V

    .line 5815
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const v2, 0x7f0e0439

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 5816
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextViewGravity(I)V

    .line 5817
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrowVisibility(Z)V

    .line 5818
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5819
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravityNoPadding(I)V

    .line 5822
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->show(Z)V

    .line 5823
    return-void

    .line 5821
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    goto :goto_0
.end method

.method private showSpeedDialTutorialPopupTwoPanes(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5616
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5617
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mMenuCheck:Z

    .line 5618
    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/PeopleActivity$9;-><init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5666
    return-void
.end method

.method private showSpeedDialTutorialPopupforChagall()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5164
    new-instance v4, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 5165
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->dispatchActionMenu(Z)V

    .line 5166
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 5168
    .local v0, "circleRadius":I
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    if-nez v4, :cond_1

    new-array v4, v10, [I

    :goto_0
    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    .line 5169
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    if-nez v4, :cond_2

    const/4 v4, 0x4

    new-array v4, v4, [I

    :goto_1
    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    .line 5171
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5172
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 5173
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5174
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01e8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v4, v9

    .line 5177
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v5, v0

    aput v5, v4, v8

    .line 5180
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v5, v4, v10

    .line 5181
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v5, v5, v8

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v11

    .line 5184
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v4, :cond_0

    .line 5185
    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v6, v6, v10

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v7, v7, v11

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5187
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTouchableArea(Landroid/graphics/Rect;)V

    .line 5189
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    aput v5, v4, v9

    .line 5190
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    aget v5, v5, v8

    aput v5, v4, v8

    .line 5192
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 5193
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 5195
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const v5, 0x7f0e04ed

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/PeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 5196
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextViewGravity(I)V

    .line 5197
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrowVisibility(Z)V

    .line 5198
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5199
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v12}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravityNoPadding(I)V

    .line 5202
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->show(Z)V

    .line 5204
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-void

    .line 5168
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    goto/16 :goto_0

    .line 5169
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I

    goto/16 :goto_1

    .line 5201
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "wm":Landroid/view/WindowManager;
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v4, v12}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    goto :goto_2
.end method

.method private simplifyOptionMenuIfEasyMode(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5717
    const v4, 0x7f0904a5

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 5723
    .local v0, "backupMenu":Landroid/view/MenuItem;
    const v4, 0x7f0904ba

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 5724
    .local v3, "swipeMenu":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v5

    .line 5725
    .local v1, "profileCount":I
    :goto_0
    const v4, 0x7f0904a6

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-lez v4, :cond_5

    move v4, v5

    :goto_1
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5729
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5730
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    const v7, 0x7f0e022c

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 5732
    :cond_1
    const v4, 0x7f0904b2

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5733
    const v4, 0x7f0904b9

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5734
    const-string v4, "feature_scroll_fragment"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5735
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v4, :cond_6

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v5

    :goto_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5736
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "swipe_to_call_message"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 5737
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v4, :cond_2

    .line 5738
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "swipe_to_call_message"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollFragment(Z)V

    .line 5744
    :cond_2
    :goto_3
    const v4, 0x7f0904a9

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 5745
    .local v2, "showNamecardList":Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5746
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5747
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v4, :cond_8

    .line 5748
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5749
    const v4, 0x7f0208b5

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5796
    :cond_3
    :goto_4
    return-void

    .end local v1    # "profileCount":I
    .end local v2    # "showNamecardList":Landroid/view/MenuItem;
    :cond_4
    move v1, v6

    .line 5724
    goto/16 :goto_0

    .restart local v1    # "profileCount":I
    :cond_5
    move v4, v6

    .line 5725
    goto :goto_1

    :cond_6
    move v4, v6

    .line 5735
    goto :goto_2

    .line 5741
    :cond_7
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 5751
    .restart local v2    # "showNamecardList":Landroid/view/MenuItem;
    :cond_8
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method private simplifyTutorialMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5139
    const v7, 0x7f0904a0

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 5140
    .local v0, "addContactMenu":Landroid/view/MenuItem;
    const v7, 0x7f0904b0

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 5141
    .local v6, "speedDialHelpMenu":Landroid/view/MenuItem;
    const v7, 0x7f0904c2

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5142
    .local v1, "helpMenu":Landroid/view/MenuItem;
    const v7, 0x7f0904b2

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 5143
    .local v3, "sendMenu":Landroid/view/MenuItem;
    const v7, 0x7f0904ad

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 5144
    .local v2, "mergeMenu":Landroid/view/MenuItem;
    const v7, 0x7f0904a9

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 5145
    .local v5, "showNamecardList":Landroid/view/MenuItem;
    const v7, 0x7f0904b9

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 5146
    .local v4, "settingsMenu":Landroid/view/MenuItem;
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5147
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isHelpMenuVisible()Z

    move-result v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5148
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5149
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5150
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5151
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5152
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5153
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5154
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5155
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5156
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5157
    iget-boolean v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5158
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5159
    return-void
.end method

.method private startSubscriberInfoChecker()V
    .locals 4

    .prologue
    .line 5440
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/aab/activity/SubscriberInfoCheckerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5441
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "isValidSubscriberResponse"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5442
    const-string v2, "PeopleActivity"

    const-string v3, "startActivity: SubscriberInfoCheckerActivity"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5444
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5448
    :goto_0
    return-void

    .line 5445
    :catch_0
    move-exception v0

    .line 5446
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateFragmentsVisibility()V
    .locals 13

    .prologue
    const v12, 0x7f090132

    const/4 v11, 0x3

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1819
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v10}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v4

    .line 1821
    .local v4, "tab":I
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->OnlineSearchModeChanged()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1822
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1823
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1827
    :cond_0
    iget-boolean v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v10, :cond_e

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1828
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1832
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7, v8}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1833
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v7, v8}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 1835
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    .line 1858
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 1859
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    .line 1863
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1864
    if-ne v4, v11, :cond_2

    iget-boolean v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v7, :cond_b

    const/4 v7, 0x2

    if-eq v4, v7, :cond_b

    :cond_2
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1865
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setRcsEnable(Z)V

    .line 1870
    :cond_3
    :goto_1
    if-ne v4, v8, :cond_4

    .line 1871
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 1874
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v7, v7, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v10, 0x4

    if-ne v7, v10, :cond_5

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1877
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v7

    if-nez v7, :cond_d

    move v3, v8

    .line 1878
    .local v3, "needHelpText":Z
    :goto_3
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7, v8, v3, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 1880
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v4, v11, :cond_5

    if-eqz v3, :cond_5

    .line 1881
    const v7, 0x7f0902e5

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x7f0e023a

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1886
    .end local v3    # "needHelpText":Z
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Contact_DisableMergeWithGoogle"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1888
    if-eq v4, v8, :cond_6

    .line 1889
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/group/GroupBrowseListFragment;->dismissAlertDialog()V

    .line 2028
    :cond_6
    :goto_4
    return-void

    .line 1838
    :cond_7
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v6

    .line 1839
    .local v6, "wasSearchMode":Z
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v7, v9}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 1840
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v5

    .line 1841
    .local v5, "tabIndex":I
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v7

    if-eq v7, v5, :cond_8

    .line 1842
    const-string v7, "feature_scroll_fragment"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1843
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v7, v5, v9}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    .line 1849
    :goto_5
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1850
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1853
    :cond_8
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->isCurrentAllTab()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1855
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    goto/16 :goto_0

    .line 1845
    :cond_9
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-nez v6, :cond_a

    move v7, v8

    :goto_6
    invoke-virtual {v10, v5, v7}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    goto :goto_5

    :cond_a
    move v7, v9

    goto :goto_6

    .line 1867
    .end local v5    # "tabIndex":I
    .end local v6    # "wasSearchMode":Z
    :cond_b
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setRcsEnable(Z)V

    goto/16 :goto_1

    :cond_c
    move v7, v9

    .line 1871
    goto/16 :goto_2

    :cond_d
    move v3, v9

    .line 1877
    goto/16 :goto_3

    .line 1900
    :cond_e
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v10}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1904
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v10, v8}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1905
    const/4 v4, 0x3

    .line 1906
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v10, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    .line 1925
    :cond_f
    :goto_7
    packed-switch v4, :pswitch_data_0

    .line 1960
    :cond_10
    :goto_8
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1961
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1966
    .local v2, "ft":Landroid/app/FragmentTransaction;
    packed-switch v4, :pswitch_data_1

    .line 2009
    :cond_11
    :goto_9
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_12

    .line 2010
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2011
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2021
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 2023
    :cond_12
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    .line 2025
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2026
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyViewIfNeeded(I)V

    goto/16 :goto_4

    .line 1909
    .end local v1    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_13
    if-eq v4, v11, :cond_14

    iget-boolean v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v10, :cond_15

    const/4 v10, 0x2

    if-ne v4, v10, :cond_15

    .line 1910
    :cond_14
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v10, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    .line 1921
    :goto_a
    if-eq v4, v8, :cond_f

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1922
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->clearSearchResult()V

    goto :goto_7

    .line 1915
    :cond_15
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1916
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1917
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v10, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    goto :goto_a

    .line 1927
    :pswitch_0
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1928
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1929
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1930
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v11

    if-nez v11, :cond_16

    :goto_b
    invoke-virtual {v10, v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 1931
    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1932
    const v8, 0x7f0903c1

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_16
    move v8, v9

    .line 1930
    goto :goto_b

    .line 1937
    :pswitch_1
    iget-boolean v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-nez v10, :cond_1a

    .line 1938
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1939
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1940
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "favorite_strquent_listview_state"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1941
    .local v0, "bListViewState":Z
    if-eqz v0, :cond_19

    .line 1942
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1945
    :goto_c
    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1946
    const v8, 0x7f0903c1

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-nez v10, :cond_17

    if-nez v0, :cond_18

    :cond_17
    move v9, v7

    :cond_18
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1944
    :cond_19
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 1952
    .end local v0    # "bListViewState":Z
    :cond_1a
    :pswitch_2
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1953
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1954
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1955
    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1956
    const v8, 0x7f0903c1

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1968
    .restart local v1    # "fragmentManager":Landroid/app/FragmentManager;
    .restart local v2    # "ft":Landroid/app/FragmentTransaction;
    :pswitch_3
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1969
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1970
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1972
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1973
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1974
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1975
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1976
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1977
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_9

    .line 1982
    :pswitch_4
    iget-boolean v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-nez v7, :cond_1b

    .line 1983
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1984
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1985
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1987
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1988
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1989
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1990
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1991
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1992
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_9

    .line 1997
    :cond_1b
    :pswitch_5
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1998
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1999
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 2000
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 2001
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 2002
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 2003
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 2004
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 2005
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v2, v7}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_9

    .line 1925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1966
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateViewConfiguration(Z)V
    .locals 12
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 2512
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v9}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v5

    .line 2513
    .local v5, "providerStatus":Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    if-nez p1, :cond_1

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v9, :cond_1

    iget v9, v5, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v10, v10, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v9, v10, :cond_1

    .line 2633
    :cond_0
    :goto_0
    return-void

    .line 2517
    :cond_1
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v9, :cond_2

    iget v9, v5, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    iget v9, v5, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v10, v10, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eq v9, v10, :cond_0

    .line 2523
    :cond_2
    iput-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 2525
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v9, :cond_3

    .line 2526
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v10, v5, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setProviderStatus(I)V

    .line 2531
    :cond_3
    iget v9, v5, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-direct {p0, v9}, Lcom/android/contacts/activities/PeopleActivity;->setCustomUnavailableViewForEachTab(I)V

    .line 2533
    iget v9, v5, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    .line 2534
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-nez v9, :cond_0

    .line 2541
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 2542
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccountsWithDataSet()Ljava/util/List;

    move-result-object v2

    .line 2544
    .local v2, "googleAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 2545
    .local v4, "numberOfGoogleAccounts":I
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 2546
    .local v7, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 2548
    .local v8, "user":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_4

    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->shouldShowAccountPrompt(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2550
    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->launchAccountPrompt(Landroid/app/Activity;)V

    .line 2551
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    goto :goto_0

    .line 2559
    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->shouldShowVZWBackupAssistant(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v9, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2561
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->startVZWBackupAssistantActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 2568
    .end local v0    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v2    # "googleAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v4    # "numberOfGoogleAccounts":I
    .end local v7    # "um":Landroid/os/UserManager;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_5
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->shouldShowVZWBackupAssistant(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v9, :cond_6

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2570
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->startVZWBackupAssistantActivity(Landroid/app/Activity;)V

    .line 2574
    :cond_6
    const v9, 0x7f0901a3

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2575
    .local v1, "contactsUnavailableView":Landroid/view/View;
    const v9, 0x7f0900d6

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2577
    .local v3, "mainView":Landroid/view/View;
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v9, v9, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-nez v9, :cond_a

    .line 2578
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2580
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v9, :cond_7

    .line 2581
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    .line 2583
    :cond_7
    if-eqz v3, :cond_8

    .line 2584
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2586
    :cond_8
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v9, :cond_9

    .line 2587
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 2632
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto/16 :goto_0

    .line 2607
    :cond_a
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v9, :cond_b

    .line 2608
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 2610
    :cond_b
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v9, :cond_c

    .line 2611
    new-instance v9, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v9}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 2612
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v10, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    .line 2614
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    const v10, 0x7f0901a4

    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v9, v10, v11}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2618
    :cond_c
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 2619
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2621
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v9, :cond_d

    .line 2622
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    .line 2624
    :cond_d
    if-eqz v3, :cond_e

    .line 2625
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2628
    :cond_e
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v6

    .line 2629
    .local v6, "tab":I
    invoke-direct {p0, v6}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    goto :goto_1
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearCustomSearchViewFocus()V
    .locals 1

    .prologue
    .line 5563
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    .line 5564
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 5565
    :cond_0
    return-void
.end method

.method public createNewGroupWithAccountDisambiguation()V
    .locals 3

    .prologue
    .line 4474
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4475
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4476
    const-string v1, "EditMode"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4477
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4478
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x52

    const/4 v2, 0x1

    .line 5942
    iget-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-eqz v3, :cond_6

    .line 5943
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x15

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x16

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_1

    .line 5974
    :cond_0
    :goto_0
    return v2

    .line 5948
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_6

    .line 5949
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090314

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 5951
    .local v0, "createButton":Landroid/widget/ImageButton;
    const v3, 0x7f0904a0

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5952
    .local v1, "createMenuButton":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5954
    :cond_4
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 5955
    :cond_5
    if-eqz v0, :cond_0

    .line 5956
    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    .line 5962
    .end local v0    # "createButton":Landroid/widget/ImageButton;
    .end local v1    # "createMenuButton":Landroid/view/View;
    :cond_6
    iget-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x19

    if-eq v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_8

    .line 5965
    :cond_7
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 5967
    :cond_8
    iget-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 5971
    :cond_9
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v2, v5, :cond_a

    .line 5972
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->openOptionsMenu()V

    .line 5974
    :cond_a
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const v5, 0x7f0e02f1

    const v4, 0x7f0e0212

    const v3, 0x7f0e008d

    .line 5355
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    .line 5357
    .local v0, "currentTab":I
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v1, :cond_0

    .line 5358
    packed-switch v0, :pswitch_data_0

    .line 5371
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown TabState"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5361
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5396
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 5365
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5368
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5376
    :cond_0
    packed-switch v0, :pswitch_data_1

    .line 5393
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown TabState"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5379
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5383
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5387
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5390
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 5376
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public finishActionModeAllFragments()V
    .locals 1

    .prologue
    .line 6225
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    .line 6226
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->finishActionMode()V

    .line 6229
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_1

    .line 6230
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->finishActionMode()V

    .line 6233
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_2

    .line 6234
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->finishActionMode()V

    .line 6236
    :cond_2
    return-void
.end method

.method public getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1

    .prologue
    .line 5267
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method public getActivityTabState()I
    .locals 1

    .prologue
    .line 5245
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    return v0
.end method

.method public getDetailFragment()Lcom/android/contacts/detail/ContactDetailFragment;
    .locals 1

    .prologue
    .line 5255
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    return-object v0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 5240
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public getFavoriteDetailFragment()Lcom/android/contacts/detail/ContactDetailFragment;
    .locals 1

    .prologue
    .line 5260
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    return-object v0
.end method

.method public getIsMenuShowing()Z
    .locals 1

    .prologue
    .line 3284
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    return v0
.end method

.method public getListFragment()Lcom/android/contacts/list/ContactBrowseListFragment;
    .locals 1

    .prologue
    .line 5250
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method public getSelectionActionMode()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectionActionMode:Z

    return v0
.end method

.method public initSpeedDialTutorialTwoPanes()V
    .locals 4

    .prologue
    const v3, 0x7f0904a0

    const v2, 0x7f0904f5

    .line 5041
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v1, :cond_0

    .line 5044
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5045
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5046
    .local v0, "createMenuInActionBar":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showSpeedDialTutorialPopupTwoPanes(Landroid/view/View;)V

    .line 5054
    .end local v0    # "createMenuInActionBar":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 5047
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5050
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5051
    .restart local v0    # "createMenuInActionBar":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showSpeedDialTutorialPopupTwoPanes(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3364
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 3386
    :cond_0
    :goto_0
    return v0

    .line 3368
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3372
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3377
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3382
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3386
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAction(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1719
    packed-switch p1, :pswitch_data_0

    .line 1744
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkonwn ActionBarAdapter action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1722
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setShowActionbar(Z)V

    .line 1723
    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 1724
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 1725
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 1746
    :goto_0
    return-void

    .line 1728
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setShowActionbar(Z)V

    .line 1729
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 1730
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 1731
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1734
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setShowActionbar(Z)V

    .line 1735
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 1738
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->requestDeleteContacts()V

    goto :goto_0

    .line 1741
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    goto :goto_0

    .line 1719
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 24
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 4619
    sparse-switch p1, :sswitch_data_0

    .line 4899
    :cond_0
    :goto_0
    return-void

    .line 4621
    :sswitch_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4622
    const-string v2, "contactListFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/list/ContactListFilter;

    .line 4624
    .local v10, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-eqz v10, :cond_0

    .line 4627
    iget v2, v10, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v5, -0x3

    if-ne v2, v5, :cond_1

    .line 4628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 4630
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v5, 0x1

    invoke-virtual {v2, v10, v5}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0

    .line 4638
    .end local v10    # "filter":Lcom/android/contacts/list/ContactListFilter;
    :sswitch_1
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4639
    const-string v2, "onlyContactWithPhonesChanged"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    .line 4644
    :cond_2
    const-string v2, "contactListFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/list/ContactListFilter;

    .line 4646
    .restart local v10    # "filter":Lcom/android/contacts/list/ContactListFilter;
    if-eqz v10, :cond_0

    .line 4649
    iget v2, v10, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v5, -0x3

    if-ne v2, v5, :cond_3

    .line 4650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 4652
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v5, 0x1

    invoke-virtual {v2, v10, v5}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0

    .line 4660
    .end local v10    # "filter":Lcom/android/contacts/list/ContactListFilter;
    :sswitch_2
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4661
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v5, 0x8c

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 4662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadDataAndSetSelectedUri(Landroid/net/Uri;)V

    .line 4664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v2, :cond_5

    .line 4665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 4668
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-eqz v2, :cond_0

    .line 4671
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    goto/16 :goto_0

    .line 4677
    :sswitch_3
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4678
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v5, 0x14

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 4688
    :sswitch_4
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 4689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onPickerResult(Landroid/content/Intent;)V

    .line 4704
    :cond_7
    :sswitch_5
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4705
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4706
    .local v14, "intent":Landroid/content/Intent;
    const-string v2, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 4708
    .local v19, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 4709
    .local v8, "dat":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 4711
    .local v17, "phoneUri":Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 4712
    const-string v2, "sms:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4713
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_9

    .line 4714
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v22, v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v22

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4716
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v13, v2, :cond_8

    .line 4717
    const-string v2, ";"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4713
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 4721
    .end local v13    # "i":I
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 4722
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4723
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4729
    .end local v8    # "dat":Ljava/lang/StringBuilder;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "phoneUri":Landroid/net/Uri;
    .end local v19    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_6
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4730
    const-string v2, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 4732
    .restart local v19    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 4733
    .local v16, "output":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_a

    .line 4734
    const-string v2, ""

    aput-object v2, v16, v13

    .line 4735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v16, v13

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v23

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v13

    .line 4733
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 4740
    :cond_a
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v5, "mailto:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v14, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4741
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.EMAIL"

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4743
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4744
    :catch_0
    move-exception v9

    .line 4745
    .local v9, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0e010f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4747
    const-string v2, "PeopleActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "No activity found for intent: "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4755
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "i":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "output":[Ljava/lang/String;
    .end local v19    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4756
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 4757
    .local v21, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 4763
    .end local v21    # "uri":Landroid/net/Uri;
    :sswitch_8
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4764
    const-string v2, "GroupInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 4765
    .local v3, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v12

    .line 4766
    .local v12, "groupType":I
    const/4 v7, -0x1

    .line 4767
    .local v7, "mode":I
    const-string v6, ""

    .line 4768
    .local v6, "callbackAction":Ljava/lang/String;
    const/16 v2, 0x5f

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 4769
    const/4 v2, 0x3

    if-ne v12, v2, :cond_d

    .line 4770
    const/4 v7, 0x3

    .line 4782
    :cond_b
    :goto_3
    const/16 v2, 0x5f

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 4783
    const v18, 0x7f0e0255

    .line 4787
    .local v18, "resId":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v2, :cond_c

    .line 4788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    .line 4789
    const-string v6, "editMemberCompleted"

    .line 4791
    :cond_c
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 4792
    .local v15, "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v2, "ModifiedIds"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    .end local v15    # "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast v15, Ljava/util/ArrayList;

    .line 4794
    .restart local v15    # "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v15}, Lcom/android/contacts/activities/PeopleActivity;->convertToArray(Ljava/util/List;)[J

    move-result-object v4

    .line 4795
    .local v4, "membersToEditArray":[J
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v20

    .line 4799
    .local v20, "saveIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 4772
    .end local v4    # "membersToEditArray":[J
    .end local v15    # "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18    # "resId":I
    .end local v20    # "saveIntent":Landroid/content/Intent;
    :cond_d
    const/4 v7, 0x2

    goto :goto_3

    .line 4774
    :cond_e
    const/16 v2, 0x60

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 4775
    const/4 v2, 0x3

    if-ne v12, v2, :cond_f

    .line 4776
    const/4 v7, 0x5

    goto :goto_3

    .line 4778
    :cond_f
    const/4 v7, 0x4

    goto :goto_3

    .line 4785
    :cond_10
    const v18, 0x7f0e0256

    .restart local v18    # "resId":I
    goto :goto_4

    .line 4804
    .end local v3    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v6    # "callbackAction":Ljava/lang/String;
    .end local v7    # "mode":I
    .end local v12    # "groupType":I
    .end local v18    # "resId":I
    :sswitch_9
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4805
    const-string v2, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 4807
    .restart local v19    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 4808
    .restart local v16    # "output":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_11

    .line 4809
    const-string v2, ""

    aput-object v2, v16, v13

    .line 4810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v16, v13

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v23

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v13

    .line 4808
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 4813
    :cond_11
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v5, "mailto:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v14, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4814
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.EMAIL"

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4816
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 4817
    :catch_1
    move-exception v9

    .line 4818
    .restart local v9    # "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0e010f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4820
    const-string v2, "PeopleActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "No activity found for intent: "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4825
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "i":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "output":[Ljava/lang/String;
    .end local v19    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4826
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4828
    .restart local v14    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4829
    const-string v2, "com.android.mms"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4831
    :cond_12
    const-string v2, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 4833
    .restart local v19    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 4834
    .restart local v8    # "dat":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 4836
    .restart local v17    # "phoneUri":Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 4837
    const-string v2, "sms:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4838
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_14

    .line 4839
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v22, v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v22

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4841
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v13, v2, :cond_13

    .line 4842
    const-string v2, ";"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4838
    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 4846
    .end local v13    # "i":I
    :cond_14
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 4847
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4848
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4852
    .end local v8    # "dat":Ljava/lang/StringBuilder;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "phoneUri":Landroid/net/Uri;
    .end local v19    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4853
    const-string v2, "GroupInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 4854
    .restart local v3    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v2, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedUri(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    goto/16 :goto_0

    .line 4858
    .end local v3    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    :sswitch_c
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4859
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_0

    .line 4860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setReadyForFakeQuery(Z)V

    goto/16 :goto_0

    .line 4865
    :sswitch_d
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4866
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_0

    .line 4867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setReadyForFakeQuery(Z)V

    goto/16 :goto_0

    .line 4872
    :sswitch_e
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setReadyForFakeQuery(Z)V

    goto/16 :goto_0

    .line 4877
    :sswitch_f
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 4878
    new-instance v11, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;

    invoke-direct {v11}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;-><init>()V

    .line 4880
    .local v11, "fragment":Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v5, "MergeWithSamsungDialogFragment"

    invoke-virtual {v11, v2, v5}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4886
    :goto_7
    const-string v2, "PeopleActivity"

    const-string v5, "get ng"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4881
    :catch_2
    move-exception v9

    .line 4884
    .local v9, "e":Ljava/lang/IllegalStateException;
    const-string v2, "PeopleActivity"

    const-string v5, "Error occured : "

    invoke-static {v2, v5, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 4892
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    .end local v11    # "fragment":Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;
    :sswitch_10
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    goto/16 :goto_0

    .line 4619
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_b
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0xb -> :sswitch_f
        0xd -> :sswitch_2
        0xe -> :sswitch_5
        0x5e -> :sswitch_c
        0x5f -> :sswitch_8
        0x60 -> :sswitch_8
        0x61 -> :sswitch_a
        0x62 -> :sswitch_9
        0x63 -> :sswitch_1
        0x64 -> :sswitch_e
        0x65 -> :sswitch_7
        0x66 -> :sswitch_d
        0x67 -> :sswitch_d
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAddFavoritesRequested()V
    .locals 2

    .prologue
    .line 4570
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.FAVORITE_ADD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4571
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4572
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 560
    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "view-pager-favorites-about-fragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 565
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    goto :goto_0

    .line 567
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_2
    instance-of v0, p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v0, :cond_0

    .line 568
    check-cast p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 569
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 576
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onAttachedToWindow()V

    .line 581
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5058
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5059
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromNotPeople"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromDetail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5061
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 5062
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->checkDisplayUpdateViewConfiguration()V

    .line 5136
    :cond_1
    :goto_0
    return-void

    .line 5068
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5070
    invoke-static {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isContactsDeleting(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5071
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    goto :goto_0

    .line 5077
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_FixMainTabWhenAppLaunched"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5079
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromDetail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5080
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab()V

    .line 5084
    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->shouldShowContactTips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5085
    const-string v0, "PeopleActivity"

    const-string v1, "onBackPressed showContactTipsAgain"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->showContactTipsAgain(Landroid/content/Context;)V

    .line 5090
    :cond_5
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isTwLauncherAlive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5091
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0

    .line 5100
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5101
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0

    .line 5104
    :cond_7
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_9

    .line 5105
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 5106
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 5107
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    goto :goto_0

    .line 5114
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_1

    .line 5116
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->clearSearchResult()V

    goto :goto_0

    .line 5119
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 5120
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 5121
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    goto/16 :goto_0

    .line 5128
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_1

    .line 5130
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->clearSearchResult()V

    .line 5131
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->clearSearchViewFocus()V

    goto/16 :goto_0
.end method

.method public onChangeSwipeAction()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4608
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "swipe_to_call_message"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4609
    .local v0, "swipetocallmessgae":Z
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "swipe_to_call_message"

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4611
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_0

    .line 4612
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-nez v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollFragment(Z)V

    .line 4613
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 4615
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 4609
    goto :goto_0

    :cond_2
    move v1, v3

    .line 4612
    goto :goto_1

    :cond_3
    move v2, v3

    .line 4613
    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 5466
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5468
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAlwaysTabMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5469
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isActionBarModeTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5470
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setEmbeddedTabs()V

    .line 5472
    :cond_0
    return-void
.end method

.method public onContactListFilterChanged()V
    .locals 2

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1685
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1687
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 585
    const-string v9, "ContactsPerf"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 586
    const-string v9, "ContactsPerf"

    const-string v10, "PeopleActivity.onCreate start"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 591
    const-string v9, "VerificationLog"

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {p0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 594
    new-instance v9, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;-><init>(Landroid/app/Activity;)V

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    .line 597
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    .line 598
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentOrientationmode:I

    .line 599
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    .line 600
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isBlackTheme(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsBlackTheme:Z

    .line 601
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->isUpdateMenu:Z

    .line 602
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 862
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindowSupported:Z

    .line 608
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindowSupported:Z

    if-eqz v9, :cond_2

    .line 609
    new-instance v9, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v9, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 610
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v9, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 611
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 612
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindow:Z

    .line 619
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    .line 620
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    .line 621
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isEasyModeSupported(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 622
    new-instance v9, Lcom/android/contacts/activities/PeopleActivity$1;

    invoke-direct {v9, p0}, Lcom/android/contacts/activities/PeopleActivity$1;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 635
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 636
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v9, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v2}, Lcom/android/contacts/activities/PeopleActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v9, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 642
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 643
    if-eqz p1, :cond_1a

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    .line 644
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    .line 645
    new-instance v9, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 647
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 648
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 649
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v9, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 651
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    .line 652
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "favorite_strquent_listview_state"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 653
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "favorite_strquent_listview_state"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 658
    :cond_4
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "from_phone_app"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 659
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "selected_tab_pos"

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mFromPhoneAppTabPos:I

    .line 661
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/activities/ActionBarAdapter;->checkTalkBackEnable()V

    .line 662
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mFromPhoneAppTabPos:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 664
    :cond_5
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v9, :cond_6

    .line 665
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "from_phone_app"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneAppForDetail:Z

    .line 666
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "from_phone_app"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneApp:Z

    .line 669
    :cond_6
    const-string v9, "ContactsPerf"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 670
    const-string v9, "ContactsPerf"

    const-string v10, "PeopleActivity.onCreate finish"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_7
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-eqz v9, :cond_a

    .line 675
    const-string v9, "isFavoritesListEmpty"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    .line 676
    const-string v9, "selectedfavoriteuri"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 677
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v9, :cond_8

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 678
    :cond_8
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsBlackTheme:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactTileListFragment;->IsSelectionMode()Z

    move-result v9

    if-nez v9, :cond_9

    .line 679
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactTileListFragment;->setSelectedFavoriteUri(Landroid/net/Uri;)V

    .line 682
    :cond_9
    const-string v9, "mOnlineSearchMode"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    .line 683
    const-string v9, "launchedAccountPrompt"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    .line 684
    const-string v9, "isHelpHubDownloadDialogShowing"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialogShowing:Z

    .line 685
    const-string v9, "menushowing"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    .line 688
    :cond_a
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialogShowing:Z

    if-eqz v9, :cond_b

    .line 689
    invoke-direct {p0, p0}, Lcom/android/contacts/activities/PeopleActivity;->requestDownloadingResource(Landroid/content/Context;)V

    .line 693
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_FixMainTabWhenAppLaunched"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 695
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v9, :cond_c

    .line 697
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v9, :cond_1c

    .line 698
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v9, :cond_1b

    const/4 v9, 0x2

    :goto_3
    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 717
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x400

    const/16 v11, 0x400

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 718
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x3000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 721
    const-string v9, "com.sec.android.app.contacts.action.ADD_A_CONTACT_TUTORIAL"

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    .line 723
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-eqz v9, :cond_d

    .line 724
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v9, :cond_1e

    const/4 v9, 0x3

    :goto_5
    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 725
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setIsAddaContactTutorialMode(Z)V

    .line 726
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-boolean v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    invoke-virtual {v9, v10}, Lcom/android/contacts/activities/ActionBarAdapter;->setTutorialMode(Z)V

    .line 729
    :cond_d
    const-string v9, "com.sec.android.app.contacts.action.SPEEDDIAL_TUTORIAL"

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    .line 731
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v9, :cond_e

    .line 732
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v9, :cond_1f

    const/4 v9, 0x3

    :goto_6
    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 736
    :cond_e
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v9, :cond_f

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v9, :cond_10

    .line 737
    :cond_f
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 738
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x100000

    or-int/2addr v9, v10

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 739
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 744
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 746
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabFlagInfo:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    .line 748
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    .line 749
    .local v4, "isKnoxMode":Z
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v9, :cond_11

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "fromDetail"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_11

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v9, :cond_11

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-nez v9, :cond_11

    if-nez v4, :cond_11

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v9, :cond_11

    .line 751
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->startAabService()V

    .line 755
    :cond_11
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabFlagInfo:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->isRegistrationCompleted()Z

    move-result v9

    if-nez v9, :cond_12

    .line 756
    new-instance v9, Lcom/android/contacts/activities/PeopleActivity$2;

    invoke-direct {v9, p0}, Lcom/android/contacts/activities/PeopleActivity$2;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    .line 765
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 766
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v2}, Lcom/android/contacts/activities/PeopleActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 772
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "isKnoxMode":Z
    :cond_12
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 773
    .local v7, "salesCode":Ljava/lang/String;
    const-string v9, "PAP"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "VID"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "XEU"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 774
    :cond_13
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "need_import_demo_vcf"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 776
    .local v1, "demoImport":I
    if-lez v1, :cond_20

    .line 777
    const-string v9, "ContactsApplication"

    const-string v10, "Need Import..."

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "need_import_demo_vcf"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 779
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "update_demo_contact"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 781
    const-string v9, "file:///storage/sdcard0/LiveDemo/Contacts_livedemo.vcf"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 782
    .local v8, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 784
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v9, "text/x-vcard"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 787
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 788
    const-string v9, "account_name"

    const-string v10, "vnd.sec.contact.phone"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string v9, "account_type"

    const-string v10, "vnd.sec.contact.phone"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 812
    .end local v1    # "demoImport":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_14
    :goto_7
    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v9, :cond_18

    .line 813
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 814
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mFromPhoneAppTabPos:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_15

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_23

    .line 816
    :cond_15
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "favorite_strquent_listview_state"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 818
    .local v0, "bListViewState":Z
    if-nez v0, :cond_16

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v9

    if-nez v9, :cond_16

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneApp:Z

    if-eqz v9, :cond_21

    iget v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mFromPhoneAppTabPos:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_21

    .line 820
    :cond_16
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 821
    const/4 v9, -0x2

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 822
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 828
    :goto_8
    const v9, 0x7f090132

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 829
    const v9, 0x7f0903c1

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-nez v9, :cond_17

    if-nez v0, :cond_22

    :cond_17
    const/16 v9, 0x8

    :goto_9
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 834
    .end local v0    # "bListViewState":Z
    :goto_a
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->refreshRCSeSettingValue(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 614
    .end local v7    # "salesCode":Ljava/lang/String;
    :cond_19
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindow:Z

    goto/16 :goto_1

    .line 643
    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 698
    :cond_1b
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 701
    :cond_1c
    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v9, :cond_1d

    iget-boolean v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    if-nez v9, :cond_1d

    const/4 v9, 0x3

    :goto_b
    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    goto/16 :goto_4

    :cond_1d
    const/4 v9, 0x2

    goto :goto_b

    .line 724
    :cond_1e
    const/4 v9, 0x2

    goto/16 :goto_5

    .line 732
    :cond_1f
    const/4 v9, 0x2

    goto/16 :goto_6

    .line 794
    .restart local v1    # "demoImport":I
    .restart local v7    # "salesCode":Ljava/lang/String;
    :cond_20
    const-string v9, "ContactsApplication"

    const-string v10, "Need Not Import..."

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 824
    .end local v1    # "demoImport":I
    .restart local v0    # "bListViewState":Z
    .restart local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_21
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 825
    const/4 v9, -0x1

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 826
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->hideSplitBar()V

    goto :goto_8

    .line 829
    :cond_22
    const/4 v9, 0x0

    goto :goto_9

    .line 832
    .end local v0    # "bListViewState":Z
    :cond_23
    const/4 v9, -0x2

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_a
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 1001
    packed-switch p1, :pswitch_data_0

    .line 1010
    :goto_0
    return-object v0

    .line 1003
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e027c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e027e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/contacts/activities/JoinContactActivity;->MAX_JOINED_CONTACT_COUNT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1001
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f0904a0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 3312
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v2, v4, :cond_1

    .line 3314
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->closeOptionsMenu()V

    .line 3317
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3319
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 3320
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f120000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3337
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3339
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v2

    if-lez v2, :cond_3

    const v2, 0x7f0904f5

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    .line 3354
    :cond_2
    :goto_0
    return v4

    .line 3343
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3344
    .local v0, "createButtonInActionBar":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showAddaContactTutorialPopup(Landroid/view/View;)V

    .line 3347
    .end local v0    # "createButtonInActionBar":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->initSpeedDialTutorialTwoPanes()V

    .line 3349
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_2

    .line 3350
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 3352
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public onDeleteFavoritesRequested()V
    .locals 2

    .prologue
    .line 4565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.FAVORITE_DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4566
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4567
    return-void
.end method

.method public onDeleteRequested(Z)V
    .locals 3
    .param p1, "requested"    # Z

    .prologue
    const/4 v1, 0x1

    .line 4550
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->setDeleteMode(Z)V

    .line 4551
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    .line 4556
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 4558
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 4561
    :cond_0
    return-void

    .line 4558
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 1556
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v1, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 1560
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1561
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1576
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1579
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1599
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v1, :cond_3

    .line 1600
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 1602
    :cond_3
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 1603
    return-void

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1582
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 1583
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDialerTabSelected()V
    .locals 1

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1788
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1789
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->clearSerchViewFocus()V

    .line 1792
    :cond_0
    return-void
.end method

.method public onFavoriteChangeViewState()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4576
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "favorite_strquent_listview_state"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4577
    .local v0, "bListViewState":Z
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "favorite_strquent_listview_state"

    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4579
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setStreListViewState(Z)V

    .line 4581
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    if-eqz v2, :cond_2

    .line 4582
    if-nez v0, :cond_5

    .line 4583
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4584
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 4585
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4586
    const v2, 0x7f0903c1

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4589
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4590
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4591
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4604
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v2, v4

    .line 4577
    goto :goto_0

    :cond_4
    move v3, v4

    .line 4579
    goto :goto_1

    .line 4594
    :cond_5
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_6

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4595
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->hideSplitBar()V

    .line 4596
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4598
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4599
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4600
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v12, 0x3

    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 4904
    sparse-switch p1, :sswitch_data_0

    .line 4983
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4984
    .local v1, "config":Landroid/content/res/Configuration;
    iget v11, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v11, v12, :cond_9

    iget v11, v1, Landroid/content/res/Configuration;->navigation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 4987
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4989
    const/16 v11, 0x52

    if-eq p1, v11, :cond_9

    const/4 v11, 0x4

    if-eq p1, v11, :cond_9

    .line 4990
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    .line 5009
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v10

    .line 4906
    :sswitch_0
    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v11}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callSelection()Z

    move-result v11

    if-nez v11, :cond_0

    .line 5009
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    goto :goto_0

    .line 4913
    :sswitch_1
    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v11}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteSelection()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    .line 4920
    :sswitch_2
    iget-boolean v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-eqz v11, :cond_1

    goto :goto_0

    .line 4927
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-nez v11, :cond_0

    .line 4931
    :cond_2
    iget-boolean v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v11, :cond_1

    .line 4932
    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v11, :cond_1

    .line 4933
    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v11}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 4934
    iput-boolean v10, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    goto :goto_1

    .line 4941
    :sswitch_4
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isHelpHubDownloadableSupported()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "com.samsung.helpplugin"

    invoke-static {p0, v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 4943
    invoke-direct {p0, p0}, Lcom/android/contacts/activities/PeopleActivity;->requestDownloadingResource(Landroid/content/Context;)V

    goto :goto_0

    .line 4947
    :cond_3
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getLaunchHelpAppIntent()Landroid/content/Intent;

    move-result-object v4

    .line 4948
    .local v4, "helpAppintent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 4949
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4950
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_4

    move v6, v10

    .line 4951
    .local v6, "isIntentSafe":Z
    :cond_4
    if-eqz v6, :cond_0

    .line 4952
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4959
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "helpAppintent":Landroid/content/Intent;
    .end local v6    # "isIntentSafe":Z
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :sswitch_5
    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v11}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v11

    if-ne v11, v12, :cond_1

    .line 4960
    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v11}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactUriSelection()Landroid/net/Uri;

    move-result-object v2

    .line 4961
    .local v2, "contactUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 4962
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.EDIT"

    invoke-direct {v5, v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4963
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.android.jcontacts"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4966
    const-string v11, "com.android.jcontacts"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4967
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 4968
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_6

    .line 4969
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4971
    :cond_6
    const/high16 v11, 0x24000000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4973
    iget-boolean v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v11, :cond_7

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4974
    :cond_7
    const-string v11, "finishActivityOnSaveCompleted"

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4977
    :cond_8
    const/16 v10, 0xd

    invoke-virtual {p0, v5, v10}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 4995
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :cond_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v9

    .line 4996
    .local v9, "unicodeChar":I
    if-eqz v9, :cond_1

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 4997
    new-instance v8, Ljava/lang/String;

    new-array v11, v10, [I

    aput v9, v11, v6

    invoke-direct {v8, v11, v6, v10}, Ljava/lang/String;-><init>([III)V

    .line 5000
    .local v8, "query":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v11}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v11

    if-nez v11, :cond_1

    .line 5001
    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v11, v8}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 5002
    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v11, v10}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 4904
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x43 -> :sswitch_1
        0x52 -> :sswitch_3
        0x54 -> :sswitch_2
        0x83 -> :sswitch_4
        0x84 -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 4439
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v0, v3, -0x7001

    .line 4440
    .local v0, "filteredMetaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4441
    sparse-switch p1, :sswitch_data_0

    .line 4463
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 4443
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onSearchRequested()Z

    goto :goto_0

    .line 4446
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4447
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4449
    iget-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4450
    :cond_1
    const-string v3, "finishActivityOnSaveCompleted"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4452
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4455
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 4441
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x22 -> :sswitch_0
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 5026
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 5027
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v1, :cond_0

    .line 5028
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 5030
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    .line 5031
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showSpeedDialTutorialPopupforChagall()V

    .line 5033
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5034
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5035
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5037
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onModeChanged(Z)V
    .locals 4
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 6089
    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModeChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6090
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    if-eqz v1, :cond_1

    .line 6092
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "favorite_strquent_listview_state"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6094
    .local v0, "bListViewState":Z
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 6104
    .end local v0    # "bListViewState":Z
    :cond_1
    :goto_0
    return-void

    .line 6097
    .restart local v0    # "bListViewState":Z
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 6100
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 6101
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->updateWindowLayout()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x3

    const/4 v9, -0x2

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setIntent(Landroid/content/Intent;)V

    .line 868
    if-nez p1, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 871
    iget v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    if-ne v4, v7, :cond_2

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v4, :cond_2

    .line 872
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 877
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 878
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    goto :goto_0

    .line 882
    :cond_3
    const-string v4, "from_phone_app"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneAppForDetail:Z

    .line 883
    const-string v4, "from_phone_app"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneApp:Z

    .line 884
    const-string v4, "selected_tab_pos"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFromPhoneAppTabPos:I

    .line 885
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 889
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 890
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4, v7}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    .line 891
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 917
    :cond_4
    const-string v4, "joinCompleted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 918
    const-string v4, "joinFail"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 919
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->showDialog(I)V

    .line 922
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 923
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4, v7}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    .line 924
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 950
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v4

    if-eq v4, v6, :cond_7

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v4

    if-ne v4, v8, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 954
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromDetail"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 959
    :cond_8
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 961
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromDetail"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v4, :cond_9

    .line 962
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchFromRelationship(Z)V

    .line 963
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 964
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 965
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 968
    :cond_9
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v4, :cond_e

    .line 969
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 970
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFromPhoneAppTabPos:I

    if-eq v4, v8, :cond_a

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v4

    if-ne v4, v8, :cond_13

    .line 972
    :cond_a
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "favorite_strquent_listview_state"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 974
    .local v1, "bListViewState":Z
    if-nez v1, :cond_b

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneApp:Z

    if-eqz v4, :cond_12

    iget v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFromPhoneAppTabPos:I

    if-eq v4, v8, :cond_12

    .line 976
    :cond_b
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 978
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 984
    :goto_2
    const v4, 0x7f0903c1

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v5

    if-nez v5, :cond_c

    if-nez v1, :cond_d

    :cond_c
    const/16 v3, 0x8

    :cond_d
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 991
    .end local v1    # "bListViewState":Z
    :goto_3
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    invoke-direct {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 996
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto/16 :goto_0

    .line 929
    :cond_f
    const-string v4, "deleteCompleted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 930
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->onDeleteCompleted()V

    goto/16 :goto_0

    .line 936
    :cond_10
    const-string v4, "editMemberCompleted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 937
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->dismissProgress()V

    goto/16 :goto_1

    .line 938
    :cond_11
    const-string v4, "deleteContactComplete"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 939
    const v4, 0x7f0e0349

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 941
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 942
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4, v7}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    .line 943
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 980
    .restart local v1    # "bListViewState":Z
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_12
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 981
    const/4 v4, -0x1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 982
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->hideSplitBar()V

    goto :goto_2

    .line 988
    .end local v1    # "bListViewState":Z
    :cond_13
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 989
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    goto :goto_3
.end method

.method public onOperation(Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;)V
    .locals 4
    .param p1, "operation"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5273
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$12;->$SwitchMap$com$sec$android$app$contacts$list$ContactSplitRatioController$ContactSplitRatioListener$Operation:[I

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5331
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkonwn ContactSplitRatioController action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5275
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5276
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    .line 5334
    :goto_0
    return-void

    .line 5278
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_1

    .line 5279
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 5281
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5284
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5289
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 5294
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5291
    :pswitch_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5297
    :pswitch_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5303
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5304
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5306
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_3

    .line 5307
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 5309
    :pswitch_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5312
    :pswitch_8
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5317
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    goto :goto_0

    .line 5322
    :pswitch_9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5319
    :pswitch_a
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5325
    :pswitch_b
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 5273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 5279
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 5289
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 5307
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 5317
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 27
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 3881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 3883
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 3886
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 3887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f0901e1

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 3888
    .local v20, "searchView":Landroid/view/View;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->hasFocus()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 3889
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->clearFocus()V

    .line 3892
    .end local v20    # "searchView":Landroid/view/View;
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    .line 4434
    :cond_3
    :goto_0
    const/16 v23, 0x0

    :goto_1
    return v23

    .line 3895
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/activities/ActionBarAdapter;->isUpShowing()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 3897
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    .line 3899
    :cond_4
    const/16 v23, 0x1

    goto :goto_1

    .line 3912
    :sswitch_1
    const/16 v23, 0x1

    goto :goto_1

    .line 3915
    :sswitch_2
    const-string v23, ""

    const-string v24, "CHINA"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 3916
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 3917
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3918
    const-string v23, "com.sec.android.yellowpage"

    const-string v24, "com.sec.android.yellowpage.YellowPageMainActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3920
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3925
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_2
    const/16 v23, 0x1

    goto :goto_1

    .line 3921
    .restart local v10    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 3922
    .local v4, "anfe":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 3929
    .end local v4    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 3930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 3931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode(Z)V

    .line 3940
    :cond_6
    :goto_3
    const/16 v23, 0x1

    goto :goto_1

    .line 3932
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 3934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startActionMode(Z)V

    goto :goto_3

    .line 3935
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 3937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/ContactTileListFragment;->startActionMode()V

    goto :goto_3

    .line 3944
    :sswitch_4
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3952
    .restart local v10    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 3954
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/high16 v24, 0x7f0a0000

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    .line 3965
    .local v21, "settingsAreMultiPane":Z
    :goto_4
    const-string v23, ":android:show_fragment"

    const-class v24, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3967
    const-string v23, ":android:show_fragment_title"

    const v24, 0x7f0e01be

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3969
    const-string v23, ":android:no_headers"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3970
    const/4 v6, 0x0

    .line 3971
    .local v6, "contactsCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 3972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v6

    .line 3973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v23

    if-eqz v23, :cond_c

    const/16 v23, 0x1

    :goto_5
    sub-int v6, v6, v23

    .line 3978
    :cond_9
    const-string v23, "contactscount"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3979
    const/16 v23, 0x63

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3980
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 3957
    .end local v6    # "contactsCount":I
    .end local v21    # "settingsAreMultiPane":Z
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 3958
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0001

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    .restart local v21    # "settingsAreMultiPane":Z
    goto :goto_4

    .line 3961
    .end local v21    # "settingsAreMultiPane":Z
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1110007

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    .restart local v21    # "settingsAreMultiPane":Z
    goto/16 :goto_4

    .line 3973
    .restart local v6    # "contactsCount":I
    :cond_c
    const/16 v23, 0x0

    goto :goto_5

    .line 3984
    .end local v6    # "contactsCount":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v21    # "settingsAreMultiPane":Z
    :sswitch_5
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v13

    .line 3985
    .local v13, "isKnoxMode":Z
    if-nez v13, :cond_11

    .line 3986
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v18

    .line 3999
    .local v18, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/16 v16, 0x0

    .line 4000
    .local v16, "isSimReady":Z
    const/4 v15, 0x0

    .line 4001
    .local v15, "isSimCheck":Z
    const/4 v14, 0x0

    .line 4002
    .local v14, "isSim2Check":Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 4003
    const-string v23, "vnd.sec.contact.sim"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    const-string v23, "vnd.sec.contact.sim"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_d

    const/4 v15, 0x1

    .line 4007
    :goto_6
    const-string v23, "vnd.sec.contact.sim2"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    const-string v23, "vnd.sec.contact.sim2"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_e

    const/4 v14, 0x1

    .line 4011
    :goto_7
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v23

    if-eqz v23, :cond_f

    if-eqz v15, :cond_f

    .line 4012
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    const v24, 0x7f0e0113

    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    .line 4014
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4003
    :cond_d
    const/4 v15, 0x0

    goto :goto_6

    .line 4007
    :cond_e
    const/4 v14, 0x0

    goto :goto_7

    .line 4016
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v23

    if-eqz v23, :cond_11

    if-eqz v14, :cond_11

    .line 4017
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    const v24, 0x7f0e0113

    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    .line 4019
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4022
    :cond_10
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v16

    .line 4023
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v23

    if-eqz v23, :cond_11

    if-nez v16, :cond_11

    .line 4024
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    const v24, 0x7f0e0113

    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    .line 4026
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4033
    .end local v14    # "isSim2Check":Z
    .end local v15    # "isSimCheck":Z
    .end local v16    # "isSimReady":Z
    .end local v18    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v23, v0

    if-nez v23, :cond_12

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 4034
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 4037
    :cond_13
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/android/contacts/list/AccountFilterActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4039
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "currentFilter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4041
    const/16 v23, 0x2711

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4042
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4056
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v13    # "isKnoxMode":Z
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 4057
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4061
    :sswitch_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_Common_EnableNotificationWhenDeviceMemoryFull"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 4070
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isLessThan5Percent()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 4071
    const v23, 0x7f0e02cf

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 4072
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4077
    :cond_14
    new-instance v10, Landroid/content/Intent;

    const-string v23, "android.intent.action.INSERT"

    sget-object v24, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4082
    .restart local v10    # "intent":Landroid/content/Intent;
    const/high16 v23, 0x24000000

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4084
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v23, v0

    if-nez v23, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 4085
    :cond_15
    const-string v23, "finishActivityOnSaveCompleted"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4087
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16

    .line 4088
    const-string v23, "finishActivityOnSaveCompleted"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4090
    const-string v23, "fromPeopleActivity"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4092
    const-string v23, "tutorial_mode"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    .line 4094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 4095
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    .line 4099
    :cond_16
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4104
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4107
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_8
    const-string v23, "0022"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4108
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->createNewGroupWithAccountDisambiguation()V

    .line 4109
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4113
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_Common_EnableNotificationWhenDeviceMemoryFull"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 4122
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isLessThan5Percent()Z

    move-result v23

    if-eqz v23, :cond_17

    .line 4123
    const v23, 0x7f0e02cf

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 4124
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4129
    :cond_17
    const/4 v6, 0x0

    .line 4130
    .restart local v6    # "contactsCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    .line 4131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v6

    .line 4132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v23

    if-eqz v23, :cond_19

    const/16 v23, 0x1

    :goto_8
    sub-int v6, v6, v23

    .line 4134
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;I)V

    .line 4135
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4132
    :cond_19
    const/16 v23, 0x0

    goto :goto_8

    .line 4140
    .end local v6    # "contactsCount":I
    :sswitch_a
    new-instance v10, Landroid/content/Intent;

    const-string v23, "com.android.settings"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4141
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "android.settings.SYNC_SETTINGS"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4142
    const/high16 v23, 0x80000

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4143
    const-string v23, "authorities"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "com.android.contacts"

    aput-object v26, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4146
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4147
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4151
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 4153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode(Z)V

    .line 4155
    :cond_1a
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4159
    :sswitch_c
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4160
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "REMOVE_FROM_KNOX"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4161
    const/16 v23, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4162
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 4163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setReadyForFakeQuery(Z)V

    .line 4164
    :cond_1b
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4167
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_d
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4168
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "remove"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4169
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->isFromRemove(Z)V

    .line 4170
    const/16 v23, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4171
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4174
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_e
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4175
    .restart local v10    # "intent":Landroid/content/Intent;
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->isFromRemove(Z)V

    .line 4176
    const/16 v23, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4177
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4180
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_f
    const-string v23, "0024"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 4182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/group/GroupBrowseListFragment;->setDeleteOnlyMode(Z)V

    .line 4183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActionMode()V

    .line 4185
    :cond_1c
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4188
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->isResumed()Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 4189
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 4190
    :cond_1d
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4195
    :sswitch_11
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 4196
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "jibe.android.activity"

    const-string v24, "jibe.android.activity.LoginActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4197
    const-string v23, "backup_menu"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4198
    const-string v23, "package_name"

    const-string v24, "com.android.contacts"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4200
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/sec/android/app/contacts/util/KDDIUtils;->hasFriendsNote(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v23

    if-nez v23, :cond_1e

    .line 4201
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e0017

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/KDDIUtils;->showFriendNoteDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4209
    :goto_9
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4202
    :cond_1e
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/sec/android/app/contacts/util/KDDIUtils;->isFriendsNoteIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v23

    if-nez v23, :cond_1f

    .line 4203
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e0019

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/KDDIUtils;->showFriendNoteDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    .line 4205
    :cond_1f
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 4213
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_12
    const-string v23, "0006"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4215
    new-instance v22, Landroid/content/Intent;

    const-class v23, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4216
    .local v22, "speedDialIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_20

    .line 4217
    const-string v23, "tutorial_mode"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4219
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_22

    .line 4221
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    .line 4222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_21

    .line 4223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 4225
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 4227
    :cond_22
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4231
    .end local v22    # "speedDialIntent":Landroid/content/Intent;
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->isResumed()Z

    move-result v23

    if-eqz v23, :cond_23

    .line 4232
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/contacts/interaction/SendDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 4234
    :cond_23
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4238
    :sswitch_14
    new-instance v10, Landroid/content/Intent;

    const-string v23, "intent.action.INTERACTION_TOPMENU"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4239
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "additional"

    const-string v24, "email-multi"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4240
    const-string v23, "StartFrom"

    const-string v24, "contact"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4241
    const-string v23, "actionbar_title"

    const-string v24, "Send email"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24

    .line 4244
    const-string v23, "mode"

    const-string v24, "easy-mode"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4246
    :cond_24
    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4247
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4251
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_15
    const-string v23, "0023"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4252
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4253
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4254
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4257
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v7

    .line 4259
    .local v7, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_25

    .line 4260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v8

    .line 4262
    .local v8, "groupType":I
    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v8, v0, :cond_26

    .line 4263
    new-instance v23, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4281
    .end local v8    # "groupType":I
    :cond_25
    :goto_a
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4265
    .restart local v8    # "groupType":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isAutoAdd()Z

    move-result v11

    .line 4266
    .local v11, "isAutoAdd":Z
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4267
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4268
    const-string v23, "GroupInfo"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4270
    const-string v23, "AutoAdd"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4272
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v8, v0, :cond_27

    .line 4273
    const-string v23, "EditMode"

    const/16 v24, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4278
    :goto_b
    const/16 v23, 0x5f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 4276
    :cond_27
    const-string v23, "EditMode"

    const/16 v24, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_b

    .line 4284
    .end local v7    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v8    # "groupType":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "isAutoAdd":Z
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_28

    .line 4285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startActionMode(Z)V

    .line 4289
    :goto_c
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4287
    :cond_28
    const-string v23, "PeopleActivity"

    const-string v24, "case R.id.menu_remove_member: mGroupDetailFragment == null "

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4292
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v7

    .line 4293
    .restart local v7    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v8

    .line 4294
    .restart local v8    # "groupType":I
    new-instance v10, Landroid/content/Intent;

    const-string v23, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4295
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4296
    const-string v23, "GroupInfo"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4297
    const-string v23, "actionCode"

    const/16 v24, 0x96

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4299
    const-string v23, "SelectMode"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4300
    const/16 v23, 0x61

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4301
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4304
    .end local v7    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v8    # "groupType":I
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v7

    .line 4305
    .restart local v7    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v8

    .line 4306
    .restart local v8    # "groupType":I
    new-instance v10, Landroid/content/Intent;

    const-string v23, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4307
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4308
    const-string v23, "GroupInfo"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4309
    const-string v23, "actionCode"

    const/16 v24, 0xa0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4311
    const-string v23, "SelectMode"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4312
    const/16 v23, 0x62

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4313
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4316
    .end local v7    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v8    # "groupType":I
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v7

    .line 4317
    .restart local v7    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    if-eqz v7, :cond_2a

    .line 4318
    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v8

    .line 4319
    .restart local v8    # "groupType":I
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/android/contacts/activities/GroupEditorActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4320
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "android.intent.action.EDIT"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4321
    const-string v23, "GroupInfo"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4323
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v8, v0, :cond_29

    .line 4324
    const-string v23, "EditMode"

    const/16 v24, 0xf

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4329
    :goto_d
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4330
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4326
    :cond_29
    const-string v23, "EditMode"

    const/16 v24, 0xe

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_d

    .line 4335
    .end local v7    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v8    # "groupType":I
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_2a
    :sswitch_1b
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4336
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4337
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4340
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_1c
    const-string v23, "0018"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4341
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->onAddFavoritesRequested()V

    .line 4342
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4346
    :sswitch_1d
    const-string v23, "0019"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2b

    .line 4348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/list/ContactTileListFragment;->setDeleteOnlyMode(Z)V

    .line 4349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/ContactTileListFragment;->startActionMode()V

    .line 4351
    :cond_2b
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4355
    :sswitch_1e
    const-string v23, "0020"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4356
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->onFavoriteChangeViewState()V

    .line 4357
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4361
    :sswitch_1f
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4362
    .local v5, "circleIntent":Landroid/content/Intent;
    const-string v23, "com.samsung.circleGL.action.MAIN"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4363
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4364
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4368
    .end local v5    # "circleIntent":Landroid/content/Intent;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v7

    .line 4369
    .restart local v7    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    new-instance v10, Landroid/content/Intent;

    const-class v23, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4370
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v23, "com.sec.android.app.contacts.action.CONTACTS_DELETE_IN_GROUP"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4371
    const-string v23, "GroupInfo"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4372
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4373
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4376
    .end local v7    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_21
    const-string v23, "0028"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v23

    if-eqz v23, :cond_2d

    const/16 v19, 0x1

    .line 4379
    .local v19, "profileCount":I
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v23

    sub-int v23, v23, v19

    if-gtz v23, :cond_2c

    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_2e

    .line 4381
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 4382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v23, v0

    const v24, 0x7f0904f5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/detail/ContactLoaderFragment;->doShareNameCardAction(Landroid/view/View;)Z

    goto/16 :goto_0

    .line 4378
    .end local v19    # "profileCount":I
    :cond_2d
    const/16 v19, 0x0

    goto :goto_e

    .line 4385
    .restart local v19    # "profileCount":I
    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->lauchMultiSelectionForShareNameCard()V

    goto/16 :goto_0

    .line 4392
    .end local v19    # "profileCount":I
    :sswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->onChangeSwipeAction()V

    goto/16 :goto_0

    .line 4397
    :sswitch_23
    new-instance v10, Landroid/content/Intent;

    const-string v23, "com.android.contacts.action.SHOW_NAMECARD_LIST"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4398
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4399
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4403
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_24
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isHelpHubDownloadableSupported()Z

    move-result v23

    if-eqz v23, :cond_2f

    const-string v23, "com.samsung.helpplugin"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_2f

    .line 4405
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->requestDownloadingResource(Landroid/content/Context;)V

    .line 4406
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4409
    :cond_2f
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getLaunchHelpAppIntent()Landroid/content/Intent;

    move-result-object v9

    .line 4410
    .local v9, "helpAppintent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 4411
    .local v17, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4412
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_31

    const/4 v12, 0x1

    .line 4413
    .local v12, "isIntentSafe":Z
    :goto_f
    if-eqz v12, :cond_30

    .line 4414
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4416
    :cond_30
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 4412
    .end local v12    # "isIntentSafe":Z
    :cond_31
    const/4 v12, 0x0

    goto :goto_f

    .line 4427
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "helpAppintent":Landroid/content/Intent;
    .end local v17    # "packageManager":Landroid/content/pm/PackageManager;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_32

    .line 4428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMovetoKnoxMode(Z)V

    .line 4429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode(Z)V

    .line 4431
    :cond_32
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 3892
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904a0 -> :sswitch_7
        0x7f0904a1 -> :sswitch_8
        0x7f0904a3 -> :sswitch_20
        0x7f0904a4 -> :sswitch_15
        0x7f0904a5 -> :sswitch_1
        0x7f0904a6 -> :sswitch_b
        0x7f0904a8 -> :sswitch_c
        0x7f0904a9 -> :sswitch_23
        0x7f0904aa -> :sswitch_f
        0x7f0904ab -> :sswitch_6
        0x7f0904ac -> :sswitch_21
        0x7f0904ad -> :sswitch_10
        0x7f0904ae -> :sswitch_11
        0x7f0904af -> :sswitch_2
        0x7f0904b0 -> :sswitch_12
        0x7f0904b1 -> :sswitch_1a
        0x7f0904b2 -> :sswitch_13
        0x7f0904b3 -> :sswitch_14
        0x7f0904b5 -> :sswitch_1b
        0x7f0904b6 -> :sswitch_1f
        0x7f0904b7 -> :sswitch_e
        0x7f0904b8 -> :sswitch_d
        0x7f0904b9 -> :sswitch_4
        0x7f0904ba -> :sswitch_22
        0x7f0904bb -> :sswitch_16
        0x7f0904bc -> :sswitch_17
        0x7f0904bd -> :sswitch_18
        0x7f0904be -> :sswitch_19
        0x7f0904bf -> :sswitch_1c
        0x7f0904c0 -> :sswitch_1d
        0x7f0904c1 -> :sswitch_1e
        0x7f0904c2 -> :sswitch_24
        0x7f0904c3 -> :sswitch_3
        0x7f0904c4 -> :sswitch_25
        0x7f0904c5 -> :sswitch_25
        0x7f0904c6 -> :sswitch_9
        0x7f0904c7 -> :sswitch_a
        0x7f0904c8 -> :sswitch_5
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3290
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3291
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showSpeedDialTutorialPopup()V

    .line 3292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    .line 3294
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3295
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 5014
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 5015
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_0

    .line 5016
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 5017
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    .line 5018
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I

    .line 5019
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 5021
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 5022
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1289
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 1290
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    .line 1291
    const-string v0, "instant_lettering"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v0, :cond_0

    .line 1293
    invoke-static {}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->dismissHelpDialog()V

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 1307
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialogShowing:Z

    .line 1312
    :goto_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 1313
    return-void

    .line 1310
    :cond_1
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialogShowing:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 55
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3393
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 3394
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    move/from16 v51, v0

    if-nez v51, :cond_0

    .line 3396
    const/16 v51, 0x0

    .line 3874
    :goto_0
    return v51

    .line 3399
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v21

    .line 3402
    .local v21, "hasPermanentMenuKey":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v51, v0

    if-nez v51, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v51

    if-nez v51, :cond_1

    if-nez v21, :cond_1

    .line 3403
    const/16 v51, 0x0

    goto :goto_0

    .line 3407
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v51

    if-eqz v51, :cond_2

    .line 3408
    const/16 v51, 0x0

    goto :goto_0

    .line 3412
    :cond_2
    const-string v51, "com.samsung.circleGL.action.MAIN"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v51

    sput-boolean v51, Lcom/android/contacts/activities/PeopleActivity;->mIsAvailableMyNetwork:Z

    .line 3414
    const v51, 0x7f0904a5

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 3415
    .local v10, "backupMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904a0

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 3416
    .local v5, "addContactMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904c8

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 3418
    .local v13, "contactsFilterMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904c6

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 3419
    .local v24, "importExportMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904c7

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 3420
    .local v4, "accountMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904b9

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/PeopleActivity;->settingsMenu:Landroid/view/MenuItem;

    .line 3421
    const v51, 0x7f0904b0

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/PeopleActivity;->speedDialHelpMenu:Landroid/view/MenuItem;

    .line 3422
    const v51, 0x7f0904ba

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v49

    .line 3423
    .local v49, "swipeMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904ad

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    .line 3424
    .local v33, "mergeMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904b0

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v48

    .line 3425
    .local v48, "speedDialSettingMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904b2

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v41

    .line 3426
    .local v41, "sendMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904b3

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v40

    .line 3427
    .local v40, "sendEmailMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904b4

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v43

    .line 3428
    .local v43, "sendMessageMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904a4

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 3429
    .local v11, "changeOrderMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904bb

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 3430
    .local v8, "addMemberMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904bc

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    .line 3431
    .local v36, "removeMemberMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904bd

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v42

    .line 3432
    .local v42, "sendMessageInGroupMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904be

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v39

    .line 3433
    .local v39, "sendEmailInGroupMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904b1

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 3434
    .local v16, "editGroupMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904ab

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v47

    .line 3435
    .local v47, "simManagement":Landroid/view/MenuItem;
    const v51, 0x7f0904af

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v50

    .line 3436
    .local v50, "yellowpagesMenu":Landroid/view/MenuItem;
    const/16 v51, 0x0

    invoke-interface/range {v50 .. v51}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3437
    const v51, 0x7f0904a1

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 3438
    .local v7, "addGroupMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904bf

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 3439
    .local v6, "addFavoriteMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904c0

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    .line 3441
    const v51, 0x7f0904a6

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    .line 3443
    const v51, 0x7f0904a8

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/PeopleActivity;->mMultipleRemoveFromKnoxMenu:Landroid/view/MenuItem;

    .line 3444
    const v51, 0x7f0904b7

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/PeopleActivity;->mAddPrivateContactMenu:Landroid/view/MenuItem;

    .line 3445
    const v51, 0x7f0904b8

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/PeopleActivity;->mRemovePrivateContactMenu:Landroid/view/MenuItem;

    .line 3446
    const v51, 0x7f0904aa

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 3447
    .local v15, "deleteGroupMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904a3

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 3448
    .local v14, "deleteContactInGroupMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904c2

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 3449
    .local v22, "helpMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904ac

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    .line 3450
    .local v45, "shareNamecardMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904a9

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v46

    .line 3451
    .local v46, "showNamecardList":Landroid/view/MenuItem;
    const v51, 0x7f0904c4

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3452
    .local v2, "MoveToKnoxMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904c5

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3459
    .local v3, "MoveToPersonalMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904b5

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 3461
    .local v12, "contactCounterMenu":Landroid/view/MenuItem;
    const v51, 0x7f0904b6

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    .line 3463
    .local v34, "myNetworkMenu":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v29

    .line 3466
    .local v29, "isSearchMode":Z
    const v51, 0x7f0904c3

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v37

    .line 3468
    .local v37, "selectMenu":Landroid/view/MenuItem;
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/activities/PeopleActivity;->resetOptionMenu(Landroid/view/Menu;)V

    .line 3469
    if-nez v29, :cond_4

    .line 3471
    const/16 v38, -0x1

    .line 3472
    .local v38, "selectedTab":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    move/from16 v51, v0

    if-eqz v51, :cond_8

    .line 3473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v51

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_6

    .line 3474
    const/16 v38, 0x1

    .line 3484
    :cond_3
    :goto_1
    packed-switch v38, :pswitch_data_0

    .line 3869
    .end local v38    # "selectedTab":I
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v17

    .line 3870
    .local v17, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v51

    if-eqz v51, :cond_5

    .line 3871
    const/16 v51, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3874
    :cond_5
    const/16 v51, 0x1

    goto/16 :goto_0

    .line 3475
    .end local v17    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v38    # "selectedTab":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v51

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_7

    .line 3476
    const/16 v38, 0x3

    goto :goto_1

    .line 3477
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v51

    if-nez v51, :cond_3

    .line 3478
    const/16 v38, 0x0

    goto :goto_1

    .line 3481
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v38

    goto :goto_1

    .line 3486
    :pswitch_0
    const-string v51, ""

    const-string v52, "CHINA"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_9

    .line 3487
    if-eqz v50, :cond_9

    .line 3488
    const/16 v51, 0x0

    invoke-interface/range {v50 .. v51}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3491
    :cond_9
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v51

    const/16 v52, -0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_a

    .line 3508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v51

    if-lez v51, :cond_b

    const/16 v51, 0x1

    :goto_3
    move-object/from16 v0, v52

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3511
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->isHelpMenuVisible()Z

    move-result v51

    move-object/from16 v0, v22

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3513
    if-eqz v37, :cond_4

    .line 3514
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v51, v0

    if-eqz v51, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v51

    if-lez v51, :cond_c

    const/16 v51, 0x1

    :goto_4
    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3508
    :cond_b
    const/16 v51, 0x0

    goto :goto_3

    .line 3514
    :cond_c
    const/16 v51, 0x0

    goto :goto_4

    .line 3519
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    move/from16 v51, v0

    if-eqz v51, :cond_d

    .line 3520
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/activities/PeopleActivity;->simplifyTutorialMenu(Landroid/view/Menu;)V

    goto/16 :goto_2

    .line 3523
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    move/from16 v51, v0

    if-eqz v51, :cond_e

    .line 3524
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/activities/PeopleActivity;->simplifyOptionMenuIfEasyMode(Landroid/view/Menu;)V

    goto/16 :goto_2

    .line 3532
    :cond_e
    const-string v51, ""

    const-string v52, "CHINA"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_f

    .line 3533
    if-eqz v50, :cond_f

    .line 3534
    const/16 v51, 0x1

    invoke-interface/range {v50 .. v51}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3537
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->settingsMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3541
    if-eqz v37, :cond_10

    .line 3542
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v51, v0

    if-eqz v51, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v51

    if-lez v51, :cond_2b

    const/16 v51, 0x1

    :goto_5
    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3546
    :cond_10
    const-string v51, "feature_scroll_fragment"

    invoke-static/range {v51 .. v51}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_2d

    .line 3547
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v51, v0

    if-nez v51, :cond_2c

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v51

    if-nez v51, :cond_2c

    const/16 v51, 0x1

    :goto_6
    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v51, v0

    const-string v52, "swipe_to_call_message"

    const/16 v53, 0x1

    invoke-interface/range {v51 .. v53}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    move-object/from16 v51, v0

    if-eqz v51, :cond_11

    .line 3552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v52, v0

    const-string v53, "swipe_to_call_message"

    const/16 v54, 0x1

    invoke-interface/range {v52 .. v54}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    invoke-virtual/range {v51 .. v52}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollFragment(Z)V

    .line 3559
    :cond_11
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->isHelpMenuVisible()Z

    move-result v51

    move-object/from16 v0, v22

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3560
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v51

    const v52, 0x7f0a000e

    invoke-virtual/range {v51 .. v52}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v51

    if-eqz v51, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v51

    if-lez v51, :cond_2e

    const/16 v51, 0x1

    :goto_8
    move-object/from16 v0, v45

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v51

    check-cast v51, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v51

    if-eqz v51, :cond_2f

    const/16 v35, 0x1

    .line 3565
    .local v35, "profileCount":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v51

    sub-int v51, v51, v35

    if-lez v51, :cond_30

    const/16 v51, 0x1

    :goto_a
    move-object/from16 v0, v52

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v51

    sub-int v51, v51, v35

    if-lez v51, :cond_31

    const/16 v31, 0x1

    .line 3570
    .local v31, "knoxContactCount":Z
    :goto_b
    if-eqz v2, :cond_12

    .line 3571
    if-eqz v31, :cond_33

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->isMoveToKNOXEnabled()Z

    move-result v51

    if-eqz v51, :cond_33

    .line 3572
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    move/from16 v51, v0

    if-eqz v51, :cond_32

    .line 3573
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3575
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3576
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3590
    :cond_12
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleRemoveFromKnoxMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    if-eqz v51, :cond_13

    .line 3591
    if-eqz v31, :cond_34

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->isMoveToKNOXEnabled()Z

    move-result v51

    if-eqz v51, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z

    move/from16 v51, v0

    if-nez v51, :cond_34

    .line 3593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleRemoveFromKnoxMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3599
    :cond_13
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setVisibleMergeMenuIfNeeded(Landroid/view/MenuItem;)V

    .line 3600
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_35

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v51

    const/16 v52, 0x64

    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_35

    const/16 v51, 0x1

    :goto_e
    move-object/from16 v0, v48

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAddPrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mRemovePrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3616
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_36

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEmailAvailable(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_36

    .line 3617
    const/16 v51, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3618
    const/16 v51, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3619
    const/16 v51, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3634
    :goto_f
    sget-boolean v51, Lcom/android/contacts/activities/PeopleActivity;->mIsAvailableMyNetwork:Z

    if-eqz v51, :cond_39

    .line 3635
    const/16 v51, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3642
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v51, v0

    if-nez v51, :cond_14

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_15

    .line 3643
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const v52, 0x7f0e022c

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3647
    :cond_15
    if-eqz v12, :cond_16

    .line 3648
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v51

    const-string v52, "CscFeature_Contact_EnableMenuStorageStatus"

    invoke-virtual/range {v51 .. v52}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_3a

    .line 3652
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3659
    :cond_16
    :goto_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v51

    const-string v52, "CscFeature_Contact_EnableAAB"

    invoke-virtual/range {v51 .. v52}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_17

    .line 3661
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v51

    const-string v52, "airplane_mode_on"

    const/16 v53, 0x0

    invoke-static/range {v51 .. v53}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v51

    if-eqz v51, :cond_3b

    const/16 v25, 0x1

    .line 3663
    .local v25, "isAirplaneMode":Z
    :goto_12
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v20

    .line 3664
    .local v20, "hasIccCard":Z
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v27

    .line 3665
    .local v27, "isKnoxMode":Z
    if-eqz v20, :cond_3c

    if-nez v25, :cond_3c

    if-nez v27, :cond_3c

    .line 3666
    const/16 v51, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3671
    .end local v20    # "hasIccCard":Z
    .end local v25    # "isAirplaneMode":Z
    .end local v27    # "isKnoxMode":Z
    :cond_17
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    move/from16 v51, v0

    if-eqz v51, :cond_29

    .line 3672
    if-eqz v10, :cond_18

    invoke-interface {v10}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_18

    .line 3673
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3674
    const v51, 0x7f0208e6

    move/from16 v0, v51

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3676
    :cond_18
    if-eqz v50, :cond_19

    invoke-interface/range {v50 .. v50}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_19

    .line 3677
    const/16 v51, 0x0

    invoke-interface/range {v50 .. v51}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3678
    const v51, 0x7f020014

    invoke-interface/range {v50 .. v51}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3680
    :cond_19
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_1a

    .line 3681
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3683
    :cond_1a
    if-eqz v45, :cond_1b

    invoke-interface/range {v45 .. v45}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_1b

    .line 3684
    const/16 v51, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3686
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->settingsMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->settingsMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const v52, 0x7f0208d4

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3688
    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3689
    const v51, 0x7f0208dd

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3691
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_1c

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v51

    if-nez v51, :cond_1c

    .line 3692
    const v51, 0x7f09053c

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v44

    .line 3693
    .local v44, "shareNameVia":Landroid/view/MenuItem;
    const v51, 0x7f090536

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 3694
    .local v23, "history":Landroid/view/MenuItem;
    const v51, 0x7f09050c

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 3695
    .local v30, "joinContact":Landroid/view/MenuItem;
    const v51, 0x7f090539

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    .line 3697
    .local v32, "makeAsDefault":Landroid/view/MenuItem;
    const v51, 0x7f090542

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 3699
    .local v9, "addhome":Landroid/view/MenuItem;
    const/16 v51, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3700
    const v51, 0x7f0208d5

    move-object/from16 v0, v44

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3702
    const/16 v51, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3703
    const v51, 0x7f0208d5

    move-object/from16 v0, v23

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3705
    const/16 v51, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3706
    const v51, 0x7f0208d5

    move-object/from16 v0, v30

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3708
    const/16 v51, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3709
    const v51, 0x7f0208d5

    move-object/from16 v0, v32

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3714
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3715
    const v51, 0x7f0208d5

    move/from16 v0, v51

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3718
    .end local v9    # "addhome":Landroid/view/MenuItem;
    .end local v23    # "history":Landroid/view/MenuItem;
    .end local v30    # "joinContact":Landroid/view/MenuItem;
    .end local v32    # "makeAsDefault":Landroid/view/MenuItem;
    .end local v44    # "shareNameVia":Landroid/view/MenuItem;
    :cond_1c
    invoke-interface/range {v33 .. v33}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_1d

    .line 3719
    const/16 v51, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3720
    const v51, 0x7f0208b3

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3722
    :cond_1d
    invoke-interface/range {v41 .. v41}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_1e

    .line 3723
    const/16 v51, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3724
    const v51, 0x7f0208c6

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3726
    :cond_1e
    invoke-interface/range {v40 .. v40}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_1f

    .line 3727
    const/16 v51, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3728
    const v51, 0x7f0208ca

    move-object/from16 v0, v40

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3730
    :cond_1f
    invoke-interface/range {v47 .. v47}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_20

    .line 3731
    const/16 v51, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3732
    const v51, 0x7f0208d7

    move-object/from16 v0, v47

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3734
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_21

    .line 3735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const v52, 0x7f020894

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3742
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleRemoveFromKnoxMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    if-eqz v51, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleRemoveFromKnoxMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_22

    .line 3743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleRemoveFromKnoxMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3745
    :cond_22
    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_23

    .line 3746
    const/16 v51, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3747
    const v51, 0x7f0208a3

    move-object/from16 v0, v22

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3749
    :cond_23
    if-eqz v12, :cond_24

    invoke-interface {v12}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_24

    .line 3750
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3751
    const v51, 0x7f02088d

    move/from16 v0, v51

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3753
    :cond_24
    invoke-interface/range {v34 .. v34}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_25

    .line 3754
    const/16 v51, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3756
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAddPrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    if-eqz v51, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAddPrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_26

    .line 3757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAddPrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mAddPrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const v52, 0x7f02089f

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3760
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mRemovePrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    if-eqz v51, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mRemovePrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_27

    .line 3761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mRemovePrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mRemovePrivateContactMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const v52, 0x7f02089d

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3764
    :cond_27
    if-eqz v37, :cond_28

    invoke-interface/range {v37 .. v37}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_28

    .line 3765
    const/16 v51, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3767
    :cond_28
    if-eqz v45, :cond_29

    invoke-interface/range {v45 .. v45}, Landroid/view/MenuItem;->isVisible()Z

    move-result v51

    if-eqz v51, :cond_29

    .line 3768
    const/16 v51, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3769
    const v51, 0x7f0208d5

    move-object/from16 v0, v45

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3773
    :cond_29
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v51

    const-string v52, "CscFeature_Contact_EnableUIM"

    invoke-virtual/range {v51 .. v52}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const-string v52, "KDDI"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_3d

    .line 3774
    const v51, 0x7f0904ae

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    const/16 v52, 0x1

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3775
    const/16 v51, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3776
    const/16 v51, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3781
    :goto_14
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_2a

    if-eqz v46, :cond_2a

    .line 3782
    const/16 v51, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3783
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    move/from16 v51, v0

    if-eqz v51, :cond_3e

    .line 3784
    const/16 v51, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3785
    const v51, 0x7f0208b5

    move-object/from16 v0, v46

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3790
    :cond_2a
    :goto_15
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v51

    const/16 v52, 0x64

    move/from16 v0, v51

    move/from16 v1, v52

    if-lt v0, v1, :cond_4

    if-eqz v24, :cond_4

    .line 3791
    const/16 v51, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3542
    .end local v31    # "knoxContactCount":Z
    .end local v35    # "profileCount":I
    :cond_2b
    const/16 v51, 0x0

    goto/16 :goto_5

    .line 3547
    :cond_2c
    const/16 v51, 0x0

    goto/16 :goto_6

    .line 3556
    :cond_2d
    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 3560
    :cond_2e
    const/16 v51, 0x0

    goto/16 :goto_8

    .line 3564
    :cond_2f
    const/16 v35, 0x0

    goto/16 :goto_9

    .line 3565
    .restart local v35    # "profileCount":I
    :cond_30
    const/16 v51, 0x0

    goto/16 :goto_a

    .line 3568
    :cond_31
    const/16 v31, 0x0

    goto/16 :goto_b

    .line 3578
    .restart local v31    # "knoxContactCount":Z
    :cond_32
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3579
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3580
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 3584
    :cond_33
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3586
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 3595
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleRemoveFromKnoxMenu:Landroid/view/MenuItem;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 3600
    :cond_35
    const/16 v51, 0x0

    goto/16 :goto_e

    .line 3620
    :cond_36
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_37

    .line 3621
    const/16 v51, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3622
    const/16 v51, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3623
    const/16 v51, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_f

    .line 3624
    :cond_37
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEmailAvailable(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_38

    .line 3625
    const/16 v51, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3626
    const/16 v51, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3627
    const/16 v51, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_f

    .line 3629
    :cond_38
    const/16 v51, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3630
    const/16 v51, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3631
    const/16 v51, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_f

    .line 3637
    :cond_39
    const/16 v51, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_10

    .line 3654
    :cond_3a
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_11

    .line 3661
    :cond_3b
    const/16 v25, 0x0

    goto/16 :goto_12

    .line 3668
    .restart local v20    # "hasIccCard":Z
    .restart local v25    # "isAirplaneMode":Z
    .restart local v27    # "isKnoxMode":Z
    :cond_3c
    const/16 v51, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_13

    .line 3778
    .end local v20    # "hasIccCard":Z
    .end local v25    # "isAirplaneMode":Z
    .end local v27    # "isKnoxMode":Z
    :cond_3d
    const v51, 0x7f0904ae

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_14

    .line 3787
    :cond_3e
    const/16 v51, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_15

    .line 3795
    .end local v31    # "knoxContactCount":Z
    .end local v35    # "profileCount":I
    :pswitch_2
    const-string v51, ""

    const-string v52, "CHINA"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_3f

    .line 3796
    if-eqz v50, :cond_3f

    .line 3797
    const/16 v51, 0x0

    invoke-interface/range {v50 .. v51}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3802
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v51

    if-eqz v51, :cond_47

    .line 3803
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3807
    :goto_16
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3808
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3809
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    move/from16 v51, v0

    if-nez v51, :cond_40

    .line 3810
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->isHelpMenuVisible()Z

    move-result v51

    move-object/from16 v0, v22

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3814
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    move/from16 v51, v0

    if-nez v51, :cond_41

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_4

    .line 3815
    :cond_41
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3816
    const/16 v51, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3817
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_48

    const/16 v51, 0x1

    :goto_17
    move-object/from16 v0, v42

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3819
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEmailAvailable(Landroid/content/Context;)Z

    move-result v51

    if-eqz v51, :cond_49

    const/16 v51, 0x1

    :goto_18
    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3821
    const/16 v51, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v18

    .line 3823
    .local v18, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    if-eqz v18, :cond_4

    .line 3824
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v19

    .line 3825
    .local v19, "groupType":I
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getEditable(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)Z

    move-result v26

    .line 3826
    .local v26, "isEditable":Z
    if-nez v26, :cond_42

    .line 3827
    const v51, 0x7f0904bb

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3828
    const v51, 0x7f0904bc

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3829
    const v51, 0x7f0904b1

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3831
    :cond_42
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v28

    .line 3832
    .local v28, "isSMSAvailable":Z
    const/16 v51, 0x4

    move/from16 v0, v19

    move/from16 v1, v51

    if-eq v0, v1, :cond_43

    if-nez v28, :cond_44

    .line 3833
    :cond_43
    const v51, 0x7f0904b4

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v51

    const/16 v52, 0x0

    invoke-interface/range {v51 .. v52}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3835
    :cond_44
    const/16 v51, 0x5

    move/from16 v0, v19

    move/from16 v1, v51

    if-ne v0, v1, :cond_45

    .line 3836
    const/16 v51, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3837
    const/16 v51, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3838
    const/16 v51, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3839
    const/16 v51, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3841
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v51, v0

    if-eqz v51, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v51

    if-eqz v51, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v51

    check-cast v51, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual/range {v51 .. v51}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v51

    if-nez v51, :cond_46

    .line 3842
    const/16 v51, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3843
    const/16 v51, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3844
    const/16 v51, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3847
    :cond_46
    if-eqz v37, :cond_4

    .line 3848
    const/16 v51, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3805
    .end local v18    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v19    # "groupType":I
    .end local v26    # "isEditable":Z
    .end local v28    # "isSMSAvailable":Z
    :cond_47
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_16

    .line 3817
    :cond_48
    const/16 v51, 0x0

    goto/16 :goto_17

    .line 3819
    :cond_49
    const/16 v51, 0x0

    goto/16 :goto_18

    .line 3484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProviderStatusChange()V
    .locals 1

    .prologue
    .line 2496
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    .line 2497
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1317
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 1318
    const-string v0, "VerificationLog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAlwaysTabMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isActionBarModeTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setEmbeddedTabs()V

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    .line 1325
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    .line 1327
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableToastPopup4StopDeletingOperationByCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    invoke-static {v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStoppedDeleting(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    const v0, 0x7f0e03b0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1334
    invoke-static {v3}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStoppedDeleting(Z)Z

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 1342
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->removeTabsforKiosk()V

    .line 1344
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_2

    .line 1345
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    .line 1348
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneApp:Z

    if-eqz v0, :cond_5

    .line 1349
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finishActionModeAllFragments()V

    .line 1350
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFromPhoneAppTabPos:I

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 1351
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v0, :cond_4

    .line 1352
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setIsAddaContactTutorialMode(Z)V

    .line 1353
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setTutorialMode(Z)V

    .line 1354
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    .line 1355
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_4

    .line 1356
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 1359
    :cond_4
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneApp:Z

    .line 1364
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_a

    .line 1365
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->restoreLastSelectedTab()V

    .line 1366
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 1389
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->checkTalkBackEnable()V

    .line 1390
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1391
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 1395
    :cond_6
    const-string v0, "instant_lettering"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "oneline_message"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v0, :cond_8

    .line 1397
    invoke-static {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->showHelpDialog(Landroid/content/Context;)V

    .line 1400
    :cond_8
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_9

    .line 1401
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    if-le v0, v4, :cond_9

    .line 1402
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->scrollToTab(I)V

    .line 1405
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 1406
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->registerEamReceiver()V

    .line 1407
    return-void

    .line 1370
    :cond_a
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_b

    .line 1371
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    goto :goto_0

    .line 1374
    :cond_b
    :try_start_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1379
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 5208
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5210
    const-string v0, "isFavoritesListEmpty"

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5211
    const-string v0, "selectedfavoriteuri"

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5212
    const-string v0, "mOnlineSearchMode"

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5213
    const-string v0, "launchedAccountPrompt"

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5214
    const-string v0, "menushowing"

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5215
    const-string v0, "isHelpHubDownloadDialogShowing"

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5217
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5218
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 5219
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5221
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_1

    .line 5222
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5229
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 5230
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_2

    .line 5231
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    .line 5234
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_3

    .line 5235
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5236
    :cond_3
    return-void
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4507
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4545
    :cond_0
    :goto_0
    return v4

    .line 4513
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v2, :cond_0

    .line 4517
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_0

    .line 4519
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 4526
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 4528
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 4530
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v2, :cond_0

    .line 4531
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4532
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "favorite_strquent_listview_state"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4534
    .local v0, "bListViewState":Z
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4535
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_2

    .line 4536
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4537
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4538
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 4539
    const v2, 0x7f090132

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4541
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onSelectedTabChanged()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 1750
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v2, :cond_0

    .line 1751
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1752
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1753
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "favorite_strquent_listview_state"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1754
    .local v0, "bListViewState":Z
    if-eqz v0, :cond_1

    .line 1755
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1756
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 1766
    .end local v0    # "bListViewState":Z
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1769
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 1770
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1771
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1778
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 1779
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->registerEamReceiver()V

    .line 1780
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->registerMotionCallManager()V

    .line 1781
    return-void

    .line 1758
    .restart local v0    # "bListViewState":Z
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1759
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->hideSplitBar()V

    goto :goto_0

    .line 1762
    .end local v0    # "bListViewState":Z
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1763
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1764
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    goto :goto_0
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 6112
    const-string v2, "PeopleActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onModeChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6113
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    if-eqz v2, :cond_0

    .line 6114
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 6115
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6116
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 6117
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "favorite_strquent_listview_state"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6119
    .local v0, "bListViewState":Z
    if-eqz v0, :cond_0

    .line 6120
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->initialize()V

    .line 6127
    .end local v0    # "bListViewState":Z
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 6123
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->initialize()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1220
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    .line 1223
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->restartActivity()V

    .line 1227
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1229
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-eqz v2, :cond_3

    .line 1232
    :cond_2
    const-string v2, "com.android.contacts.activities.PeopleActivity"

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->getClassNameOfTopActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsLockScreenOn:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromDetail"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_3

    .line 1235
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->startAabService()V

    .line 1238
    :cond_3
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsLockScreenOn:Z

    .line 1241
    :cond_4
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-nez v2, :cond_5

    .line 1242
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    .line 1256
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_9

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 1258
    :cond_5
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 1261
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->shouldShowContactTips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1263
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1265
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAddaContactTutorialMode:Z

    if-nez v0, :cond_8

    .line 1273
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->checkShowContactTipsAgain(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1274
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->show(Landroid/app/FragmentManager;Landroid/content/Context;)V

    .line 1275
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->doNotShowContactTipsAgain(Landroid/content/Context;)V

    .line 1285
    :cond_8
    return-void

    :cond_9
    move v0, v1

    .line 1256
    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1214
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 1215
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v5, -0x2

    .line 5476
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    if-eqz v2, :cond_1

    .line 5478
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 5479
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 5480
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5481
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 5482
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "favorite_strquent_listview_state"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5485
    .local v0, "bListViewState":Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5486
    :cond_0
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5487
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 5498
    .end local v0    # "bListViewState":Z
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5501
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 5502
    return-void

    .line 5489
    .restart local v0    # "bListViewState":Z
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5490
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->hideSplitBar()V

    goto :goto_0

    .line 5493
    .end local v0    # "bListViewState":Z
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 5494
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5495
    :cond_4
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5496
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->setCallSipPressed(Z)V

    .line 320
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onWindowFocusChanged(Z)V

    .line 321
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 4
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 5505
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_2

    .line 5506
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAlwaysTabMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5507
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5508
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setMultiWindow(Z)V

    .line 5509
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentOrientationmode:I

    if-ne v0, v2, :cond_4

    .line 5510
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5511
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    .line 5521
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    .line 5522
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->restoreLastSelectedTab()V

    .line 5523
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 5556
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    if-eqz v0, :cond_2

    .line 5557
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->showSplitBar()V

    .line 5560
    :cond_2
    return-void

    .line 5513
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_0

    .line 5516
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5517
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_0

    .line 5519
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_0

    .line 5526
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setMultiWindow(Z)V

    .line 5527
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5528
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_1

    .line 5530
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_1

    .line 5533
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5534
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setMultiWindow(Z)V

    .line 5535
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5536
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    .line 5544
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    .line 5545
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->restoreLastSelectedTab()V

    .line 5546
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_1

    .line 5539
    :cond_9
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_a

    .line 5540
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_2

    .line 5542
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_2

    .line 5549
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setMultiWindow(Z)V

    .line 5550
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5551
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto/16 :goto_1

    .line 5553
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto/16 :goto_1
.end method

.method public onZoneChanged(I)V
    .locals 3
    .param p1, "zoneInfo"    # I

    .prologue
    .line 6107
    const-string v0, "PeopleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6108
    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 3300
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v0, :cond_0

    .line 3301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMenuShowing:Z

    .line 3302
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_0

    .line 3303
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 3307
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->openOptionsMenu()V

    .line 3308
    return-void
.end method

.method public registerEamReceiver()V
    .locals 5

    .prologue
    .line 6165
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    .line 6166
    .local v0, "mCurrentTab":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 6167
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->getMenuList()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 6168
    :cond_0
    return-void
.end method

.method public setFakeQueryModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5348
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFakeQueryModeEnabled(Z)V

    .line 5349
    return-void
.end method

.method public setNoContactsViewVisible(ZZ)V
    .locals 12
    .param p1, "visible"    # Z
    .param p2, "needHelpText"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x8

    .line 2694
    const v7, 0x7f0903b9

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2695
    .local v3, "noContactsView":Landroid/view/View;
    const v7, 0x7f0900d6

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2696
    .local v2, "mainView":Landroid/view/View;
    const v7, 0x7f0903b3

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2697
    .local v4, "noContactsView2014Black":Landroid/view/View;
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v7

    const/4 v10, 0x3

    if-eq v7, v10, :cond_0

    iget-boolean v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 2699
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->configureEmptyText(I)V

    .line 2701
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2702
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2703
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2705
    const v7, 0x7f0901e2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2767
    :cond_1
    :goto_0
    return-void

    .line 2708
    :cond_2
    if-nez p1, :cond_3

    move v7, v8

    :goto_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2709
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2710
    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2712
    if-eqz p1, :cond_1

    .line 2713
    const v7, 0x7f090494

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2714
    .local v5, "signInButton":Landroid/view/View;
    const v7, 0x7f090495

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2715
    .local v1, "importButton":Landroid/view/View;
    new-instance v7, Lcom/android/contacts/activities/PeopleActivity$5;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/PeopleActivity$5;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2727
    new-instance v7, Lcom/android/contacts/activities/PeopleActivity$6;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/PeopleActivity$6;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2735
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_1

    .line 2736
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "importButton":Landroid/view/View;
    .end local v5    # "signInButton":Landroid/view/View;
    :cond_3
    move v7, v9

    .line 2708
    goto :goto_1

    :cond_4
    move v8, v9

    .line 2710
    goto :goto_2

    .line 2740
    :cond_5
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v7

    if-ne v7, v11, :cond_9

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2742
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->configureEmptyText(I)V

    .line 2743
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2744
    .local v0, "config":Landroid/content/res/Configuration;
    const v7, 0x7f09048a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2745
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2746
    if-eqz p1, :cond_7

    move v7, v8

    :goto_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2747
    if-nez p1, :cond_8

    :goto_4
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2748
    if-eqz p1, :cond_6

    .line 2749
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    .line 2753
    :cond_6
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2754
    const v7, 0x7f0902e5

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2756
    .local v6, "textView":Landroid/widget/TextView;
    const v7, 0x7f0e02e3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_7
    move v7, v9

    .line 2746
    goto :goto_3

    :cond_8
    move v8, v9

    .line 2747
    goto :goto_4

    .line 2760
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_9
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2761
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2762
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2763
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2764
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setSelectionActionMode(Z)V
    .locals 0
    .param p1, "mActionmode"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectionActionMode:Z

    .line 542
    return-void
.end method

.method public showAddaContactTutorialPopup(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5568
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5569
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/PeopleActivity$8;-><init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5613
    return-void
.end method

.method public startAabService()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 5404
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabFlagInfo:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getRegistrationCountFlag()I

    move-result v0

    .line 5405
    .local v0, "registrationCount":I
    const-string v1, "AAB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registration count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5407
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabFlagInfo:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->checkAABStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5409
    if-gt v0, v5, :cond_1

    .line 5410
    if-ne v0, v5, :cond_0

    .line 5413
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabFlagInfo:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->setRegistrationCompleteFlag(Z)V

    .line 5416
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 5417
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mStartSubscriberInfoChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5418
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mStartSubscriberInfoChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5422
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabFlagInfo:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->addRegistrationCountFlag(I)V

    .line 5424
    :cond_2
    return-void
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3272
    const/high16 v1, 0x2000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3275
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3276
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3277
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 3280
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 3281
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 526
    const-string v0, "%s@%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
